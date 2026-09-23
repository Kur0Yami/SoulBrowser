package com.mycompany.app.web;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.ValueCallback;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;

/**
 * Injects the Eruda mobile DevTools console into the current page.
 *
 * <p>Eruda is bundled under {@code assets/eruda/} and executed via {@code
 * evaluateJavascript}, so sites with a strict Content-Security-Policy (e.g.
 * github.com) still get a working panel. Loading from a CDN is blocked when
 * {@code script-src} does not allow that host.
 *
 * <p>When {@link PrefPdf#R} is enabled, Eruda is initialized on every page load
 * with the floating entry button hidden; the DevTools menu shows the panel and
 * the entry button.
 */
public final class DevToolsHelper {
    private static final String ASSET_PATH = "eruda/eruda.js";
    private static final String HAS_ERUDA_JS = "(function(){return!!window.eruda;})();";
    private static final String INIT_OPTS = "{defaults:{displaySize:50}}";
    private static final String SHOW_JS =
            "eruda.show();try{var __e=eruda.get('entryBtn');if(__e)__e.show()}catch(e){}";
    private static final String INIT_AND_SHOW_SUFFIX =
            ";eruda.init(" + INIT_OPTS + ");eruda.show();";
    private static final String INIT_HIDDEN_SUFFIX =
            ";eruda.init("
                    + INIT_OPTS
                    + ");try{var __e=eruda.get('entryBtn');if(__e)__e.hide()}catch(e){}";
    private static final String HIDE_ENTRY_JS =
            "try{var __e=eruda.get('entryBtn');if(__e)__e.hide()}catch(e){}";

    private static String cachedErudaJs;

    private DevToolsHelper() {}

    /** Menu action: inject if needed, show the panel, and reveal the entry button. */
    public static void loadEruda(WebViewActivity activity) {
        inject(activity, true, true);
    }

    /**
     * When preload is enabled, initialize Eruda on the page without showing the
     * panel or floating entry button.
     */
    public static void maybePreload(WebViewActivity activity) {
        if (!PrefPdf.R) {
            return;
        }
        inject(activity, false, false);
    }

    private static void inject(WebViewActivity activity, boolean showPanel, boolean toastIfUnsupported) {
        if (activity == null) {
            return;
        }
        final WebNestView webView = activity.I2;
        if (webView == null) {
            return;
        }
        String url = webView.getUrl();
        if (TextUtils.isEmpty(url)
                || "file:///android_asset/shortcut.html".equals(url)
                || "about:blank".equals(url)) {
            if (toastIfUnsupported) {
                MainUtil.e8(activity, resolveNotSupportedPage(activity));
            }
            return;
        }
        if (showPanel) {
            activity.e4();
        }
        final String eruda = loadErudaJs(activity);
        if (TextUtils.isEmpty(eruda)) {
            return;
        }
        final String whenPresent = showPanel ? SHOW_JS : HIDE_ENTRY_JS;
        final String whenAbsent = eruda + (showPanel ? INIT_AND_SHOW_SUFFIX : INIT_HIDDEN_SUFFIX);
        try {
            webView.evaluateJavascript(
                    HAS_ERUDA_JS,
                    new ValueCallback<String>() {
                        @Override
                        public void onReceiveValue(String value) {
                            if (value != null && value.contains("true")) {
                                MainUtil.J(webView, whenPresent, true);
                            } else {
                                // Top-level eval keeps Eruda's UMD `this` as window and
                                // bypasses page CSP (unlike a <script src=CDN>).
                                MainUtil.J(webView, whenAbsent, true);
                            }
                        }
                    });
        } catch (Exception ignored) {
        }
    }

    /** Avoid a hard package-id R reference; set-package-id rewrites the app id. */
    private static int resolveNotSupportedPage(Context context) {
        return context.getResources()
                .getIdentifier("not_supported_page", "string", context.getPackageName());
    }

    private static synchronized String loadErudaJs(Context context) {
        if (cachedErudaJs != null) {
            return cachedErudaJs;
        }
        InputStream in = null;
        try {
            in = context.getAssets().open(ASSET_PATH);
            ByteArrayOutputStream out = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) >= 0) {
                out.write(buf, 0, n);
            }
            cachedErudaJs = new String(out.toByteArray(), StandardCharsets.UTF_8);
        } catch (Exception e) {
            cachedErudaJs = "";
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Exception ignored) {
                }
            }
        }
        return cachedErudaJs;
    }
}
