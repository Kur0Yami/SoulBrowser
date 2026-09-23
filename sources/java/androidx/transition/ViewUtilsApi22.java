package androidx.transition;

import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

@RequiresApi
/* loaded from: classes.dex */
class ViewUtilsApi22 extends ViewUtilsApi21 {
    public static boolean g = true;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static void a(View view, int i, int i2, int i3, int i4) {
            view.setLeftTopRightBottom(i, i2, i3, i4);
        }
    }

    public void g(View view, int i, int i2, int i3, int i4) {
        if (g) {
            try {
                Api29Impl.a(view, i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                g = false;
            }
        }
    }
}
