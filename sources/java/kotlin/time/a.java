package kotlin.time;

import java.io.IOException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Handshake;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Settings;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21562c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f21562c = i;
        this.f = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        long reading;
        int i = this.f21562c;
        Object obj = this.f;
        switch (i) {
            case 0:
                reading = ((AbstractLongTimeSource) obj).getReading();
                return Long.valueOf(reading);
            case 1:
                try {
                    return (List) ((Function0) obj).invoke();
                } catch (SSLPeerUnverifiedException unused) {
                    return CollectionsKt.emptyList();
                }
            case 2:
                return (List) obj;
            case 3:
                List<Certificate> a2 = ((Handshake) obj).a();
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(a2, 10));
                for (Certificate certificate : a2) {
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            default:
                Http2Connection http2Connection = (Http2Connection) obj;
                Settings settings = Http2Connection.D;
                http2Connection.getClass();
                try {
                    http2Connection.A.i(2, 0, false);
                } catch (IOException e) {
                    ErrorCode errorCode = ErrorCode.h;
                    http2Connection.a(errorCode, errorCode, e);
                }
                return Unit.INSTANCE;
        }
    }
}
