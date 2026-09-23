package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.FloatEvaluator;
import android.animation.ObjectAnimator;
import android.animation.StateListAnimator;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.graphics.Matrix;
import android.os.Build;
import android.util.Property;
import android.view.View;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.animation.AnimatorSetCompat;
import com.google.android.material.animation.ImageMatrixProperty;
import com.google.android.material.animation.MatrixEvaluator;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class FloatingActionButtonImpl {

    /* renamed from: a, reason: collision with root package name */
    public ShapeAppearanceModel f11795a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11796c;
    public float d;
    public float e;
    public float f;
    public StateListAnimator g;
    public Animator h;
    public MotionSpec i;
    public MotionSpec j;
    public float k;
    public int l;
    public int m;
    public ArrayList n;
    public ArrayList o;
    public ArrayList p;
    public static final FastOutLinearInInterpolator q = AnimationUtils.f11632c;
    public static final int r = R.attr.motionDurationLong2;
    public static final int s = R.attr.motionEasingEmphasizedInterpolator;
    public static final int t = R.attr.motionDurationMedium1;
    public static final int u = R.attr.motionEasingEmphasizedAccelerateInterpolator;
    public static final int[] v = {android.R.attr.state_pressed, android.R.attr.state_enabled};
    public static final int[] w = {android.R.attr.state_hovered, android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] x = {android.R.attr.state_focused, android.R.attr.state_enabled};
    public static final int[] y = {android.R.attr.state_hovered, android.R.attr.state_enabled};
    public static final int[] z = {android.R.attr.state_enabled};
    public static final int[] A = new int[0];

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public boolean f11797a;
        public final /* synthetic */ boolean b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ InternalVisibilityChangedListener f11798c;

        public AnonymousClass1(boolean z, FloatingActionButton.AnonymousClass1 anonymousClass1) {
            this.b = z;
            this.f11798c = anonymousClass1;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.f11797a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            floatingActionButtonImpl.m = 0;
            floatingActionButtonImpl.h = null;
            if (this.f11797a) {
            } else {
                throw null;
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* renamed from: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends AnimatorListenerAdapter {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ boolean f11799a;
        public final /* synthetic */ InternalVisibilityChangedListener b;

        public AnonymousClass2(boolean z, FloatingActionButton.AnonymousClass1 anonymousClass1) {
            this.f11799a = z;
            this.b = anonymousClass1;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            FloatingActionButtonImpl floatingActionButtonImpl = FloatingActionButtonImpl.this;
            floatingActionButtonImpl.m = 0;
            floatingActionButtonImpl.h = null;
            InternalVisibilityChangedListener internalVisibilityChangedListener = this.b;
            if (internalVisibilityChangedListener != null) {
                internalVisibilityChangedListener.a();
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static class AlwaysStatefulMaterialShapeDrawable extends MaterialShapeDrawable {
        @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
        public final boolean isStateful() {
            return true;
        }
    }

    /* loaded from: classes3.dex */
    public interface InternalTransformationCallback {
        void a();

        void b();
    }

    /* loaded from: classes3.dex */
    public interface InternalVisibilityChangedListener {
        void a();

        void b();
    }

    public final void a(float f, Matrix matrix) {
        matrix.reset();
        throw null;
    }

    public final AnimatorSet b(MotionSpec motionSpec, float f, float f2, float f3) {
        ArrayList arrayList = new ArrayList();
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.ALPHA, f);
        motionSpec.c("opacity").a(ofFloat);
        arrayList.add(ofFloat);
        ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_X, f2);
        motionSpec.c("scale").a(ofFloat2);
        int i = Build.VERSION.SDK_INT;
        if (i == 26) {
            ofFloat2.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.4

                /* renamed from: a, reason: collision with root package name */
                public final FloatEvaluator f11801a = new FloatEvaluator();

                @Override // android.animation.TypeEvaluator
                public final Float evaluate(float f4, Float f5, Float f6) {
                    float floatValue = this.f11801a.evaluate(f4, (Number) f5, (Number) f6).floatValue();
                    if (floatValue < 0.1f) {
                        floatValue = 0.0f;
                    }
                    return Float.valueOf(floatValue);
                }
            });
        }
        arrayList.add(ofFloat2);
        ObjectAnimator ofFloat3 = ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.SCALE_Y, f2);
        motionSpec.c("scale").a(ofFloat3);
        if (i == 26) {
            ofFloat3.setEvaluator(new TypeEvaluator<Float>() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.4

                /* renamed from: a, reason: collision with root package name */
                public final FloatEvaluator f11801a = new FloatEvaluator();

                @Override // android.animation.TypeEvaluator
                public final Float evaluate(float f4, Float f5, Float f6) {
                    float floatValue = this.f11801a.evaluate(f4, (Number) f5, (Number) f6).floatValue();
                    if (floatValue < 0.1f) {
                        floatValue = 0.0f;
                    }
                    return Float.valueOf(floatValue);
                }
            });
        }
        arrayList.add(ofFloat3);
        a(f3, null);
        ObjectAnimator ofObject = ObjectAnimator.ofObject((Object) null, new ImageMatrixProperty(), new MatrixEvaluator() { // from class: com.google.android.material.floatingactionbutton.FloatingActionButtonImpl.3
            @Override // com.google.android.material.animation.MatrixEvaluator, android.animation.TypeEvaluator
            /* renamed from: a */
            public final Matrix evaluate(float f4, Matrix matrix, Matrix matrix2) {
                FloatingActionButtonImpl.this.k = f4;
                return super.evaluate(f4, matrix, matrix2);
            }
        }, new Matrix(null));
        motionSpec.c("iconScale").a(ofObject);
        arrayList.add(ofObject);
        AnimatorSet animatorSet = new AnimatorSet();
        AnimatorSetCompat.a(animatorSet, arrayList);
        return animatorSet;
    }

    public final AnimatorSet c(float f, float f2, float f3, int i, int i2) {
        new AnimatorSet();
        new ArrayList();
        ValueAnimator.ofFloat(0.0f, 1.0f);
        throw null;
    }

    public final AnimatorSet d(float f, float f2) {
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.play(ObjectAnimator.ofFloat((Object) null, "elevation", f).setDuration(0L)).with(ObjectAnimator.ofFloat((Object) null, (Property<Object, Float>) View.TRANSLATION_Z, f2).setDuration(100L));
        animatorSet.setInterpolator(q);
        return animatorSet;
    }

    public final void e(float f, float f2, float f3) {
        throw null;
    }

    public final void f() {
        ArrayList arrayList = this.p;
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((InternalTransformationCallback) obj).a();
            }
        }
    }

    public final void g() {
        throw null;
    }
}
