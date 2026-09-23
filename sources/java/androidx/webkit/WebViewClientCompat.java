package androidx.webkit;

import android.webkit.SafeBrowsingResponse;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RestrictTo;
import androidx.webkit.internal.WebResourceErrorImpl;
import androidx.webkit.internal.WebViewFeatureInternal;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.SafeBrowsingResponseBoundaryInterface;
import org.chromium.support_lib_boundary.WebResourceErrorBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewClientBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebViewClientCompat extends WebViewClient implements WebViewClientBoundaryInterface {

    /* renamed from: c, reason: collision with root package name */
    public static final String[] f1791c = {"VISUAL_STATE_CALLBACK", "RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_HTTP_ERROR", "SHOULD_OVERRIDE_WITH_REDIRECTS", "SAFE_BROWSING_HIT"};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface SafeBrowsingThreat {
    }

    public final void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceErrorImpl webResourceErrorImpl) {
        if (WebViewFeature.a("WEB_RESOURCE_ERROR_GET_CODE") && WebViewFeature.a("WEB_RESOURCE_ERROR_GET_DESCRIPTION") && webResourceRequest.isForMainFrame()) {
            onReceivedError(webView, webResourceErrorImpl.b(), webResourceErrorImpl.a().toString(), webResourceRequest.getUrl().toString());
        }
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    public final String[] getSupportedFeatures() {
        return f1791c;
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public final void onPageCommitVisible(WebView webView, String str) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.webkit.internal.WebResourceErrorImpl] */
    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, InvocationHandler invocationHandler) {
        ?? obj = new Object();
        obj.b = (WebResourceErrorBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebResourceErrorBoundaryInterface.class, invocationHandler);
        a(webView, webResourceRequest, obj);
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.webkit.internal.SafeBrowsingResponseImpl, java.lang.Object] */
    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public final void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, InvocationHandler invocationHandler) {
        ?? obj = new Object();
        obj.b = (SafeBrowsingResponseBoundaryInterface) BoundaryInterfaceReflectionUtil.a(SafeBrowsingResponseBoundaryInterface.class, invocationHandler);
        if (WebViewFeature.a("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL")) {
            obj.a();
            return;
        }
        throw WebViewFeatureInternal.a();
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.webkit.internal.WebResourceErrorImpl] */
    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        ?? obj = new Object();
        obj.f1808a = webResourceError;
        a(webView, webResourceRequest, obj);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.webkit.internal.SafeBrowsingResponseImpl, java.lang.Object] */
    @Override // android.webkit.WebViewClient
    public final void onSafeBrowsingHit(WebView webView, WebResourceRequest webResourceRequest, int i, SafeBrowsingResponse safeBrowsingResponse) {
        ?? obj = new Object();
        obj.f1801a = safeBrowsingResponse;
        if (WebViewFeature.a("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL")) {
            obj.a();
            return;
        }
        throw WebViewFeatureInternal.a();
    }
}
