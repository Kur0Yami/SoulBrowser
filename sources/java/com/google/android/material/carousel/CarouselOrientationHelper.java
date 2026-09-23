package com.google.android.material.carousel;

import android.graphics.Rect;
import android.graphics.RectF;
import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class CarouselOrientationHelper {

    /* renamed from: a, reason: collision with root package name */
    public final int f11710a;

    public CarouselOrientationHelper(int i) {
        this.f11710a = i;
    }

    public abstract void a(RectF rectF, RectF rectF2, RectF rectF3);

    public abstract RectF b(float f, float f2, float f3, float f4);

    public abstract int c();

    public abstract int d();

    public abstract int e();

    public abstract int f();

    public abstract int g();

    public abstract void h(View view, int i, int i2);

    public abstract void i(RectF rectF, RectF rectF2, RectF rectF3);

    public abstract void j(View view, Rect rect, float f, float f2);
}
