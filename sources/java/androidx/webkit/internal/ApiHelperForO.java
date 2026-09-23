package androidx.webkit.internal;

import android.content.pm.PackageInfo;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
public class ApiHelperForO {
    public static PackageInfo a() {
        return WebView.getCurrentWebViewPackage();
    }

    public static WebViewClient b(WebView webView) {
        return webView.getWebViewClient();
    }
}
