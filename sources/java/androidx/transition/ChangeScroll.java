package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ChangeScroll extends Transition {
    public static final String[] G = {"android:changeScroll:x", "android:changeScroll:y"};

    public static void O(TransitionValues transitionValues) {
        HashMap hashMap = transitionValues.f1712a;
        hashMap.put("android:changeScroll:x", Integer.valueOf(transitionValues.b.getScrollX()));
        hashMap.put("android:changeScroll:y", Integer.valueOf(transitionValues.b.getScrollY()));
    }

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        O(transitionValues);
    }

    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator;
        ObjectAnimator objectAnimator2 = null;
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                View view = transitionValues2.b;
                int intValue = ((Integer) hashMap.get("android:changeScroll:x")).intValue();
                int intValue2 = ((Integer) hashMap2.get("android:changeScroll:x")).intValue();
                int intValue3 = ((Integer) hashMap.get("android:changeScroll:y")).intValue();
                int intValue4 = ((Integer) hashMap2.get("android:changeScroll:y")).intValue();
                if (intValue != intValue2) {
                    view.setScrollX(intValue);
                    objectAnimator = ObjectAnimator.ofInt(view, "scrollX", intValue, intValue2);
                } else {
                    objectAnimator = null;
                }
                if (intValue3 != intValue4) {
                    view.setScrollY(intValue3);
                    objectAnimator2 = ObjectAnimator.ofInt(view, "scrollY", intValue3, intValue4);
                }
                boolean z = TransitionUtils.f1709a;
                if (objectAnimator == null) {
                    return objectAnimator2;
                }
                if (objectAnimator2 == null) {
                    return objectAnimator;
                }
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(objectAnimator, objectAnimator2);
                return animatorSet;
            }
        }
        return null;
    }

    @Override // androidx.transition.Transition
    public final String[] s() {
        return G;
    }
}
