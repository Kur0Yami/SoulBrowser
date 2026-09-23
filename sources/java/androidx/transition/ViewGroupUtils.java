package androidx.transition;

import android.os.Build;
import android.view.ViewGroup;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
class ViewGroupUtils {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1717a = true;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static int a(ViewGroup viewGroup, int i) {
            return viewGroup.getChildDrawingOrder(i);
        }

        @DoNotInline
        public static void b(ViewGroup viewGroup, boolean z) {
            viewGroup.suppressLayout(z);
        }
    }

    public static void a(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            Api29Impl.b(viewGroup, z);
        } else if (f1717a) {
            try {
                Api29Impl.b(viewGroup, z);
            } catch (NoSuchMethodError unused) {
                f1717a = false;
            }
        }
    }
}
