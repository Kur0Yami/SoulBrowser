package com.google.android.material.internal;

import android.content.Context;
import android.graphics.PorterDuff;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;

@RestrictTo
/* loaded from: classes3.dex */
public class ViewUtils {

    /* renamed from: com.google.android.material.internal.ViewUtils$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements OnApplyWindowInsetsListener {
        @Override // com.google.android.material.internal.ViewUtils.OnApplyWindowInsetsListener
        public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding) {
            view.getLayoutDirection();
            view.setPaddingRelative(relativePadding.f11823a, relativePadding.b, relativePadding.f11824c, relativePadding.d);
            return windowInsetsCompat;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.material.internal.ViewUtils$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements View.OnAttachStateChangeListener {
        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewAttachedToWindow(View view) {
            view.removeOnAttachStateChangeListener(this);
            view.requestApplyInsets();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public final void onViewDetachedFromWindow(View view) {
        }
    }

    /* renamed from: com.google.android.material.internal.ViewUtils$4, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass4 implements ViewOverlayImpl {
    }

    /* loaded from: classes3.dex */
    public interface OnApplyWindowInsetsListener {
        WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, RelativePadding relativePadding);
    }

    /* loaded from: classes3.dex */
    public static class RelativePadding {

        /* renamed from: a, reason: collision with root package name */
        public int f11823a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f11824c;
        public int d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.internal.ViewUtils$RelativePadding, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.lang.Object, android.view.View$OnAttachStateChangeListener] */
    public static void a(View view, final OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        int paddingStart = view.getPaddingStart();
        int paddingTop = view.getPaddingTop();
        int paddingEnd = view.getPaddingEnd();
        int paddingBottom = view.getPaddingBottom();
        final ?? obj = new Object();
        obj.f11823a = paddingStart;
        obj.b = paddingTop;
        obj.f11824c = paddingEnd;
        obj.d = paddingBottom;
        ViewCompat.G(view, new androidx.core.view.OnApplyWindowInsetsListener() { // from class: com.google.android.material.internal.ViewUtils.2
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.internal.ViewUtils$RelativePadding, java.lang.Object] */
            @Override // androidx.core.view.OnApplyWindowInsetsListener
            public final WindowInsetsCompat a(View view2, WindowInsetsCompat windowInsetsCompat) {
                ?? obj2 = new Object();
                RelativePadding relativePadding = obj;
                obj2.f11823a = relativePadding.f11823a;
                obj2.b = relativePadding.b;
                obj2.f11824c = relativePadding.f11824c;
                obj2.d = relativePadding.d;
                OnApplyWindowInsetsListener.this.a(view2, windowInsetsCompat, obj2);
                return windowInsetsCompat;
            }
        });
        if (view.isAttachedToWindow()) {
            view.requestApplyInsets();
        } else {
            view.addOnAttachStateChangeListener(new Object());
        }
    }

    public static float b(Context context, int i) {
        return TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static PorterDuff.Mode c(int i, PorterDuff.Mode mode) {
        if (i != 3) {
            if (i != 5) {
                if (i != 9) {
                    switch (i) {
                        case 14:
                            return PorterDuff.Mode.MULTIPLY;
                        case 15:
                            return PorterDuff.Mode.SCREEN;
                        case 16:
                            return PorterDuff.Mode.ADD;
                        default:
                            return mode;
                    }
                }
                return PorterDuff.Mode.SRC_ATOP;
            }
            return PorterDuff.Mode.SRC_IN;
        }
        return PorterDuff.Mode.SRC_OVER;
    }
}
