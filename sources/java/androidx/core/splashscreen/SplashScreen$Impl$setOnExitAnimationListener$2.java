package androidx.core.splashscreen;

import android.view.View;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"androidx/core/splashscreen/SplashScreen$Impl$setOnExitAnimationListener$2", "Landroid/view/View$OnLayoutChangeListener;", "core-splashscreen_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
/* loaded from: classes.dex */
public final class SplashScreen$Impl$setOnExitAnimationListener$2 implements View.OnLayoutChangeListener {
    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        Intrinsics.checkNotNullParameter(view, "view");
        if (!view.isAttachedToWindow()) {
            return;
        }
        view.removeOnLayoutChangeListener(this);
        throw null;
    }
}
