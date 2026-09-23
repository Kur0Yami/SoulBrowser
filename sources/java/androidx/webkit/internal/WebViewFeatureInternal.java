package androidx.webkit.internal;

import android.content.pm.PackageInfo;
import android.os.Build;
import androidx.webkit.WebViewCompat;
import androidx.webkit.WebViewFeature;
import androidx.webkit.internal.ApiFeature;
import java.lang.reflect.InvocationTargetException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class WebViewFeatureInternal {

    /* renamed from: a, reason: collision with root package name */
    public static final ApiFeature.N f1811a;
    public static final ApiFeature.M b;

    /* renamed from: c, reason: collision with root package name */
    public static final ApiFeature.M f1812c;
    public static final ApiFeature.O_MR1 d;
    public static final ApiFeature.NoFramework e;
    public static final ApiFeature.O f;
    public static final ApiFeature.P g;
    public static final ApiFeature.T h;
    public static final ApiFeature.NoFramework i;
    public static final ApiFeature.NoFramework j;
    public static final ApiFeature.NoFramework k;
    public static final ApiFeature.NoFramework l;
    public static final ApiFeature.NoFramework m;
    public static final ApiFeature.NoFramework n;
    public static final ApiFeature.NoFramework o;
    public static final ApiFeature.NoFramework p;

    /* renamed from: androidx.webkit.internal.WebViewFeatureInternal$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends ApiFeature.NoFramework {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean d() {
            if (!super.d() || !WebViewFeature.a("MULTI_PROCESS")) {
                return false;
            }
            boolean z = WebViewCompat.f1792a;
            if (WebViewFeatureInternal.i.d()) {
                return WebViewGlueCommunicator.c().getStatics().isMultiProcessEnabled();
            }
            throw WebViewFeatureInternal.a();
        }
    }

    /* renamed from: androidx.webkit.internal.WebViewFeatureInternal$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 extends ApiFeature.NoFramework {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean d() {
            if (!WebViewFeature.a("MULTI_PROFILE")) {
                return false;
            }
            return super.d();
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [androidx.webkit.internal.ApiFeature$N, androidx.webkit.internal.ApiFeature] */
    /* JADX WARN: Type inference failed for: r0v21, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$M] */
    /* JADX WARN: Type inference failed for: r0v22, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$M] */
    /* JADX WARN: Type inference failed for: r0v25, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$O_MR1] */
    /* JADX WARN: Type inference failed for: r0v28, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v33, types: [androidx.webkit.internal.ApiFeature$O, androidx.webkit.internal.ApiFeature] */
    /* JADX WARN: Type inference failed for: r0v37, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$P] */
    /* JADX WARN: Type inference failed for: r0v44, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v47, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v48, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v50, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v55, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v58, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v62, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    /* JADX WARN: Type inference failed for: r0v70, types: [androidx.webkit.internal.ApiFeature, androidx.webkit.internal.ApiFeature$NoFramework] */
    static {
        new ApiFeature("VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK");
        new ApiFeature("OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER");
        new ApiFeature("SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE");
        new ApiFeature("DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS");
        new ApiFeature("START_SAFE_BROWSING", "START_SAFE_BROWSING");
        new ApiFeature("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST");
        new ApiFeature("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_ALLOWLIST");
        new ApiFeature("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_WHITELIST");
        new ApiFeature("SAFE_BROWSING_ALLOWLIST", "SAFE_BROWSING_ALLOWLIST");
        new ApiFeature("SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL");
        f1811a = new ApiFeature("SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE");
        new ApiFeature("SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE");
        new ApiFeature("SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS");
        new ApiFeature("SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS");
        new ApiFeature("SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS");
        new ApiFeature("SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST");
        new ApiFeature("RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR");
        new ApiFeature("RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR");
        new ApiFeature("SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS");
        new ApiFeature("SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT");
        new ApiFeature("WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT");
        b = new ApiFeature("WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION");
        f1812c = new ApiFeature("WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE");
        new ApiFeature("SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY");
        new ApiFeature("SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED");
        d = new ApiFeature("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL");
        new ApiFeature("WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE");
        new ApiFeature("WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE");
        e = new ApiFeature("WEB_MESSAGE_ARRAY_BUFFER", "WEB_MESSAGE_ARRAY_BUFFER");
        new ApiFeature("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK");
        new ApiFeature("CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL");
        new ApiFeature("POST_WEB_MESSAGE", "POST_WEB_MESSAGE");
        new ApiFeature("WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE");
        f = new ApiFeature("GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT");
        new ApiFeature("GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT");
        new ApiFeature("GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER");
        new ApiFeature("WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE");
        g = new ApiFeature("TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE");
        new StartupApiFeature();
        new StartupApiFeature();
        new StartupApiFeature();
        new ApiFeature("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
        h = new ApiFeature.T() { // from class: androidx.webkit.internal.WebViewFeatureInternal.1
            public final Pattern d = Pattern.compile("\\A\\d+");

            @Override // androidx.webkit.internal.ApiFeature
            public final boolean d() {
                int i2;
                PackageInfo packageInfo;
                boolean d2 = super.d();
                if (d2 && (i2 = Build.VERSION.SDK_INT) < 29) {
                    boolean z = WebViewCompat.f1792a;
                    if (i2 >= 26) {
                        packageInfo = ApiHelperForO.a();
                    } else {
                        try {
                            packageInfo = WebViewCompat.a();
                        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                            packageInfo = null;
                        }
                    }
                    if (packageInfo == null) {
                        return false;
                    }
                    Matcher matcher = this.d.matcher(packageInfo.versionName);
                    if (!matcher.find() || Integer.parseInt(packageInfo.versionName.substring(matcher.start(), matcher.end())) < 105) {
                        return false;
                    }
                    return true;
                }
                return d2;
            }
        };
        new ApiFeature("PROXY_OVERRIDE", "PROXY_OVERRIDE:3");
        i = new ApiFeature("MULTI_PROCESS", "MULTI_PROCESS_QUERY");
        new ApiFeature("FORCE_DARK", "FORCE_DARK");
        new ApiFeature("FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR");
        j = new ApiFeature("WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");
        k = new ApiFeature("DOCUMENT_START_SCRIPT", "DOCUMENT_START_SCRIPT:1");
        new ApiFeature("PROXY_OVERRIDE_REVERSE_BYPASS", "PROXY_OVERRIDE_REVERSE_BYPASS");
        l = new ApiFeature("GET_VARIATIONS_HEADER", "GET_VARIATIONS_HEADER");
        new ApiFeature("ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY", "ENTERPRISE_AUTHENTICATION_APP_LINK_POLICY");
        new ApiFeature("GET_COOKIE_INFO", "GET_COOKIE_INFO");
        new ApiFeature("REQUESTED_WITH_HEADER_ALLOW_LIST", "REQUESTED_WITH_HEADER_ALLOW_LIST");
        new ApiFeature("USER_AGENT_METADATA", "USER_AGENT_METADATA");
        m = new ApiFeature("MULTI_PROFILE", "MULTI_PROFILE");
        new ApiFeature("ATTRIBUTION_REGISTRATION_BEHAVIOR", "ATTRIBUTION_BEHAVIOR");
        new ApiFeature("WEBVIEW_MEDIA_INTEGRITY_API_STATUS", "WEBVIEW_INTEGRITY_API_STATUS");
        n = new ApiFeature("MUTE_AUDIO", "MUTE_AUDIO");
        new ApiFeature("WEB_AUTHENTICATION", "WEB_AUTHENTICATION");
        new ApiFeature("SPECULATIVE_LOADING_STATUS", "SPECULATIVE_LOADING");
        new ApiFeature("BACK_FORWARD_CACHE", "BACK_FORWARD_CACHE");
        o = new ApiFeature("DELETE_BROWSING_DATA", "WEB_STORAGE_DELETE_BROWSING_DATA");
        new ApiFeature("PREFETCH_URL_V4", "PREFETCH_URL_V4");
        new ApiFeature("IMPLEMENTATION_ONLY_FEATURE", "ASYNC_WEBVIEW_STARTUP");
        new ApiFeature("DEFAULT_TRAFFICSTATS_TAGGING", "DEFAULT_TRAFFICSTATS_TAGGING");
        new ApiFeature("PRERENDER_URL_V2", "PRERENDER_URL_V2");
        new ApiFeature("SPECULATIVE_LOADING_CONFIG_V2", "SPECULATIVE_LOADING_CONFIG_V2");
        new ApiFeature("SAVE_STATE", "SAVE_STATE");
        new ApiFeature("WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE", "WEB_VIEW_NAVIGATION_CLIENT_BASIC_USAGE");
        p = new ApiFeature("CACHE_PROVIDER", "PROVIDER_WEAKLY_REF_WEBVIEW");
        new ApiFeature("PAYMENT_REQUEST", "PAYMENT_REQUEST");
        new ApiFeature("WEBVIEW_BUILDER", "WEBVIEW_BUILDER");
    }

    public static UnsupportedOperationException a() {
        return new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }
}
