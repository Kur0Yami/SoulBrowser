package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.platform.Platform;

/* loaded from: classes4.dex */
public final /* synthetic */ class g implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22166c;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    public /* synthetic */ g(int i, Object obj, Object obj2) {
        this.f22166c = i;
        this.f = obj;
        this.g = obj2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [T, okhttp3.internal.http2.Settings] */
    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        long a2;
        int i;
        Http2Stream[] http2StreamArr;
        switch (this.f22166c) {
            case 0:
                Http2Connection http2Connection = (Http2Connection) this.f;
                Http2Stream http2Stream = (Http2Stream) this.g;
                try {
                    http2Connection.f22139c.c(http2Stream);
                } catch (IOException e) {
                    Platform platform = Platform.f22173a;
                    Platform.f22173a.j(4, "Http2Connection.Listener failure for " + http2Connection.g, e);
                    try {
                        http2Stream.e(ErrorCode.h, e);
                    } catch (IOException unused) {
                    }
                }
                return Unit.INSTANCE;
            case 1:
                Http2Connection.ReaderRunnable readerRunnable = (Http2Connection.ReaderRunnable) this.f;
                Settings settings = (Settings) this.g;
                Intrinsics.checkNotNullParameter(settings, "settings");
                Ref.ObjectRef objectRef = new Ref.ObjectRef();
                Http2Connection http2Connection2 = readerRunnable.f;
                synchronized (http2Connection2.A) {
                    synchronized (http2Connection2) {
                        try {
                            Settings settings2 = http2Connection2.v;
                            ?? settings3 = new Settings();
                            settings3.b(settings2);
                            settings3.b(settings);
                            objectRef.element = settings3;
                            a2 = settings3.a() - settings2.a();
                            if (a2 != 0 && !http2Connection2.f.isEmpty()) {
                                http2StreamArr = (Http2Stream[]) http2Connection2.f.values().toArray(new Http2Stream[0]);
                                Settings settings4 = (Settings) objectRef.element;
                                Intrinsics.checkNotNullParameter(settings4, "<set-?>");
                                http2Connection2.v = settings4;
                                TaskQueue.c(http2Connection2.n, http2Connection2.g + " onSettings", new g(2, http2Connection2, objectRef), 6);
                                Unit unit = Unit.INSTANCE;
                            }
                            http2StreamArr = null;
                            Settings settings42 = (Settings) objectRef.element;
                            Intrinsics.checkNotNullParameter(settings42, "<set-?>");
                            http2Connection2.v = settings42;
                            TaskQueue.c(http2Connection2.n, http2Connection2.g + " onSettings", new g(2, http2Connection2, objectRef), 6);
                            Unit unit2 = Unit.INSTANCE;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    try {
                        http2Connection2.A.a((Settings) objectRef.element);
                    } catch (IOException e2) {
                        ErrorCode errorCode = ErrorCode.h;
                        http2Connection2.a(errorCode, errorCode, e2);
                    }
                    Unit unit3 = Unit.INSTANCE;
                }
                if (http2StreamArr != null) {
                    for (Http2Stream http2Stream2 : http2StreamArr) {
                        synchronized (http2Stream2) {
                            http2Stream2.i += a2;
                            if (a2 > 0) {
                                Intrinsics.checkNotNull(http2Stream2, "null cannot be cast to non-null type java.lang.Object");
                                http2Stream2.notifyAll();
                            }
                            Unit unit4 = Unit.INSTANCE;
                        }
                    }
                }
                return Unit.INSTANCE;
            default:
                Http2Connection http2Connection3 = (Http2Connection) this.f;
                http2Connection3.f22139c.a(http2Connection3, (Settings) ((Ref.ObjectRef) this.g).element);
                return Unit.INSTANCE;
        }
    }
}
