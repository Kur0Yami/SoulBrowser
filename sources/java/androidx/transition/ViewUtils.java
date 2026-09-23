package androidx.transition;

import android.graphics.Rect;
import android.os.Build;
import android.util.Property;
import android.view.View;

/* loaded from: classes.dex */
class ViewUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ViewUtilsApi23 f1718a;
    public static final Property b;

    /* renamed from: c, reason: collision with root package name */
    public static final Property f1719c;

    /* renamed from: androidx.transition.ViewUtils$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends Property<View, Float> {
        @Override // android.util.Property
        public final Float get(View view) {
            return Float.valueOf(ViewUtils.f1718a.a(view));
        }

        @Override // android.util.Property
        public final void set(View view, Float f) {
            float floatValue = f.floatValue();
            ViewUtils.f1718a.b(view, floatValue);
        }
    }

    /* renamed from: androidx.transition.ViewUtils$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 extends Property<View, Rect> {
        @Override // android.util.Property
        public final Rect get(View view) {
            return view.getClipBounds();
        }

        @Override // android.util.Property
        public final void set(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.transition.ViewUtilsApi23] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, androidx.transition.ViewUtilsApi23] */
    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f1718a = new Object();
        } else {
            f1718a = new Object();
        }
        b = new Property(Float.class, "translationAlpha");
        f1719c = new Property(Rect.class, "clipBounds");
    }

    public static void a(View view, int i, int i2, int i3, int i4) {
        f1718a.g(view, i, i2, i3, i4);
    }

    public static void b(View view, int i) {
        f1718a.c(view, i);
    }
}
