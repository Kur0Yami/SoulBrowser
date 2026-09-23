package okhttp3.internal.connection;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.ref.Reference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.TimeZone;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRealConnectionPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Lockable.kt\nokhttp3/internal/concurrent/LockableKt\n*L\n1#1,326:1\n1#2:327\n1788#3,3:328\n1791#3:332\n63#4:331\n63#4:333\n63#4:334\n55#4,4:335\n55#4,4:339\n63#4:343\n63#4:344\n63#4:345\n55#4,4:346\n*S KotlinDebug\n*F\n+ 1 RealConnectionPool.kt\nokhttp3/internal/connection/RealConnectionPool\n*L\n64#1:328,3\n64#1:332\n65#1:331\n92#1:333\n111#1:334\n127#1:335,4\n139#1:339,4\n157#1:343\n201#1:344\n247#1:345\n287#1:346,4\n*E\n"})
/* loaded from: classes4.dex */
public final class RealConnectionPool {

    /* renamed from: a, reason: collision with root package name */
    public final long f22101a;
    public final TaskQueue b;

    /* renamed from: c, reason: collision with root package name */
    public final RealConnectionPool$cleanupTask$1 f22102c;
    public final ConcurrentLinkedQueue d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/connection/RealConnectionPool$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [okhttp3.internal.connection.RealConnectionPool$cleanupTask$1] */
    public RealConnectionPool(TaskRunner taskRunner) {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        ConnectionListener$Companion$NONE$1 connectionListener = ConnectionListener.f22092a;
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        this.f22101a = timeUnit.toNanos(5L);
        this.b = taskRunner.d();
        final String p = a.p(new StringBuilder(), _UtilJvmKt.b, " ConnectionPool connection closer");
        this.f22102c = new Task(p) { // from class: okhttp3.internal.connection.RealConnectionPool$cleanupTask$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                RealConnection connection;
                RealConnectionPool realConnectionPool = RealConnectionPool.this;
                long nanoTime = System.nanoTime();
                long j = (nanoTime - realConnectionPool.f22101a) + 1;
                Iterator it = realConnectionPool.d.iterator();
                Intrinsics.checkNotNullExpressionValue(it, "iterator(...)");
                long j2 = LongCompanionObject.MAX_VALUE;
                int i = 0;
                int i2 = 0;
                RealConnection realConnection = null;
                RealConnection realConnection2 = null;
                while (it.hasNext()) {
                    RealConnection realConnection3 = (RealConnection) it.next();
                    Intrinsics.checkNotNull(realConnection3);
                    synchronized (realConnection3) {
                        if (realConnectionPool.a(realConnection3, nanoTime) > 0) {
                            i2++;
                        } else {
                            long j3 = j2;
                            long j4 = realConnection3.u;
                            if (j4 < j) {
                                j = j4;
                                realConnection = realConnection3;
                            }
                            i++;
                            if (j4 < j3) {
                                j2 = j4;
                                realConnection2 = realConnection3;
                            } else {
                                j2 = j3;
                            }
                        }
                        Unit unit = Unit.INSTANCE;
                    }
                }
                long j5 = j2;
                if (realConnection != null) {
                    connection = realConnection;
                } else if (i > 5) {
                    connection = realConnection2;
                    j = j5;
                } else {
                    j = -1;
                    connection = null;
                }
                if (connection != null) {
                    synchronized (connection) {
                        if (!connection.t.isEmpty()) {
                            return 0L;
                        }
                        if (connection.u != j) {
                            return 0L;
                        }
                        connection.n = true;
                        realConnectionPool.d.remove(connection);
                        _UtilJvmKt.b(connection.i);
                        Intrinsics.checkNotNullParameter(connection, "connection");
                        if (realConnectionPool.d.isEmpty()) {
                            realConnectionPool.b.a();
                        }
                        return 0L;
                    }
                }
                if (realConnection2 != null) {
                    return (j5 + realConnectionPool.f22101a) - nanoTime;
                }
                if (i2 <= 0) {
                    return -1L;
                }
                return realConnectionPool.f22101a;
            }
        };
        this.d = new ConcurrentLinkedQueue();
    }

    public final int a(RealConnection realConnection, long j) {
        TimeZone timeZone = _UtilJvmKt.f22077a;
        ArrayList arrayList = realConnection.t;
        int i = 0;
        while (i < arrayList.size()) {
            Reference reference = (Reference) arrayList.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                Intrinsics.checkNotNull(reference, "null cannot be cast to non-null type okhttp3.internal.connection.RealCall.CallReference");
                String str = "A connection to " + realConnection.g.f22069a.h + " was leaked. Did you forget to close a response body?";
                Platform platform = Platform.f22173a;
                Platform.f22173a.k(((RealCall.CallReference) reference).f22100a, str);
                arrayList.remove(i);
                if (arrayList.isEmpty()) {
                    realConnection.u = j - this.f22101a;
                    return 0;
                }
            }
        }
        return arrayList.size();
    }
}
