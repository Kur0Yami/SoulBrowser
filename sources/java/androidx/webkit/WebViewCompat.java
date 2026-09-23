package androidx.webkit;

import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Looper;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresOptIn;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.ApiHelperForO;
import androidx.webkit.internal.ApiHelperForP;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import androidx.webkit.internal.WebViewProviderAdapter;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public class WebViewCompat {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f1792a;
    public static final WeakHashMap b;

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalAsyncStartUp {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalCacheProvider {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalSaveState {
    }

    @Target({ElementType.METHOD, ElementType.TYPE, ElementType.FIELD})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalUrlPrerender {
    }

    /* loaded from: classes.dex */
    public static class NullReturningWebViewStartUpResult implements WebViewStartUpResult {
    }

    /* loaded from: classes.dex */
    public interface VisualStateCallback {
    }

    /* loaded from: classes.dex */
    public interface WebMessageListener {
        void a(WebMessageCompat webMessageCompat);
    }

    @ExperimentalAsyncStartUp
    /* loaded from: classes.dex */
    public interface WebViewStartUpCallback {
    }

    static {
        Uri.parse("*");
        Uri.parse(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        f1792a = true;
        b = new WeakHashMap();
    }

    public static PackageInfo a() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", null).invoke(null, null);
    }

    public static WebViewProviderAdapter b(WebView webView) {
        if (WebViewFeatureInternal.p.d() && f1792a) {
            WeakHashMap weakHashMap = b;
            WebViewProviderAdapter webViewProviderAdapter = (WebViewProviderAdapter) weakHashMap.get(webView);
            if (webViewProviderAdapter == null) {
                WebViewProviderAdapter webViewProviderAdapter2 = new WebViewProviderAdapter(WebViewGlueCommunicator.c().createWebView(webView));
                weakHashMap.put(webView, webViewProviderAdapter2);
                return webViewProviderAdapter2;
            }
            return webViewProviderAdapter;
        }
        return new WebViewProviderAdapter(WebViewGlueCommunicator.c().createWebView(webView));
    }

    public static String c() {
        if (WebViewFeatureInternal.l.d()) {
            return WebViewGlueCommunicator.c().getStatics().getVariationsHeader();
        }
        throw WebViewFeatureInternal.a();
    }

    public static WebViewClient d(WebView webView) {
        ApiFeature.O o = WebViewFeatureInternal.f;
        if (o.c()) {
            return ApiHelperForO.b(webView);
        }
        if (o.d()) {
            if (Build.VERSION.SDK_INT >= 28) {
                Looper c2 = ApiHelperForP.c(webView);
                if (c2 != Looper.myLooper()) {
                    throw new RuntimeException("A WebView method was called on thread '" + Thread.currentThread().getName() + "'. All WebView methods must be called on the same thread. (Expected Looper " + c2 + " called on " + Looper.myLooper() + ", FYI main Looper is " + Looper.getMainLooper() + ")");
                }
            } else {
                try {
                    Method declaredMethod = WebView.class.getDeclaredMethod("checkThread", null);
                    declaredMethod.setAccessible(true);
                    declaredMethod.invoke(webView, null);
                } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
                    throw new RuntimeException(e);
                }
            }
            return b(webView).f1815a.getWebViewClient();
        }
        throw WebViewFeatureInternal.a();
    }
}
