package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.graphics.Rect;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeClipBounds extends Transition {
    public static final String[] G = {"android:clipBounds:clip"};
    public static final Rect H = new Rect();

    /* loaded from: classes.dex */
    public static class Listener extends AnimatorListenerAdapter implements Transition.TransitionListener {

        /* renamed from: a, reason: collision with root package name */
        public final Rect f1673a;
        public final Rect b;

        /* renamed from: c, reason: collision with root package name */
        public final View f1674c;

        public Listener(View view, Rect rect, Rect rect2) {
            this.f1674c = view;
            this.f1673a = rect;
            this.b = rect2;
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void b() {
            View view = this.f1674c;
            Rect clipBounds = view.getClipBounds();
            if (clipBounds == null) {
                clipBounds = ChangeClipBounds.H;
            }
            view.setTag(R.id.transition_clip, clipBounds);
            view.setClipBounds(this.b);
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
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void g(Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public final void h() {
            int i = R.id.transition_clip;
            View view = this.f1674c;
            view.setClipBounds((Rect) view.getTag(i));
            view.setTag(R.id.transition_clip, null);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator) {
            onAnimationEnd(animator, false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public final void onAnimationEnd(Animator animator, boolean z) {
            View view = this.f1674c;
            if (!z) {
                view.setClipBounds(this.b);
            } else {
                view.setClipBounds(this.f1673a);
            }
        }
    }

    public static void O(TransitionValues transitionValues, boolean z) {
        Rect rect;
        View view = transitionValues.b;
        HashMap hashMap = transitionValues.f1712a;
        if (view.getVisibility() != 8) {
            Rect rect2 = null;
            if (z) {
                rect = (Rect) view.getTag(R.id.transition_clip);
            } else {
                rect = null;
            }
            if (rect == null) {
                rect = view.getClipBounds();
            }
            if (rect != H) {
                rect2 = rect;
            }
            hashMap.put("android:clipBounds:clip", rect2);
            if (rect2 == null) {
                hashMap.put("android:clipBounds:bounds", new Rect(0, 0, view.getWidth(), view.getHeight()));
            }
        }
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues, false);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues, true);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [android.animation.TypeEvaluator, java.lang.Object, androidx.transition.RectEvaluator] */
    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        Rect rect;
        Rect rect2;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                if (hashMap.containsKey("android:clipBounds:clip") && hashMap2.containsKey("android:clipBounds:clip")) {
                    Rect rect3 = (Rect) hashMap.get("android:clipBounds:clip");
                    Rect rect4 = (Rect) hashMap2.get("android:clipBounds:clip");
                    if (rect3 != null || rect4 != null) {
                        if (rect3 == null) {
                            rect = (Rect) hashMap.get("android:clipBounds:bounds");
                        } else {
                            rect = rect3;
                        }
                        if (rect4 == null) {
                            rect2 = (Rect) hashMap2.get("android:clipBounds:bounds");
                        } else {
                            rect2 = rect4;
                        }
                        if (!rect.equals(rect2)) {
                            transitionValues2.b.setClipBounds(rect3);
                            Rect rect5 = new Rect();
                            ?? obj = new Object();
                            obj.f1695a = rect5;
                            ObjectAnimator ofObject = ObjectAnimator.ofObject(transitionValues2.b, (Property<View, V>) ViewUtils.f1719c, (TypeEvaluator) obj, rect, rect2);
                            Listener listener = new Listener(transitionValues2.b, rect3, rect4);
                            ofObject.addListener(listener);
                            a(listener);
                            return ofObject;
                        }
                        return null;
                    }
                    return null;
                }
                return null;
            }
            return null;
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
