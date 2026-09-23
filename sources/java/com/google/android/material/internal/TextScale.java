package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.RestrictTo;
import androidx.transition.Transition;
import androidx.transition.TransitionValues;
import java.util.HashMap;

@RestrictTo
/* loaded from: classes3.dex */
public class TextScale extends Transition {
    @Override // androidx.transition.Transition
    public final void e(TransitionValues transitionValues) {
        View view = transitionValues.b;
        if (view instanceof TextView) {
            transitionValues.f1712a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public final void h(TransitionValues transitionValues) {
        View view = transitionValues.b;
        if (view instanceof TextView) {
            transitionValues.f1712a.put("android:textscale:scale", Float.valueOf(((TextView) view).getScaleX()));
        }
    }

    @Override // androidx.transition.Transition
    public final Animator l(ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        if (transitionValues != null && transitionValues2 != null && (transitionValues.b instanceof TextView)) {
            View view = transitionValues2.b;
            if (view instanceof TextView) {
                final TextView textView = (TextView) view;
                HashMap hashMap = transitionValues.f1712a;
                HashMap hashMap2 = transitionValues2.f1712a;
                float f2 = 1.0f;
                if (hashMap.get("android:textscale:scale") != null) {
                    f = ((Float) hashMap.get("android:textscale:scale")).floatValue();
                } else {
                    f = 1.0f;
                }
                if (hashMap2.get("android:textscale:scale") != null) {
                    f2 = ((Float) hashMap2.get("android:textscale:scale")).floatValue();
                }
                if (f != f2) {
                    ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
                    ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.internal.TextScale.1
                        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                            float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                            TextView textView2 = textView;
                            textView2.setScaleX(floatValue);
                            textView2.setScaleY(floatValue);
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
