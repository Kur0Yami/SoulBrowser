package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLSocket;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.TlsVersion;
import okhttp3.internal._UtilCommonKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/ConnectionSpec;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,384:1\n11561#2:385\n11896#2,3:386\n11561#2:389\n11896#2,3:390\n37#3,2:393\n37#3,2:395\n37#3,2:397\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec\n*L\n60#1:385\n60#1:386,3\n78#1:389\n78#1:390,3\n349#1:393,2\n361#1:395,2\n374#1:397,2\n*E\n"})
/* loaded from: classes4.dex */
public final class ConnectionSpec {
    public static final List e;
    public static final List f;
    public static final ConnectionSpec g;
    public static final ConnectionSpec h;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f22033a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final String[] f22034c;
    public final String[] d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/ConnectionSpec$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nConnectionSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,384:1\n1#2:385\n11561#3:386\n11896#3,3:387\n11561#3:392\n11896#3,3:393\n37#4,2:390\n37#4,2:396\n*S KotlinDebug\n*F\n+ 1 ConnectionSpec.kt\nokhttp3/ConnectionSpec$Builder\n*L\n247#1:386\n247#1:387,3\n269#1:392\n269#1:393,3\n247#1:390,2\n269#1:396,2\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public boolean f22035a;
        public String[] b;

        /* renamed from: c, reason: collision with root package name */
        public String[] f22036c;
        public boolean d;

        public Builder(boolean z) {
            this.f22035a = z;
        }

        public final ConnectionSpec a() {
            return new ConnectionSpec(this.f22035a, this.d, this.b, this.f22036c);
        }

