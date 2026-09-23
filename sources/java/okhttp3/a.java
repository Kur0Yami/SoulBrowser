package okhttp3;

import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.internal.tls.CertificateChainCleaner;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f22073c;
    public final /* synthetic */ CertificatePinner f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ Object h;

    public /* synthetic */ a(CertificatePinner certificatePinner, Object obj, Object obj2, int i) {
        this.f22073c = i;
        this.f = certificatePinner;
        this.g = obj;
        this.h = obj2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        List a2;
        switch (this.f22073c) {
            case 0:
                List<Certificate> list = (List) this.g;
                String str = (String) this.h;
                CertificateChainCleaner certificateChainCleaner = this.f.b;
                if (certificateChainCleaner != null && (a2 = certificateChainCleaner.a(str, list)) != null) {
                    list = a2;
                }
                ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
                for (Certificate certificate : list) {
                    Intrinsics.checkNotNull(certificate, "null cannot be cast to non-null type java.security.cert.X509Certificate");
                    arrayList.add((X509Certificate) certificate);
                }
                return arrayList;
            default:
                Handshake handshake = (Handshake) this.g;
                Address address = (Address) this.h;
                CertificateChainCleaner certificateChainCleaner2 = this.f.b;
                Intrinsics.checkNotNull(certificateChainCleaner2);
                return certificateChainCleaner2.a(address.h.d, handshake.a());
        }
    }
}
