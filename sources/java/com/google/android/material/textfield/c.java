package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import com.google.android.material.internal.CheckableImageButton;

/* loaded from: classes3.dex */
public final /* synthetic */ class c implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11984a;
    public final /* synthetic */ EndIconDelegate b;

    public /* synthetic */ c(EndIconDelegate endIconDelegate, int i) {
        this.f11984a = i;
        this.b = endIconDelegate;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        switch (this.f11984a) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) this.b;
                clearTextEndIconDelegate.getClass();
                clearTextEndIconDelegate.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
            case 1:
                ClearTextEndIconDelegate clearTextEndIconDelegate2 = (ClearTextEndIconDelegate) this.b;
                clearTextEndIconDelegate2.getClass();
                float floatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
                CheckableImageButton checkableImageButton = clearTextEndIconDelegate2.d;
                checkableImageButton.setScaleX(floatValue);
                checkableImageButton.setScaleY(floatValue);
                return;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) this.b;
                dropdownMenuEndIconDelegate.getClass();
                dropdownMenuEndIconDelegate.d.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
                return;
        }
    }
}
