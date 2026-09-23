package com.google.android.material.shape;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;

/* loaded from: classes3.dex */
public class ShapeAppearanceModel {

    /* renamed from: a, reason: collision with root package name */
    public CornerTreatment f11887a = new Object();
    public CornerTreatment b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public CornerTreatment f11888c = new Object();
    public CornerTreatment d = new Object();
    public CornerSize e = new AbsoluteCornerSize(0.0f);
    public CornerSize f = new AbsoluteCornerSize(0.0f);
    public CornerSize g = new AbsoluteCornerSize(0.0f);
    public CornerSize h = new AbsoluteCornerSize(0.0f);
    public EdgeTreatment i = new Object();
    public EdgeTreatment j = new Object();
    public EdgeTreatment k = new Object();
    public EdgeTreatment l = new Object();

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public CornerTreatment f11889a = new Object();
        public CornerTreatment b = new Object();

        /* renamed from: c, reason: collision with root package name */
        public CornerTreatment f11890c = new Object();
        public CornerTreatment d = new Object();
        public CornerSize e = new AbsoluteCornerSize(0.0f);
        public CornerSize f = new AbsoluteCornerSize(0.0f);
        public CornerSize g = new AbsoluteCornerSize(0.0f);
        public CornerSize h = new AbsoluteCornerSize(0.0f);
        public EdgeTreatment i = new Object();
        public EdgeTreatment j = new Object();
        public EdgeTreatment k = new Object();
        public EdgeTreatment l = new Object();

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.shape.ShapeAppearanceModel] */
        public final ShapeAppearanceModel a() {
            ?? obj = new Object();
            obj.f11887a = this.f11889a;
            obj.b = this.b;
            obj.f11888c = this.f11890c;
            obj.d = this.d;
            obj.e = this.e;
            obj.f = this.f;
            obj.g = this.g;
            obj.h = this.h;
            obj.i = this.i;
            obj.j = this.j;
            obj.k = this.k;
            obj.l = this.l;
            return obj;
        }

        public final void b(float f) {
            this.h = new AbsoluteCornerSize(f);
        }

        public final void c(float f) {
            this.g = new AbsoluteCornerSize(f);
        }

        public final void d(float f) {
            this.e = new AbsoluteCornerSize(f);
        }

        public final void e(float f) {
            this.f = new AbsoluteCornerSize(f);
        }
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public interface CornerSizeUnaryOperator {
        CornerSize a(CornerSize cornerSize);
    }

    public static Builder a(Context context, int i, int i2) {
        return b(context, i, i2, new AbsoluteCornerSize(0));
    }

    public static Builder b(Context context, int i, int i2, AbsoluteCornerSize absoluteCornerSize) {
        ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i);
        if (i2 != 0) {
            contextThemeWrapper.getTheme().applyStyle(i2, true);
        }
        TypedArray obtainStyledAttributes = contextThemeWrapper.obtainStyledAttributes(R.styleable.ShapeAppearance);
        try {
            int i3 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamily, 0);
            int i4 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopLeft, i3);
            int i5 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyTopRight, i3);
            int i6 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomRight, i3);
            int i7 = obtainStyledAttributes.getInt(R.styleable.ShapeAppearance_cornerFamilyBottomLeft, i3);
            CornerSize d = d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, absoluteCornerSize);
            CornerSize d2 = d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopLeft, d);
            CornerSize d3 = d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeTopRight, d);
            CornerSize d4 = d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomRight, d);
            CornerSize d5 = d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSizeBottomLeft, d);
            Builder builder = new Builder();
            builder.f11889a = MaterialShapeUtils.a(i4);
            builder.e = d2;
            builder.b = MaterialShapeUtils.a(i5);
            builder.f = d3;
            builder.f11890c = MaterialShapeUtils.a(i6);
            builder.g = d4;
            builder.d = MaterialShapeUtils.a(i7);
            builder.h = d5;
            return builder;
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static Builder c(Context context, AttributeSet attributeSet, int i, int i2) {
        AbsoluteCornerSize absoluteCornerSize = new AbsoluteCornerSize(0);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, i, i2);
        int resourceId = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0);
        int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0);
        obtainStyledAttributes.recycle();
        return b(context, resourceId, resourceId2, absoluteCornerSize);
    }

    public static CornerSize d(TypedArray typedArray, int i, CornerSize cornerSize) {
        TypedValue peekValue = typedArray.peekValue(i);
        if (peekValue != null) {
            int i2 = peekValue.type;
            if (i2 == 5) {
                return new AbsoluteCornerSize(TypedValue.complexToDimensionPixelSize(peekValue.data, typedArray.getResources().getDisplayMetrics()));
            }
            if (i2 == 6) {
                return new RelativeCornerSize(peekValue.getFraction(1.0f, 1.0f));
            }
        }
        return cornerSize;
    }

    public final boolean e() {
        if ((this.b instanceof RoundedCornerTreatment) && (this.f11887a instanceof RoundedCornerTreatment) && (this.f11888c instanceof RoundedCornerTreatment) && (this.d instanceof RoundedCornerTreatment)) {
            return true;
        }
        return false;
    }

    public final boolean f(RectF rectF) {
        boolean z;
        boolean z2;
        if (this.l.getClass().equals(EdgeTreatment.class) && this.j.getClass().equals(EdgeTreatment.class) && this.i.getClass().equals(EdgeTreatment.class) && this.k.getClass().equals(EdgeTreatment.class)) {
            z = true;
        } else {
            z = false;
        }
        float a2 = this.e.a(rectF);
        if (this.f.a(rectF) == a2 && this.h.a(rectF) == a2 && this.g.a(rectF) == a2) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z || !z2 || !e()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.material.shape.ShapeAppearanceModel$Builder] */
    public final Builder g() {
        ?? obj = new Object();
        obj.f11889a = this.f11887a;
        obj.b = this.b;
        obj.f11890c = this.f11888c;
        obj.d = this.d;
        obj.e = this.e;
        obj.f = this.f;
        obj.g = this.g;
        obj.h = this.h;
        obj.i = this.i;
        obj.j = this.j;
        obj.k = this.k;
        obj.l = this.l;
        return obj;
    }

    public final ShapeAppearanceModel h(CornerSizeUnaryOperator cornerSizeUnaryOperator) {
        Builder g = g();
        g.e = cornerSizeUnaryOperator.a(this.e);
        g.f = cornerSizeUnaryOperator.a(this.f);
        g.h = cornerSizeUnaryOperator.a(this.h);
        g.g = cornerSizeUnaryOperator.a(this.g);
        return g.a();
    }

    public final String toString() {
        return "[" + this.e + ", " + this.f + ", " + this.g + ", " + this.h + "]";
    }
}
