package androidx.activity;

import android.text.PrecomputedText;
import android.window.OnBackInvokedDispatcher;
import androidx.core.splashscreen.SplashScreen;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements SplashScreen.KeepOnScreenCondition {
    public static /* bridge */ /* synthetic */ OnBackInvokedDispatcher c(Object obj) {
        return (OnBackInvokedDispatcher) obj;
    }

    public static /* bridge */ /* synthetic */ boolean g(Object obj) {
        return obj instanceof PrecomputedText;
    }
}
