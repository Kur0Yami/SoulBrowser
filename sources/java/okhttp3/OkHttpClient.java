package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.net.ProxySelector;
import java.util.ArrayList;
import java.util.List;
import java.util.TimeZone;
import javax.net.SocketFactory;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.Call;
import okhttp3.WebSocket;
import okhttp3.internal._UtilJvmKt;
import okhttp3.internal.c;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.connection.RouteDatabase;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002:\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Lokhttp3/OkHttpClient;", "Lokhttp3/Call$Factory;", "Lokhttp3/WebSocket$Factory;", "Builder", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1388:1\n2746#2,3:1389\n2746#2,3:1392\n1#3:1395\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient\n*L\n278#1:1389,3\n340#1:1392,3\n*E\n"})
/* loaded from: classes4.dex */
public class OkHttpClient implements Call.Factory, WebSocket.Factory {
    public static final List B;
    public static final List C;
    public final ConnectionPool A;

    /* renamed from: a, reason: collision with root package name */
    public final Dispatcher f22056a;
    public final List b;

    /* renamed from: c, reason: collision with root package name */
    public final List f22057c;
    public final c d;
    public final boolean e;
    public final boolean f;
    public final Authenticator g;
    public final boolean h;
    public final boolean i;
    public final CookieJar j;
    public final Dns k;
    public final ProxySelector l;
    public final Authenticator m;
    public final SocketFactory n;
    public final SSLSocketFactory o;
    public final X509TrustManager p;
    public final List q;
    public final List r;
    public final OkHostnameVerifier s;
    public final CertificatePinner t;
    public final CertificateChainCleaner u;
    public final int v;
    public final int w;
    public final int x;
    public final RouteDatabase y;
    public final TaskRunner z;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/OkHttpClient$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nOkHttpClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n1#1,1388:1\n1#2:1389\n242#3:1390\n*S KotlinDebug\n*F\n+ 1 OkHttpClient.kt\nokhttp3/OkHttpClient$Builder\n*L\n1048#1:1390\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Builder {
        public ConnectionPool b;
        public final c e;
        public final boolean f;
        public final boolean g;
        public final Authenticator h;
        public final boolean i;
        public final boolean j;
        public final CookieJar k;
        public final Dns l;
        public final Authenticator m;
        public final SocketFactory n;
        public final List o;
        public final List p;
        public final OkHostnameVerifier q;
        public final CertificatePinner r;
        public final int s;
        public final int t;
        public final int u;

        /* renamed from: a, reason: collision with root package name */
        public final Dispatcher f22058a = new Dispatcher();

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f22059c = new ArrayList();
        public final ArrayList d = new ArrayList();

        /* JADX WARN: Type inference failed for: r0v5, types: [okhttp3.internal.c, java.lang.Object] */
        public Builder() {
            TimeZone timeZone = _UtilJvmKt.f22077a;
            Intrinsics.checkNotNullParameter(EventListener.f22044a, "<this>");
            this.e = new Object();
            this.f = true;
            this.g = true;
            Authenticator authenticator = Authenticator.f22022a;
            this.h = authenticator;
            this.i = true;
            this.j = true;
            this.k = CookieJar.f22039a;
            this.l = Dns.f22043a;
            this.m = authenticator;
            SocketFactory socketFactory = SocketFactory.getDefault();
            Intrinsics.checkNotNullExpressionValue(socketFactory, "getDefault(...)");
            this.n = socketFactory;
            this.o = OkHttpClient.C;
            this.p = OkHttpClient.B;
            this.q = OkHostnameVerifier.f22190a;
            this.r = CertificatePinner.f22026c;
            this.s = 10000;
            this.t = 10000;
            this.u = 10000;
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/OkHttpClient$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    static {
        Protocol[] elements = {Protocol.j, Protocol.h};
        TimeZone timeZone = _UtilJvmKt.f22077a;
        Intrinsics.checkNotNullParameter(elements, "elements");
        B = _UtilJvmKt.i(elements);
        ConnectionSpec[] elements2 = {ConnectionSpec.g, ConnectionSpec.h};
        Intrinsics.checkNotNullParameter(elements2, "elements");
        C = _UtilJvmKt.i(elements2);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01f4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public OkHttpClient(okhttp3.OkHttpClient.Builder r8) {
        /*
            Method dump skipped, instructions count: 524
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.OkHttpClient.<init>(okhttp3.OkHttpClient$Builder):void");
    }
}
