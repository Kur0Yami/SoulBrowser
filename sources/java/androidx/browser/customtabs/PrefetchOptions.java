package androidx.browser.customtabs;

import android.os.Build;
import android.os.Bundle;

@ExperimentalPrefetch
/* loaded from: classes.dex */
public final class PrefetchOptions {

    @ExperimentalPrefetch
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public static void a(Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 33) {
        }
        bundle.getBoolean("androidx.browser.customtabs.PrefetchOptions.KEY_REQUIRES_ANONYMOUS_IP_WHEN_CROSS_ORIGIN");
    }
}
