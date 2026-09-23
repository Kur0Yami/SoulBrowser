package androidx.webkit;

import android.os.Build;
import android.util.Log;
import android.webkit.WebSettings;
import androidx.annotation.RequiresOptIn;
import androidx.annotation.RestrictTo;
import androidx.webkit.internal.WebSettingsAdapter;
import androidx.webkit.internal.WebViewFeatureInternal;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import org.chromium.support_lib_boundary.WebSettingsBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* loaded from: classes.dex */
public class WebSettingsCompat {

    @Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalBackForwardCache {
    }

    @Target({ElementType.METHOD, ElementType.FIELD, ElementType.TYPE})
    @RequiresOptIn
    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes.dex */
    public @interface ExperimentalSpeculativeLoading {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ForceDark {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface ForceDarkStrategy {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface MenuItemFlags {
    }

    public static void a(WebSettings webSettings, boolean z) {
        WebSettingsAdapter webSettingsAdapter;
        if (WebViewFeatureInternal.h.d()) {
            try {
                webSettingsAdapter = new WebSettingsAdapter((WebSettingsBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebSettingsBoundaryInterface.class, WebViewGlueCommunicator.b().f1820a.convertSettings(webSettings)));
            } catch (ClassCastException e) {
                if (Build.VERSION.SDK_INT == 30 && "android.webkit.WebSettingsWrapper".equals(webSettings.getClass().getCanonicalName())) {
                    Log.e("WebSettingsCompat", "Error converting WebSettings to Chrome implementation. All AndroidX method calls on this WebSettings instance will be no-op calls. See https://crbug.com/388824130 for more info.", e);
                    webSettingsAdapter = new WebSettingsAdapter(null);
                } else {
                    throw e;
                }
            }
            webSettingsAdapter.a(z);
            return;
        }
        throw WebViewFeatureInternal.a();
    }
}
