package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.transition.CanvasUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@SuppressLint({"ViewConstructor"})
/* loaded from: classes.dex */
class GhostViewPort extends ViewGroup implements GhostView {
    public static final /* synthetic */ int g = 0;

    /* renamed from: c, reason: collision with root package name */
    public ViewGroup f1691c;
    public View f;

    /* renamed from: androidx.transition.GhostViewPort$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements ViewTreeObserver.OnPreDrawListener {
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public final boolean onPreDraw() {
            throw null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        throw null;
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        int i = Build.VERSION.SDK_INT;
        if (i < 29) {
            if (i != 28) {
                if (!CanvasUtils.f1668c) {
                    try {
                        Method declaredMethod = Canvas.class.getDeclaredMethod("insertReorderBarrier", null);
                        CanvasUtils.f1667a = declaredMethod;
                        declaredMethod.setAccessible(true);
                        Method declaredMethod2 = Canvas.class.getDeclaredMethod("insertInorderBarrier", null);
                        CanvasUtils.b = declaredMethod2;
                        declaredMethod2.setAccessible(true);
                    } catch (NoSuchMethodException unused) {
                    }
                    CanvasUtils.f1668c = true;
                }
                try {
                    Method method = CanvasUtils.f1667a;
                    if (method != null) {
                        method.invoke(canvas, null);
                    }
                } catch (IllegalAccessException unused2) {
                } catch (InvocationTargetException e) {
                    throw new RuntimeException(e.getCause());
                }
            } else {
                throw new IllegalStateException("This method doesn't work on Pie!");
            }
        } else {
            CanvasUtils.Api29Impl.b(canvas);
        }
        canvas.setMatrix(null);
        ViewUtils.b(null, 0);
        throw null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public final void setVisibility(int i) {
        super.setVisibility(i);
        throw null;
    }
}
