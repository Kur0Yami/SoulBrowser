package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.math.MathUtils;

/* loaded from: classes3.dex */
public interface CircularRevealWidget extends CircularRevealHelper.Delegate {

    /* loaded from: classes3.dex */
    public static class CircularRevealEvaluator implements TypeEvaluator<RevealInfo> {

        /* renamed from: a, reason: collision with root package name */
        public final RevealInfo f11729a = new Object();

        static {
            new CircularRevealEvaluator();
        }

        @Override // android.animation.TypeEvaluator
        public final RevealInfo evaluate(float f, RevealInfo revealInfo, RevealInfo revealInfo2) {
            RevealInfo revealInfo3 = revealInfo;
            RevealInfo revealInfo4 = revealInfo2;
            float a2 = MathUtils.a(revealInfo3.f11730a, revealInfo4.f11730a, f);
            float a3 = MathUtils.a(revealInfo3.b, revealInfo4.b, f);
            float a4 = MathUtils.a(revealInfo3.f11731c, revealInfo4.f11731c, f);
            RevealInfo revealInfo5 = this.f11729a;
            revealInfo5.f11730a = a2;
            revealInfo5.b = a3;
            revealInfo5.f11731c = a4;
            return revealInfo5;
        }
    }

    /* loaded from: classes3.dex */
    public static class CircularRevealProperty extends Property<CircularRevealWidget, RevealInfo> {
        static {
            new Property(RevealInfo.class, "circularReveal");
        }

        @Override // android.util.Property
        public final RevealInfo get(CircularRevealWidget circularRevealWidget) {
            return circularRevealWidget.getRevealInfo();
        }

        @Override // android.util.Property
        public final void set(CircularRevealWidget circularRevealWidget, RevealInfo revealInfo) {
            circularRevealWidget.setRevealInfo(revealInfo);
        }
    }

    /* loaded from: classes3.dex */
    public static class CircularRevealScrimColorProperty extends Property<CircularRevealWidget, Integer> {
        static {
            new Property(Integer.class, "circularRevealScrimColor");
        }

        @Override // android.util.Property
        public final Integer get(CircularRevealWidget circularRevealWidget) {
            return Integer.valueOf(circularRevealWidget.getCircularRevealScrimColor());
        }

        @Override // android.util.Property
        public final void set(CircularRevealWidget circularRevealWidget, Integer num) {
            circularRevealWidget.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* loaded from: classes3.dex */
    public static class RevealInfo {

        /* renamed from: a, reason: collision with root package name */
        public float f11730a;
        public float b;

        /* renamed from: c, reason: collision with root package name */
        public float f11731c;
    }

    int getCircularRevealScrimColor();

    RevealInfo getRevealInfo();

    void setCircularRevealOverlayDrawable(Drawable drawable);

    void setCircularRevealScrimColor(int i);

    void setRevealInfo(RevealInfo revealInfo);
}
