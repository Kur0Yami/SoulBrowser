package okhttp3.internal.http2;

import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.PushObserver;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22162c;
    public final /* synthetic */ Http2Connection f;
    public final /* synthetic */ int g;
    public final /* synthetic */ ErrorCode h;

    public /* synthetic */ d(Http2Connection http2Connection, int i, ErrorCode errorCode, int i2) {
        this.f22162c = i2;
        this.f = http2Connection;
        this.g = i;
        this.h = errorCode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f22162c) {
            case 0:
                Http2Connection http2Connection = this.f;
                int i = this.g;
                ErrorCode errorCode = this.h;
                ((PushObserver.Companion.PushObserverCancel) http2Connection.o).getClass();
                Intrinsics.checkNotNullParameter(errorCode, "errorCode");
                synchronized (http2Connection) {
                    http2Connection.C.remove(Integer.valueOf(i));
                }
                return Unit.INSTANCE;
            default:
                Http2Connection http2Connection2 = this.f;
                int i2 = this.g;
                ErrorCode statusCode = this.h;
                Settings settings = Http2Connection.D;
                try {
                    Intrinsics.checkNotNullParameter(statusCode, "statusCode");
                    http2Connection2.A.j(i2, statusCode);
                } catch (IOException e) {
                    ErrorCode errorCode2 = ErrorCode.h;
                    http2Connection2.a(errorCode2, errorCode2, e);
                }
                return Unit.INSTANCE;
        }
    }
}
