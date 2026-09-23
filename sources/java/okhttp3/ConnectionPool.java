package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.ConnectionListener;
import okhttp3.internal.connection.ConnectionListener$Companion$NONE$1;
import okhttp3.internal.connection.RealConnectionPool;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/ConnectionPool;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ConnectionPool {

    /* renamed from: a, reason: collision with root package name */
    public final RealConnectionPool f22032a;

    public ConnectionPool() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        TaskRunner taskRunner = TaskRunner.p;
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        Intrinsics.checkNotNullParameter(taskRunner, "taskRunner");
        ConnectionListener$Companion$NONE$1 connectionListener = ConnectionListener.f22092a;
        Intrinsics.checkNotNullParameter(connectionListener, "connectionListener");
        RealConnectionPool delegate = new RealConnectionPool(taskRunner);
        Intrinsics.checkNotNullParameter(delegate, "delegate");
        this.f22032a = delegate;
    }
}