        public final void b(String... cipherSuites) {
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (this.f22035a) {
                if (cipherSuites.length != 0) {
                    Object[] copyOf = Arrays.copyOf(cipherSuites, cipherSuites.length);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    this.b = (String[]) copyOf;
                    return;
                }
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        public final void c(CipherSuite... cipherSuites) {
            Intrinsics.checkNotNullParameter(cipherSuites, "cipherSuites");
            if (this.f22035a) {
                ArrayList arrayList = new ArrayList(cipherSuites.length);
                for (CipherSuite cipherSuite : cipherSuites) {
                    arrayList.add(cipherSuite.f22031a);
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                b((String[]) Arrays.copyOf(strArr, strArr.length));
                return;
            }
            throw new IllegalArgumentException("no cipher suites for cleartext connections");
        }

        public final void d(String... tlsVersions) {
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (this.f22035a) {
                if (tlsVersions.length != 0) {
                    Object[] copyOf = Arrays.copyOf(tlsVersions, tlsVersions.length);
                    Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
                    this.f22036c = (String[]) copyOf;
                    return;
                }
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }

        public final void e(TlsVersion... tlsVersions) {
            Intrinsics.checkNotNullParameter(tlsVersions, "tlsVersions");
            if (this.f22035a) {
                ArrayList arrayList = new ArrayList(tlsVersions.length);
                for (TlsVersion tlsVersion : tlsVersions) {
                    arrayList.add(tlsVersion.f22071c);
                }
                String[] strArr = (String[]) arrayList.toArray(new String[0]);
                d((String[]) Arrays.copyOf(strArr, strArr.length));
                return;
            }
            throw new IllegalArgumentException("no TLS versions for cleartext connections");
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0006\u0010\u0005R\u0014\u0010\b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0014\u0010\u000b\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0014\u0010\f\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\t¨\u0006\r"}, d2 = {"Lokhttp3/ConnectionSpec$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/CipherSuite;", "RESTRICTED_CIPHER_SUITES", "Ljava/util/List;", "APPROVED_CIPHER_SUITES", "Lokhttp3/ConnectionSpec;", "RESTRICTED_TLS", "Lokhttp3/ConnectionSpec;", "MODERN_TLS", "COMPATIBLE_TLS", "CLEARTEXT", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    static {
        CipherSuite cipherSuite = CipherSuite.r;
        CipherSuite cipherSuite2 = CipherSuite.s;
        CipherSuite cipherSuite3 = CipherSuite.t;
        CipherSuite cipherSuite4 = CipherSuite.l;
        CipherSuite cipherSuite5 = CipherSuite.n;
        CipherSuite cipherSuite6 = CipherSuite.m;
        CipherSuite cipherSuite7 = CipherSuite.o;
        CipherSuite cipherSuite8 = CipherSuite.q;
        CipherSuite cipherSuite9 = CipherSuite.p;
        List listOf = CollectionsKt.listOf((Object[]) new CipherSuite[]{cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9});
        e = listOf;
        List listOf2 = CollectionsKt.listOf((Object[]) new CipherSuite[]{cipherSuite, cipherSuite2, cipherSuite3, cipherSuite4, cipherSuite5, cipherSuite6, cipherSuite7, cipherSuite8, cipherSuite9, CipherSuite.j, CipherSuite.k, CipherSuite.h, CipherSuite.i, CipherSuite.f, CipherSuite.g, CipherSuite.e});
        f = listOf2;
        Builder builder = new Builder(true);
        CipherSuite[] cipherSuiteArr = (CipherSuite[]) listOf.toArray(new CipherSuite[0]);
        builder.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr, cipherSuiteArr.length));
        TlsVersion tlsVersion = TlsVersion.g;
        TlsVersion tlsVersion2 = TlsVersion.h;
        builder.e(tlsVersion, tlsVersion2);
        builder.d = true;
        builder.a();
        Builder builder2 = new Builder(true);
        CipherSuite[] cipherSuiteArr2 = (CipherSuite[]) listOf2.toArray(new CipherSuite[0]);
        builder2.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr2, cipherSuiteArr2.length));
        builder2.e(tlsVersion, tlsVersion2);
        builder2.d = true;
        g = builder2.a();
        Builder builder3 = new Builder(true);
        CipherSuite[] cipherSuiteArr3 = (CipherSuite[]) listOf2.toArray(new CipherSuite[0]);
        builder3.c((CipherSuite[]) Arrays.copyOf(cipherSuiteArr3, cipherSuiteArr3.length));
        builder3.e(tlsVersion, tlsVersion2, TlsVersion.i, TlsVersion.j);
        builder3.d = true;
        builder3.a();
        h = new Builder(false).a();
    }

    public ConnectionSpec(boolean z, boolean z2, String[] strArr, String[] strArr2) {
        this.f22033a = z;
        this.b = z2;
        this.f22034c = strArr;
        this.d = strArr2;
    }

