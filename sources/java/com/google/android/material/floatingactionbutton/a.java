package com.google.android.material.floatingactionbutton;

import android.animation.ValueAnimator;
import android.graphics.Matrix;
import androidx.interpolator.view.animation.FastOutLinearInInterpolator;
import com.google.android.material.animation.AnimationUtils;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements ValueAnimator.AnimatorUpdateListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ FloatingActionButtonImpl f11802a;
    public final /* synthetic */ float b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ float f11803c;
    public final /* synthetic */ float d;
    public final /* synthetic */ float e;
    public final /* synthetic */ float f;
    public final /* synthetic */ float g;
    public final /* synthetic */ float h;
    public final /* synthetic */ Matrix i;

    public /* synthetic */ a(FloatingActionButtonImpl floatingActionButtonImpl, float f, float f2, float f3, float f4, float f5, float f6, float f7, Matrix matrix) {
        this.f11802a = floatingActionButtonImpl;
        this.b = f;
        this.f11803c = f2;
        this.d = f3;
        this.e = f4;
        this.f = f5;
        this.g = f6;
        this.h = f7;
        this.i = matrix;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
        FastOutLinearInInterpolator fastOutLinearInInterpolator = FloatingActionButtonImpl.q;
        AnimationUtils.b(this.b, this.f11803c, 0.0f, 0.2f, ((Float) valueAnimator.getAnimatedValue()).floatValue());
        throw null;
    }
}
