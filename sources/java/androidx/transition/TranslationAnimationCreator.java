package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.transition.Transition;

/* loaded from: classes.dex */
class TranslationAnimationCreator {

    /* loaded from: classes.dex */
    public static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public int[] f1716a;
        public boolean b;

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            if (this.f1716a == null) {
                this.f1716a = new int[2];
            }
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void c(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void d(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void e(Transition transition) {
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void f(Transition transition) {
            if (this.b) {
            } else {
                throw null;
            }
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
            this.b = true;
            throw null;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationCancel(Animator animator) {
            this.b = true;
            throw null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            throw null;
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            if (!z) {
                throw null;
            }
        }
    }
}
