package okhttp3.internal.http2;

import java.io.IOException;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.http2.PushObserver;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22161c = 0;
    public final /* synthetic */ Http2Connection f;
    public final /* synthetic */ int g;
    public final /* synthetic */ List h;

    public /* synthetic */ c(Http2Connection http2Connection, int i, List list) {
        this.f = http2Connection;
        this.g = i;
        this.h = list;
    }

    private final Object a() {
        Http2Connection http2Connection = this.f;
        int i = this.g;
        List requestHeaders = this.h;
        ((PushObserver.Companion.PushObserverCancel) http2Connection.o).getClass();
        Intrinsics.checkNotNullParameter(requestHeaders, "requestHeaders");
        try {
            http2Connection.A.j(i, ErrorCode.l);
            synchronized (http2Connection) {
                http2Connection.C.remove(Integer.valueOf(i));
                Unit unit = Unit.INSTANCE;
            }
        } catch (IOException unused) {
        }
        return Unit.INSTANCE;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f22161c) {
            case 0:
                return a();
            default:
                Http2Connection http2Connection = this.f;
                int i = this.g;
                List responseHeaders = this.h;
                ((PushObserver.Companion.PushObserverCancel) http2Connection.o).getClass();
                Intrinsics.checkNotNullParameter(responseHeaders, "responseHeaders");
                try {
                    http2Connection.A.j(i, ErrorCode.l);
                    synchronized (http2Connection) {
                        http2Connection.C.remove(Integer.valueOf(i));
                        Unit unit = Unit.INSTANCE;
                    }
                } catch (IOException unused) {
                }
                return Unit.INSTANCE;
        }
    }

    public /* synthetic */ c(Http2Connection http2Connection, int i, List list, boolean z) {
        this.f = http2Connection;
        this.g = i;
        this.h = list;
    }
}
