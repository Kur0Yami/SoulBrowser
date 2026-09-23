package com.google.android.material.navigationrail;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.HashMap;

/* loaded from: classes3.dex */
class LabelMoveTransition extends Transition {
    public static final /* synthetic */ int G = 0;

    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        transitionValues.f1712a.put("NavigationRailLabelVisibility", Integer.valueOf(transitionValues.b.getVisibility()));
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        transitionValues.f1712a.put("NavigationRailLabelVisibility", Integer.valueOf(transitionValues.b.getVisibility()));
    }

    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues != null) {
            HashMap hashMap = transitionValues.f1712a;
            if (transitionValues2 != null) {
                HashMap hashMap2 = transitionValues2.f1712a;
                if (hashMap.get("NavigationRailLabelVisibility") != null && hashMap2.get("NavigationRailLabelVisibility") != null && ((Integer) hashMap.get("NavigationRailLabelVisibility")).intValue() == 8 && ((Integer) hashMap2.get("NavigationRailLabelVisibility")).intValue() == 0) {
                    final View view = transitionValues2.b;
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.navigationrail.a
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            int i = LabelMoveTransition.G;
                            view.setTranslationX((1.0f - valueAnimator.getAnimatedFraction()) * (-30.0f));
                        }
                    });
                    return ofFloat;
                }
                return null;
            }
            return null;
        }
        return null;
    }
}
