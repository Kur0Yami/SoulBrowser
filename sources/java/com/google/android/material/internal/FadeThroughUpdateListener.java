package com.google.android.material.internal;

import android.animation.ValueAnimator;
import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes3.dex */
public class FadeThroughUpdateListener implements ValueAnimator.AnimatorUpdateListener {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        Object[] objArr3 = 0;
        Object[] objArr4 = 0;
        if (floatValue <= 0.5f) {
            (objArr3 == true ? 1 : 0)[0] = 1.0f - (floatValue * 2.0f);
            (objArr2 == true ? 1 : 0)[1] = 0;
            throw null;
        }
        objArr[0] = 0;
        (objArr4 == true ? 1 : 0)[1] = (floatValue * 2.0f) - 1.0f;
        throw null;
    }
}
