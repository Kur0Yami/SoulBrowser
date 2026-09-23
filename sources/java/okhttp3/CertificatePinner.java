package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import javax.net.ssl.SSLPeerUnverifiedException;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal.tls.CertificateChainCleaner;
import okio.ByteString;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/CertificatePinner;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Pin", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n+ 2 -UtilCommon.kt\nokhttp3/internal/_UtilCommonKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,378:1\n360#2,8:379\n1563#3:387\n1634#3,3:388\n*S KotlinDebug\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner\n*L\n224#1:379,8\n154#1:387\n154#1:388,3\n*E\n"})
/* loaded from: classes4.dex */
public final class CertificatePinner {

    /* renamed from: c, reason: collision with root package name */
    public static final CertificatePinner f22026c;

    /* renamed from: a, reason: collision with root package name */
    public final Set f22027a;
    public final CertificateChainCleaner b;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/CertificatePinner$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f22028a = new ArrayList();
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/CertificatePinner$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/CertificatePinner;", "DEFAULT", "Lokhttp3/CertificatePinner;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nCertificatePinner.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CertificatePinner.kt\nokhttp3/CertificatePinner$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,378:1\n1#2:379\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static String a(X509Certificate certificate) {
            Intrinsics.checkNotNullParameter(certificate, "certificate");
            if (android.support.v4.media.a.A(certificate)) {
                return "sha256/" + b(certificate).a();
            }
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }

        public static ByteString b(X509Certificate x509Certificate) {
            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
            ByteString byteString = ByteString.h;
            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
            Intrinsics.checkNotNullExpressionValue(encoded, "getEncoded(...)");
            return ByteString.Companion.c(encoded).c("SHA-256");
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/CertificatePinner$Pin;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Pin {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if ((obj instanceof Pin) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual((Object) null, (Object) null) && Intrinsics.areEqual((Object) null, (Object) null)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            throw null;
        }
    }

    static {
        Set set;
        set = CollectionsKt___CollectionsKt.toSet(new Builder().f22028a);
        f22026c = new CertificatePinner(set, null);
    }

    public CertificatePinner(Set pins, CertificateChainCleaner certificateChainCleaner) {
        Intrinsics.checkNotNullParameter(pins, "pins");
        this.f22027a = pins;
        this.b = certificateChainCleaner;
    }

    public final void a(String hostname, Function0 cleanedPeerCertificatesFn) {
        boolean startsWith$default;
        boolean startsWith$default2;
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        Intrinsics.checkNotNullParameter(cleanedPeerCertificatesFn, "cleanedPeerCertificatesFn");
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        List<Pin> emptyList = CollectionsKt.emptyList();
        for (Object obj : this.f22027a) {
            ((Pin) obj).getClass();
            Intrinsics.checkNotNullParameter(hostname, "hostname");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(null, "**.", false, 2, null);
            if (!startsWith$default) {
                startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(null, "*.", false, 2, null);
                if (!startsWith$default2) {
                    if (Intrinsics.areEqual(hostname, (Object) null)) {
                        if (emptyList.isEmpty()) {
                            emptyList = new ArrayList();
                        }
                        Intrinsics.checkNotNull(emptyList, "null cannot be cast to non-null type kotlin.collections.MutableList<T of okhttp3.internal._UtilCommonKt.filterList>");
                        TypeIntrinsics.asMutableList(emptyList).add(obj);
                    }
                } else {
                    throw null;
                }
            } else {
                throw null;
            }
        }
        if (!emptyList.isEmpty()) {
            List<X509Certificate> list = (List) cleanedPeerCertificatesFn.invoke();
            for (X509Certificate x509Certificate : list) {
                Iterator it = emptyList.iterator();
                ByteString byteString = null;
                ByteString byteString2 = null;
                while (it.hasNext()) {
                    ((Pin) it.next()).getClass();
                    if (Intrinsics.areEqual((Object) null, "sha256")) {
                        if (byteString == null) {
                            byteString = Companion.b(x509Certificate);
                        }
                        if (Intrinsics.areEqual((Object) null, byteString)) {
                            return;
                        }
                    } else if (Intrinsics.areEqual((Object) null, "sha1")) {
                        if (byteString2 == null) {
                            Intrinsics.checkNotNullParameter(x509Certificate, "<this>");
                            ByteString byteString3 = ByteString.h;
                            byte[] encoded = x509Certificate.getPublicKey().getEncoded();
                            Intrinsics.checkNotNullExpressionValue(encoded, "getEncoded(...)");
                            byteString2 = ByteString.Companion.c(encoded).c("SHA-1");
                        }
                        if (Intrinsics.areEqual((Object) null, byteString2)) {
                            return;
                        }
                    } else {
                        throw new AssertionError("unsupported hashAlgorithm: null");
                    }
                }
            }
            StringBuilder sb = new StringBuilder("Certificate pinning failure!\n  Peer certificate chain:");
            for (X509Certificate x509Certificate2 : list) {
                sb.append("\n    ");
                sb.append(Companion.a(x509Certificate2));
                sb.append(": ");
                sb.append(x509Certificate2.getSubjectDN().getName());
            }
            sb.append("\n  Pinned certificates for ");
            sb.append(hostname);
            sb.append(":");
            for (Pin pin : emptyList) {
                sb.append("\n    ");
                sb.append(pin);
            }
            throw new SSLPeerUnverifiedException(sb.toString());
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof CertificatePinner) {
            CertificatePinner certificatePinner = (CertificatePinner) obj;
            if (Intrinsics.areEqual(certificatePinner.f22027a, this.f22027a) && Intrinsics.areEqual(certificatePinner.b, this.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.f22027a.hashCode() + 1517) * 41;
        CertificateChainCleaner certificateChainCleaner = this.b;
        if (certificateChainCleaner != null) {
            i = certificateChainCleaner.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}
