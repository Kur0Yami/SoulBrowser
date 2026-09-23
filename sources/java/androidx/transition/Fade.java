package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;

/* loaded from: classes.dex */
public class Fade extends Visibility {

    /* loaded from: classes.dex */
    public static class FadeAnimatorListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final View f1684a;
        public boolean b = false;

        public FadeAnimatorListener(View view) {
            this.f1684a = view;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            float f;
            View view = this.f1684a;
            if (view.getVisibility() == 0) {
                f = ViewUtils.f1718a.a(view);
            } else {
                f = 0.0f;
            }
            view.setTag(R.id.transition_pause_alpha, Float.valueOf(f));
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void c(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            this.f1684a.setTag(R.id.transition_pause_alpha, null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            ViewUtils.f1718a.b(this.f1684a, 1.0f);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationStart(Animator animator) {
            View view = this.f1684a;
            if (view.hasOverlappingRendering() && view.getLayerType() == 0) {
                this.b = true;
                view.setLayerType(2, null);
            }
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            boolean z2 = this.b;
            View view = this.f1684a;
            if (z2) {
                view.setLayerType(0, null);
            }
            if (z) {
                return;
            }
            ViewUtilsApi23 viewUtilsApi23 = ViewUtils.f1718a;
            viewUtilsApi23.b(view, 1.0f);
            viewUtilsApi23.getClass();
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void d(Transition transition) {
        }
    }

    public Fade(int i) {
        this.G = i;
    }

    public static float T(TransitionValues transitionValues, float f) {
        Float f2;
        if (transitionValues != null && (f2 = (Float) transitionValues.f1712a.get("android:fade:transitionAlpha")) != null) {
            return f2.floatValue();
        }
        return f;
    }

    @Override // androidx.transition.Visibility
    public final Animator Q(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtils.f1718a.getClass();
        return S(view, T(transitionValues, 0.0f), 1.0f);
    }

    @Override // androidx.transition.Visibility
    public final Animator R(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ViewUtilsApi23 viewUtilsApi23 = ViewUtils.f1718a;
        viewUtilsApi23.getClass();
        ObjectAnimator S = S(view, T(transitionValues, 1.0f), 0.0f);
        if (S == null) {
            viewUtilsApi23.b(view, T(transitionValues2, 1.0f));
        }
        return S;
    }

    public final ObjectAnimator S(View view, float f, float f2) {
        if (f == f2) {
            return null;
        }
        ViewUtils.f1718a.b(view, f);
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) ViewUtils.b, f2);
        FadeAnimatorListener fadeAnimatorListener = new FadeAnimatorListener(view);
        ofFloat.addListener(fadeAnimatorListener);
        q().a(fadeAnimatorListener);
        return ofFloat;
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        Visibility.O(transitionValues);
        Float f = (Float) transitionValues.b.getTag(R.id.transition_pause_alpha);
        if (f == null) {
            if (transitionValues.b.getVisibility() == 0) {
                f = Float.valueOf(ViewUtils.f1718a.a(transitionValues.b));
            } else {
                f = Float.valueOf(0.0f);
            }
        }
        transitionValues.f1712a.put("android:fade:transitionAlpha", f);
    }
}
