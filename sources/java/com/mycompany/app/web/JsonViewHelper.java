package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Replaces Chromium's plain JSON &lt;pre&gt; view with Mozilla Firefox's JSON Viewer
 * (via the pd4d10/json-viewer port bundled under assets/jsonview/).
 */
public final class JsonViewHelper {
    private static final String DETECT_JS =
            "(function(){if(window.__soulMozillaJsonView)return false;"
                    + "var el=document.body&&document.body.firstElementChild;"
                    + "if(!(el instanceof HTMLElement)||el.tagName!=='PRE')return false;"
                    + "try{JSON.parse(el.innerText);return true;}catch(e){return false;}})();";

    private static String cachedViewerJs;

    private JsonViewHelper() {
    }

    public static void inject(WebView webView) {
        if (webView == null) {
            return;
        }
        final WebView target = webView;
        try {
            target.evaluateJavascript(DETECT_JS, new ValueCallback<String>() {
                @Override
                public void onReceiveValue(String value) {
                    if (value != null && value.contains("true")) {
                        injectViewer(target);
                    }
                }
            });
        } catch (Exception ignored) {
        }
    }

    private static void injectViewer(WebView webView) {
        if (webView == null) {
            return;
        }
        Context context = webView.getContext();
        if (context == null) {
            return;
        }
        String js = loadViewerJs(context);
        if (TextUtils.isEmpty(js)) {
            return;
        }
        try {
            webView.evaluateJavascript(js, null);
        } catch (Exception ignored) {
        }
    }

    private static synchronized String loadViewerJs(Context context) {
        if (cachedViewerJs != null) {
            return cachedViewerJs;
        }
        InputStream in = null;
        try {
            in = context.getAssets().open("jsonview/viewer.js");
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) >= 0) {
                out.write(buf, 0, n);
            }
            cachedViewerJs = new String(out.toByteArray(), StandardCharsets.UTF_8);
        } catch (Exception e) {
            cachedViewerJs = "";
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Exception ignored) {
                }
            }
        }
        return cachedViewerJs;
    }
}
