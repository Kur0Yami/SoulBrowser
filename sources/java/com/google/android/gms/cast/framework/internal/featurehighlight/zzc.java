package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.graphics.Rect;
import android.view.View;
import com.google.android.gms.internal.cast.zzgy;
import kotlin.KotlinVersion;

/* loaded from: classes.dex */
final class zzc implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzh f3487a;

    public zzc(zzh zzhVar) {
        this.f3487a = zzhVar;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        zzh zzhVar = this.f3487a;
        if (zzhVar.j != null) {
            zzhVar.setVisibility(0);
            ObjectAnimator duration = ObjectAnimator.ofFloat(zzhVar.q.asView(), "alpha", 0.0f, 1.0f).setDuration(350L);
            duration.setInterpolator(zzgy.a());
            Rect rect = zzhVar.f;
            OuterHighlightDrawable outerHighlightDrawable = zzhVar.h;
            float exactCenterX = rect.exactCenterX() - outerHighlightDrawable.i;
            float exactCenterY = rect.exactCenterY() - outerHighlightDrawable.j;
            InnerZoneDrawable innerZoneDrawable = zzhVar.i;
            ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(outerHighlightDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f, 1.0f), PropertyValuesHolder.ofFloat("translationX", exactCenterX, 0.0f), PropertyValuesHolder.ofFloat("translationY", exactCenterY, 0.0f), PropertyValuesHolder.ofInt("alpha", 0, outerHighlightDrawable.m));
            ofPropertyValuesHolder.setInterpolator(zzgy.a());
            Animator duration2 = ofPropertyValuesHolder.setDuration(350L);
            ObjectAnimator ofPropertyValuesHolder2 = ObjectAnimator.ofPropertyValuesHolder(innerZoneDrawable, PropertyValuesHolder.ofFloat("scale", 0.0f, 1.0f), PropertyValuesHolder.ofInt("alpha", 0, KotlinVersion.MAX_COMPONENT_VALUE));
            ofPropertyValuesHolder2.setInterpolator(zzgy.a());
            Animator duration3 = ofPropertyValuesHolder2.setDuration(350L);
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.playTogether(duration, duration2, duration3);
            animatorSet.addListener(new zzd(zzhVar));
            AnimatorSet animatorSet2 = zzhVar.k;
            if (animatorSet2 != null) {
                animatorSet2.cancel();
            }
            zzhVar.k = animatorSet;
            animatorSet.start();
            zzhVar.removeOnLayoutChangeListener(this);
            return;
        }
        throw new IllegalStateException("Target view must be set before animation");
    }
}
