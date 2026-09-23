package com.google.android.material.animation;

import android.graphics.drawable.Drawable;
import android.util.Property;

/* loaded from: classes3.dex */
public class DrawableAlphaProperty extends Property<Drawable, Integer> {
    static {
        new Property(Integer.class, "drawableAlphaCompat");
    }

    @Override // android.util.Property
    public final Integer get(Drawable drawable) {
        return Integer.valueOf(drawable.getAlpha());
    }

    @Override // android.util.Property
    public final void set(Drawable drawable, Integer num) {
        drawable.setAlpha(num.intValue());
    }
}
