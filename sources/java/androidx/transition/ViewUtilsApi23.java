package androidx.transition;

import android.os.Build;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
class ViewUtilsApi23 extends ViewUtilsApi22 {
    public static boolean h = true;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static void a(View view, int i) {
            view.setTransitionVisibility(i);
        }
    }

    @Override // androidx.transition.ViewUtilsApi19
    public void c(View view, int i) {
        if (Build.VERSION.SDK_INT == 28) {
            super.c(view, i);
        } else if (h) {
            try {
                Api29Impl.a(view, i);
            } catch (NoSuchMethodError unused) {
                h = false;
            }
        }
    }
}
