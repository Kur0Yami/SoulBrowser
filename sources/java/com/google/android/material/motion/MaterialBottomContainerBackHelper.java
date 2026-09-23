package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;

@RestrictTo
/* loaded from: classes3.dex */
public class MaterialBottomContainerBackHelper extends MaterialBackAnimationHelper<View> {
    public final float g;
    public final float h;

    public MaterialBottomContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.h = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    public final AnimatorSet b() {
        AnimatorSet animatorSet = new AnimatorSet();
        View view = this.b;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new FastOutSlowInInterpolator());
        return animatorSet;
    }

    public final void c(BackEventCompat backEventCompat, Animator.AnimatorListener animatorListener) {
        View view = this.b;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getScaleY() * view.getHeight());
        ofFloat.setInterpolator(new FastOutSlowInInterpolator());
        ofFloat.setDuration(AnimationUtils.c(backEventCompat.f10c, this.f11830c, this.d));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialBottomContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MaterialBottomContainerBackHelper materialBottomContainerBackHelper = MaterialBottomContainerBackHelper.this;
                materialBottomContainerBackHelper.b.setTranslationY(0.0f);
                materialBottomContainerBackHelper.d(0.0f);
            }
        });
        ofFloat.addListener(animatorListener);
        ofFloat.start();
    }

    public final void d(float f) {
        float f2;
        float interpolation = this.f11829a.getInterpolation(f);
        View view = this.b;
        float width = view.getWidth();
        float height = view.getHeight();
        if (width > 0.0f && height > 0.0f) {
            float f3 = this.g / width;
            float f4 = this.h / height;
            float a2 = 1.0f - AnimationUtils.a(0.0f, f3, interpolation);
            float a3 = 1.0f - AnimationUtils.a(0.0f, f4, interpolation);
            if (!Float.isNaN(a2) && !Float.isNaN(a3)) {
                view.setScaleX(a2);
                view.setPivotY(height);
                view.setScaleY(a3);
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int i = 0; i < viewGroup.getChildCount(); i++) {
                        View childAt = viewGroup.getChildAt(i);
                        childAt.setPivotY(-childAt.getTop());
                        if (a3 != 0.0f) {
                            f2 = a2 / a3;
                        } else {
                            f2 = 1.0f;
                        }
                        childAt.setScaleY(f2);
                    }
                }
            }
        }
    }
}