    /* JADX WARN: Type inference failed for: r15v1, types: [okhttp3.ConnectionSpec$Builder, java.lang.Object] */
    public final void a(SSLSocket sslSocket, boolean z) {
        String[] enabledProtocols;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        String[] socketEnabledCipherSuites = sslSocket.getEnabledCipherSuites();
        Intrinsics.checkNotNull(socketEnabledCipherSuites);
        Intrinsics.checkNotNullParameter(this, "<this>");
        Intrinsics.checkNotNullParameter(socketEnabledCipherSuites, "socketEnabledCipherSuites");
        String[] strArr = this.f22034c;
        if (strArr != null) {
            socketEnabledCipherSuites = _UtilCommonKt.h(strArr, socketEnabledCipherSuites, CipherSuite.f22030c);
        }
        String[] strArr2 = this.d;
        if (strArr2 != null) {
            String[] enabledProtocols2 = sslSocket.getEnabledProtocols();
            Intrinsics.checkNotNullExpressionValue(enabledProtocols2, "getEnabledProtocols(...)");
            enabledProtocols = _UtilCommonKt.h(enabledProtocols2, strArr2, ComparisonsKt.naturalOrder());
        } else {
            enabledProtocols = sslSocket.getEnabledProtocols();
        }
        String[] supportedCipherSuites = sslSocket.getSupportedCipherSuites();
        Intrinsics.checkNotNull(supportedCipherSuites);
        CipherSuite$Companion$ORDER_BY_NAME$1 comparator = CipherSuite.f22030c;
        byte[] bArr = _UtilCommonKt.f22076a;
        Intrinsics.checkNotNullParameter(supportedCipherSuites, "<this>");
        Intrinsics.checkNotNullParameter("TLS_FALLBACK_SCSV", "value");
        Intrinsics.checkNotNullParameter(comparator, "comparator");
        int length = supportedCipherSuites.length;
        int i = 0;
        while (true) {
            if (i < length) {
                if (comparator.compare(supportedCipherSuites[i], "TLS_FALLBACK_SCSV") == 0) {
                    break;
                } else {
                    i++;
                }
            } else {
                i = -1;
                break;
            }
        }
        if (z && i != -1) {
            String value = supportedCipherSuites[i];
            Intrinsics.checkNotNullExpressionValue(value, "get(...)");
            Intrinsics.checkNotNullParameter(socketEnabledCipherSuites, "<this>");
            Intrinsics.checkNotNullParameter(value, "value");
            Object[] copyOf = Arrays.copyOf(socketEnabledCipherSuites, socketEnabledCipherSuites.length + 1);
            Intrinsics.checkNotNullExpressionValue(copyOf, "copyOf(...)");
            socketEnabledCipherSuites = (String[]) copyOf;
            socketEnabledCipherSuites[ArraysKt.getLastIndex(socketEnabledCipherSuites)] = value;
        }
        Intrinsics.checkNotNullParameter(this, "connectionSpec");
        ?? obj = new Object();
        obj.f22035a = this.f22033a;
        obj.b = strArr;
        obj.f22036c = strArr2;
        obj.d = this.b;
        obj.b((String[]) Arrays.copyOf(socketEnabledCipherSuites, socketEnabledCipherSuites.length));
        obj.d((String[]) Arrays.copyOf(enabledProtocols, enabledProtocols.length));
        ConnectionSpec a2 = obj.a();
        if (a2.c() != null) {
            sslSocket.setEnabledProtocols(a2.d);
        }
        if (a2.b() != null) {
            sslSocket.setEnabledCipherSuites(a2.f22034c);
        }
    }

    public final ArrayList b() {
        String[] strArr = this.f22034c;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                arrayList.add(CipherSuite.b.b(str));
            }
            return arrayList;
        }
        return null;
    }

    public final ArrayList c() {
        String[] strArr = this.d;
        if (strArr != null) {
            ArrayList arrayList = new ArrayList(strArr.length);
            for (String str : strArr) {
                TlsVersion.f.getClass();
                arrayList.add(TlsVersion.Companion.a(str));
            }
            return arrayList;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ConnectionSpec) {
            if (obj != this) {
                ConnectionSpec connectionSpec = (ConnectionSpec) obj;
                boolean z = connectionSpec.f22033a;
                boolean z2 = this.f22033a;
                if (z2 == z) {
                    if (z2) {
                        if (!Arrays.equals(this.f22034c, connectionSpec.f22034c) || !Arrays.equals(this.d, connectionSpec.d) || this.b != connectionSpec.b) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        if (this.f22033a) {
            int i2 = 0;
            String[] strArr = this.f22034c;
            if (strArr != null) {
                i = Arrays.hashCode(strArr);
            } else {
                i = 0;
            }
            int i3 = (527 + i) * 31;
            String[] strArr2 = this.d;
            if (strArr2 != null) {
                i2 = Arrays.hashCode(strArr2);
            }
            return ((i3 + i2) * 31) + (!this.b ? 1 : 0);
        }
        return 17;
    }

    public final String toString() {
        if (!this.f22033a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + Objects.toString(b(), "[all enabled]") + ", tlsVersions=" + Objects.toString(c(), "[all enabled]") + ", supportsTlsExtensions=" + this.b + ')';
    }
}
