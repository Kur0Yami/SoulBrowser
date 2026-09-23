package com.google.android.material.motion;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.BackEventCompat;
import androidx.annotation.RestrictTo;
import androidx.interpolator.view.animation.FastOutSlowInInterpolator;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.sidesheet.c;

@RestrictTo
/* loaded from: classes3.dex */
public class MaterialSideContainerBackHelper extends MaterialBackAnimationHelper<View> {
    public final float g;
    public final float h;
    public final float i;

    public MaterialSideContainerBackHelper(View view) {
        super(view);
        Resources resources = view.getResources();
        this.g = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.h = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.i = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    public final void b(BackEventCompat backEventCompat, final int i, Animator.AnimatorListener animatorListener, c cVar) {
        final boolean z;
        boolean z2;
        int i2;
        if (backEventCompat.d == 0) {
            z = true;
        } else {
            z = false;
        }
        View view = this.b;
        if ((Gravity.getAbsoluteGravity(i, view.getLayoutDirection()) & 3) == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        float scaleX = view.getScaleX() * view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            if (z2) {
                i2 = marginLayoutParams.leftMargin;
            } else {
                i2 = marginLayoutParams.rightMargin;
            }
        } else {
            i2 = 0;
        }
        float f = scaleX + i2;
        Property property = View.TRANSLATION_X;
        if (z2) {
            f = -f;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f);
        if (cVar != null) {
            ofFloat.addUpdateListener(cVar);
        }
        ofFloat.setInterpolator(new FastOutSlowInInterpolator());
        ofFloat.setDuration(AnimationUtils.c(backEventCompat.f10c, this.f11830c, this.d));
        ofFloat.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.motion.MaterialSideContainerBackHelper.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                MaterialSideContainerBackHelper materialSideContainerBackHelper = MaterialSideContainerBackHelper.this;
                materialSideContainerBackHelper.b.setTranslationX(0.0f);
                materialSideContainerBackHelper.c(0.0f, i, z);
            }
        });
        ofFloat.addListener(animatorListener);
        ofFloat.start();
    }

    public final void c(float f, int i, boolean z) {
        boolean z2;
        float f2;
        float f3;
        float f4;
        float interpolation = this.f11829a.getInterpolation(f);
        View view = this.b;
        boolean z3 = true;
        if ((Gravity.getAbsoluteGravity(i, view.getLayoutDirection()) & 3) == 3) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z != z2) {
            z3 = false;
        }
        int width = view.getWidth();
        int height = view.getHeight();
        float f5 = width;
        if (f5 > 0.0f) {
            float f6 = height;
            if (f6 > 0.0f) {
                float f7 = this.g / f5;
                float f8 = this.h / f5;
                float f9 = this.i / f6;
                if (z2) {
                    f5 = 0.0f;
                }
                view.setPivotX(f5);
                if (!z3) {
                    f8 = -f7;
                }
                float a2 = AnimationUtils.a(0.0f, f8, interpolation);
                float f10 = a2 + 1.0f;
                float a3 = 1.0f - AnimationUtils.a(0.0f, f9, interpolation);
                if (!Float.isNaN(f10) && !Float.isNaN(a3)) {
                    view.setScaleX(f10);
                    view.setScaleY(a3);
                    if (view instanceof ViewGroup) {
                        ViewGroup viewGroup = (ViewGroup) view;
                        for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                            View childAt = viewGroup.getChildAt(i2);
                            if (z2) {
                                f2 = childAt.getWidth() + (width - childAt.getRight());
                            } else {
                                f2 = -childAt.getLeft();
                            }
                            childAt.setPivotX(f2);
                            childAt.setPivotY(-childAt.getTop());
                            if (z3) {
                                f3 = 1.0f - a2;
                            } else {
                                f3 = 1.0f;
                            }
                            if (a3 != 0.0f) {
                                f4 = (f10 / a3) * f3;
                            } else {
                                f4 = 1.0f;
                            }
                            if (!Float.isNaN(f3) && !Float.isNaN(f4)) {
                                childAt.setScaleX(f3);
                                childAt.setScaleY(f4);
                            }
                        }
                    }
                }
            }
        }
    }
}
