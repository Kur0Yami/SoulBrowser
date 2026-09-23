package okhttp3.internal.platform;

import android.content.Context;
import android.net.http.X509TrustManagerExtensions;
import android.os.Build;
import android.os.StrictMode;
import android.security.NetworkSecurityPolicy;
import android.util.CloseGuard;
import android.util.Log;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import okhttp3.internal.SuppressSignatureCheck;
import okhttp3.internal.platform.android.AndroidCertificateChainCleaner;
import okhttp3.internal.platform.android.AndroidSocketAdapter;
import okhttp3.internal.platform.android.BouncyCastleSocketAdapter;
import okhttp3.internal.platform.android.ConscryptSocketAdapter;
import okhttp3.internal.platform.android.DeferredSocketAdapter;
import okhttp3.internal.platform.android.SocketAdapter;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.TrustRootIndex;

@SuppressSignatureCheck
@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0003¨\u0006\u0004"}, d2 = {"Lokhttp3/internal/platform/Android10Platform;", "Lokhttp3/internal/platform/Platform;", "Lokhttp3/internal/platform/ContextAwarePlatform;", "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAndroid10Platform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Android10Platform.kt\nokhttp3/internal/platform/Android10Platform\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,133:1\n774#2:134\n865#2,2:135\n1#3:137\n*S KotlinDebug\n*F\n+ 1 Android10Platform.kt\nokhttp3/internal/platform/Android10Platform\n*L\n55#1:134\n55#1:135,2\n*E\n"})
/* loaded from: classes4.dex */
public final class Android10Platform extends Platform implements ContextAwarePlatform {
    public static final boolean e;

    /* renamed from: c, reason: collision with root package name */
    public Context f22169c;
    public final ArrayList d;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/platform/Android10Platform$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    static {
        boolean z;
        if (Build.VERSION.SDK_INT >= 29) {
            z = true;
        } else {
            z = false;
        }
        e = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Android10Platform() {
        Object obj;
        if (Build.VERSION.SDK_INT >= 29) {
            obj = new Object();
        } else {
            obj = null;
        }
        List listOfNotNull = CollectionsKt.listOfNotNull((Object[]) new SocketAdapter[]{obj, new DeferredSocketAdapter(AndroidSocketAdapter.f), new DeferredSocketAdapter(ConscryptSocketAdapter.f22180a), new DeferredSocketAdapter(BouncyCastleSocketAdapter.f22179a)});
        ArrayList arrayList = new ArrayList();
        for (Object obj2 : listOfNotNull) {
            if (((SocketAdapter) obj2).a()) {
                arrayList.add(obj2);
            }
        }
        this.d = arrayList;
    }

    @Override // okhttp3.internal.platform.ContextAwarePlatform
    public final void a(Context context) {
        this.f22169c = context;
    }

    @Override // okhttp3.internal.platform.ContextAwarePlatform
    /* renamed from: b, reason: from getter */
    public final Context getF22170c() {
        return this.f22169c;
    }

    @Override // okhttp3.internal.platform.Platform
    public final CertificateChainCleaner c(X509TrustManager trustManager) {
        X509TrustManagerExtensions x509TrustManagerExtensions;
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        AndroidCertificateChainCleaner androidCertificateChainCleaner = null;
        try {
            x509TrustManagerExtensions = new X509TrustManagerExtensions(trustManager);
        } catch (IllegalArgumentException unused) {
            x509TrustManagerExtensions = null;
        }
        if (x509TrustManagerExtensions != null) {
            androidCertificateChainCleaner = new AndroidCertificateChainCleaner(trustManager, x509TrustManagerExtensions);
        }
        if (androidCertificateChainCleaner != null) {
            return androidCertificateChainCleaner;
        }
        return super.c(trustManager);
    }

    @Override // okhttp3.internal.platform.Platform
    public final TrustRootIndex d(X509TrustManager trustManager) {
        Intrinsics.checkNotNullParameter(trustManager, "trustManager");
        StrictMode.noteSlowCall("buildTrustRootIndex");
        return super.d(trustManager);
    }

    @Override // okhttp3.internal.platform.Platform
    public final void e(SSLSocket sslSocket, String str, List protocols) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        Intrinsics.checkNotNullParameter(protocols, "protocols");
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                obj = arrayList.get(i);
                i++;
                if (((SocketAdapter) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter != null) {
            socketAdapter.d(sslSocket, str, protocols);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final String g(SSLSocket sslSocket) {
        Object obj;
        Intrinsics.checkNotNullParameter(sslSocket, "sslSocket");
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                obj = arrayList.get(i);
                i++;
                if (((SocketAdapter) obj).b(sslSocket)) {
                    break;
                }
            } else {
                obj = null;
                break;
            }
        }
        SocketAdapter socketAdapter = (SocketAdapter) obj;
        if (socketAdapter == null) {
            return null;
        }
        return socketAdapter.c(sslSocket);
    }

    @Override // okhttp3.internal.platform.Platform
    public final Object h() {
        Intrinsics.checkNotNullParameter("response.body().close()", "closer");
        if (Build.VERSION.SDK_INT >= 30) {
            CloseGuard closeGuard = new CloseGuard();
            closeGuard.open("response.body().close()");
            return closeGuard;
        }
        return super.h();
    }

    @Override // okhttp3.internal.platform.Platform
    public final boolean i(String hostname) {
        Intrinsics.checkNotNullParameter(hostname, "hostname");
        return NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(hostname);
    }

    @Override // okhttp3.internal.platform.Platform
    public final void j(int i, String message, Throwable th) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (i == 5) {
            boolean z = AndroidPlatform.e;
            Log.w("OkHttp", message, th);
        } else {
            boolean z2 = AndroidPlatform.e;
            Log.i("OkHttp", message, th);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final void k(Object obj, String message) {
        Intrinsics.checkNotNullParameter(message, "message");
        if (Build.VERSION.SDK_INT >= 30) {
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type android.util.CloseGuard");
            ((CloseGuard) obj).warnIfOpen();
        } else {
            super.k(obj, message);
        }
    }

    @Override // okhttp3.internal.platform.Platform
    public final SSLContext l() {
        StrictMode.noteSlowCall("newSSLContext");
        return super.l();
    }
}
