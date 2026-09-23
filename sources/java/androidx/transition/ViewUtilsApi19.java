package androidx.transition;

import android.util.Log;
import android.view.View;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import java.lang.reflect.Field;

/* loaded from: classes.dex */
class ViewUtilsApi19 {

    /* renamed from: a, reason: collision with root package name */
    public static boolean f1720a = true;
    public static Field b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1721c;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api29Impl {
        @DoNotInline
        public static float a(View view) {
            return view.getTransitionAlpha();
        }

        @DoNotInline
        public static void b(View view, float f) {
            view.setTransitionAlpha(f);
        }
    }

    public float a(View view) {
        if (f1720a) {
            try {
                return Api29Impl.a(view);
            } catch (NoSuchMethodError unused) {
                f1720a = false;
            }
        }
        return view.getAlpha();
    }

    public void b(View view, float f) {
        if (f1720a) {
            try {
                Api29Impl.b(view, f);
                return;
            } catch (NoSuchMethodError unused) {
                f1720a = false;
            }
        }
        view.setAlpha(f);
    }

    public void c(View view, int i) {
        if (!f1721c) {
            try {
                Field declaredField = View.class.getDeclaredField("mViewFlags");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
                Log.i("ViewUtilsApi19", "fetchViewFlagsField: ");
            }
            f1721c = true;
        }
        Field field = b;
        if (field != null) {
            try {
                b.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (IllegalAccessException unused2) {
            }
        }
    }
}
