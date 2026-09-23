package com.google.android.material.shape;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import com.google.android.material.elevation.ElevationOverlayProvider;
import com.google.android.material.shadow.ShadowRenderer;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import com.google.android.material.shape.ShapePath;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.BitSet;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class MaterialShapeDrawable extends Drawable implements TintAwareDrawable, Shapeable {
    public static final Paint J;
    public static final SpringAnimatedCornerSizeProperty[] K;
    public final RectF A;
    public boolean B;
    public boolean C;
    public ShapeAppearanceModel D;
    public SpringForce E;
    public final SpringAnimation[] F;
    public float[] G;
    public float[] H;
    public OnCornerSizeChangeListener I;

    /* renamed from: c, reason: collision with root package name */
    public final ShapeAppearanceModel.CornerSizeUnaryOperator f11877c;
    public MaterialShapeDrawableState f;
    public final ShapePath.ShadowCompatOperation[] g;
    public final ShapePath.ShadowCompatOperation[] h;
    public final BitSet i;
    public boolean j;
    public boolean k;
    public final Matrix l;
    public final Path m;
    public final Path n;
    public final RectF o;
    public final RectF p;
    public final Region q;
    public final Region r;
    public final Paint s;
    public final Paint t;
    public final ShadowRenderer u;
    public final ShapeAppearancePathProvider.PathListener v;
    public final ShapeAppearancePathProvider w;
    public PorterDuffColorFilter x;
    public PorterDuffColorFilter y;
    public int z;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface CompatibilityShadowMode {
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public interface OnCornerSizeChangeListener {
        void b(float f);
    }

    /* loaded from: classes3.dex */
    public static class SpringAnimatedCornerSizeProperty extends FloatPropertyCompat<MaterialShapeDrawable> {

        /* renamed from: a, reason: collision with root package name */
        public final int f11882a;

        public SpringAnimatedCornerSizeProperty(int i) {
            this.f11882a = i;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            float[] fArr = ((MaterialShapeDrawable) shapeable).G;
            if (fArr != null) {
                return fArr[this.f11882a];
            }
            return 0.0f;
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) shapeable;
            float[] fArr = materialShapeDrawable.G;
            if (fArr != null) {
                int i = this.f11882a;
                if (fArr[i] != f) {
                    fArr[i] = f;
                    OnCornerSizeChangeListener onCornerSizeChangeListener = materialShapeDrawable.I;
                    if (onCornerSizeChangeListener != null) {
                        onCornerSizeChangeListener.b(materialShapeDrawable.i());
                    }
                    materialShapeDrawable.invalidateSelf();
                }
            }
        }
    }

    static {
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        int i = 0;
        CornerTreatment a2 = MaterialShapeUtils.a(0);
        builder.f11889a = a2;
        builder.b = a2;
        builder.f11890c = a2;
        builder.d = a2;
        builder.d(0.0f);
        builder.e(0.0f);
        builder.c(0.0f);
        builder.b(0.0f);
        builder.a();
        Paint paint = new Paint(1);
        J = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        K = new SpringAnimatedCornerSizeProperty[4];
        while (true) {
            SpringAnimatedCornerSizeProperty[] springAnimatedCornerSizePropertyArr = K;
            if (i < springAnimatedCornerSizePropertyArr.length) {
                springAnimatedCornerSizePropertyArr[i] = new SpringAnimatedCornerSizeProperty(i);
                i++;
            } else {
                return;
            }
        }
    }

    public MaterialShapeDrawable() {
        this(new ShapeAppearanceModel());
    }

    public static float c(RectF rectF, ShapeAppearanceModel shapeAppearanceModel, float[] fArr) {
        if (fArr == null) {
            if (shapeAppearanceModel.f(rectF)) {
                return shapeAppearanceModel.e.a(rectF);
            }
            return -1.0f;
        }
        if (fArr.length > 1) {
            float f = fArr[0];
            for (int i = 1; i < fArr.length; i++) {
                if (fArr[i] != f) {
                    return -1.0f;
                }
            }
        }
        if (shapeAppearanceModel.e()) {
            return fArr[0];
        }
        return -1.0f;
    }

    public void a() {
        invalidateSelf();
    }

    public final void b(RectF rectF, Path path) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        this.w.a(materialShapeDrawableState.f11880a, this.G, materialShapeDrawableState.j, rectF, this.v, path);
        if (this.f.i != 1.0f) {
            Matrix matrix = this.l;
            matrix.reset();
            float f = this.f.i;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(matrix);
        }
        path.computeBounds(this.A, true);
    }

    public final int d(int i) {
        float f;
        int i2;
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        float f2 = materialShapeDrawableState.n + 0.0f + materialShapeDrawableState.m;
        ElevationOverlayProvider elevationOverlayProvider = materialShapeDrawableState.f11881c;
        if (elevationOverlayProvider != null && elevationOverlayProvider.f11789a && ColorUtils.l(i, KotlinVersion.MAX_COMPONENT_VALUE) == elevationOverlayProvider.d) {
            if (elevationOverlayProvider.e > 0.0f && f2 > 0.0f) {
                f = Math.min(((((float) Math.log1p(f2 / r4)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
            } else {
                f = 0.0f;
            }
            int alpha = Color.alpha(i);
            int g = MaterialColors.g(f, ColorUtils.l(i, KotlinVersion.MAX_COMPONENT_VALUE), elevationOverlayProvider.b);
            if (f > 0.0f && (i2 = elevationOverlayProvider.f11790c) != 0) {
                g = ColorUtils.i(ColorUtils.l(i2, ElevationOverlayProvider.f), g);
            }
            return ColorUtils.l(g, alpha);
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:50:0x0097, code lost:
    
        if (r19.f.f11880a.e() != false) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00a5, code lost:
    
        if (android.os.Build.VERSION.SDK_INT < 29) goto L38;
     */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r20) {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.shape.MaterialShapeDrawable.draw(android.graphics.Canvas):void");
    }

    public final void e(Canvas canvas) {
        if (this.i.cardinality() > 0) {
            Log.w("MaterialShapeDrawable", "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        int i = this.f.q;
        Path path = this.m;
        ShadowRenderer shadowRenderer = this.u;
        if (i != 0) {
            canvas.drawPath(path, shadowRenderer.f11872a);
        }
        for (int i2 = 0; i2 < 4; i2++) {
            ShapePath.ShadowCompatOperation shadowCompatOperation = this.g[i2];
            int i3 = this.f.p;
            Matrix matrix = ShapePath.ShadowCompatOperation.b;
            shadowCompatOperation.a(matrix, shadowRenderer, i3, canvas);
            this.h[i2].a(matrix, shadowRenderer, this.f.p, canvas);
        }
        if (this.B) {
            double d = 0;
            int sin = (int) (Math.sin(Math.toRadians(d)) * this.f.q);
            int cos = (int) (Math.cos(Math.toRadians(d)) * this.f.q);
            canvas.translate(-sin, -cos);
            canvas.drawPath(path, J);
            canvas.translate(sin, cos);
        }
    }

    public final void f(Canvas canvas, Paint paint, Path path, ShapeAppearanceModel shapeAppearanceModel, float[] fArr, RectF rectF) {
        float c2 = c(rectF, shapeAppearanceModel, fArr);
        if (c2 >= 0.0f) {
            float f = c2 * this.f.j;
            canvas.drawRoundRect(rectF, f, f, paint);
        } else {
            canvas.drawPath(path, paint);
        }
    }

    public void g(Canvas canvas) {
        ShapeAppearanceModel shapeAppearanceModel = this.D;
        float[] fArr = this.H;
        RectF h = h();
        RectF rectF = this.p;
        rectF.set(h);
        float j = j();
        rectF.inset(j, j);
        f(canvas, this.t, this.n, shapeAppearanceModel, fArr, rectF);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f.l;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f.o != 2) {
            RectF h = h();
            if (h.isEmpty()) {
                return;
            }
            float c2 = c(h, this.f.f11880a, this.G);
            if (c2 >= 0.0f) {
                outline.setRoundRect(getBounds(), c2 * this.f.j);
                return;
            }
            boolean z = this.j;
            Path path = this.m;
            if (z) {
                b(h, path);
                this.j = false;
            }
            DrawableUtils.e(outline, path);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean getPadding(Rect rect) {
        Rect rect2 = this.f.h;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // com.google.android.material.shape.Shapeable
    public final ShapeAppearanceModel getShapeAppearanceModel() {
        return this.f.f11880a;
    }

    @Override // android.graphics.drawable.Drawable
    public final Region getTransparentRegion() {
        Rect bounds = getBounds();
        Region region = this.q;
        region.set(bounds);
        RectF h = h();
        Path path = this.m;
        b(h, path);
        Region region2 = this.r;
        region2.setPath(path, region);
        region.op(region2, Region.Op.DIFFERENCE);
        return region;
    }

    public final RectF h() {
        Rect bounds = getBounds();
        RectF rectF = this.o;
        rectF.set(bounds);
        return rectF;
    }

    public final float i() {
        float[] fArr = this.G;
        if (fArr != null) {
            return (((fArr[3] + fArr[2]) - fArr[1]) - fArr[0]) / 2.0f;
        }
        RectF h = h();
        ShapeAppearanceModel shapeAppearanceModel = this.f.f11880a;
        ShapeAppearancePathProvider shapeAppearancePathProvider = this.w;
        shapeAppearancePathProvider.getClass();
        float a2 = shapeAppearanceModel.e.a(h);
        ShapeAppearanceModel shapeAppearanceModel2 = this.f.f11880a;
        shapeAppearancePathProvider.getClass();
        float a3 = shapeAppearanceModel2.h.a(h) + a2;
        ShapeAppearanceModel shapeAppearanceModel3 = this.f.f11880a;
        shapeAppearancePathProvider.getClass();
        float a4 = a3 - shapeAppearanceModel3.g.a(h);
        ShapeAppearanceModel shapeAppearanceModel4 = this.f.f11880a;
        shapeAppearancePathProvider.getClass();
        return (a4 - shapeAppearanceModel4.f.a(h)) / 2.0f;
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        this.j = true;
        this.k = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!super.isStateful()) {
            ColorStateList colorStateList = this.f.f;
            if (colorStateList == null || !colorStateList.isStateful()) {
                this.f.getClass();
                ColorStateList colorStateList2 = this.f.e;
                if (colorStateList2 == null || !colorStateList2.isStateful()) {
                    ColorStateList colorStateList3 = this.f.d;
                    if (colorStateList3 == null || !colorStateList3.isStateful()) {
                        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f.b;
                        if (stateListShapeAppearanceModel == null || !stateListShapeAppearanceModel.d()) {
                            return false;
                        }
                        return true;
                    }
                    return true;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final float j() {
        if (k()) {
            return this.t.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    public final boolean k() {
        Paint.Style style = this.f.r;
        if ((style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.t.getStrokeWidth() > 0.0f) {
            return true;
        }
        return false;
    }

    public final void l(Context context) {
        this.f.f11881c = new ElevationOverlayProvider(context);
        v();
    }

    public final void m(SpringForce springForce) {
        if (this.E != springForce) {
            this.E = springForce;
            int i = 0;
            while (true) {
                SpringAnimation[] springAnimationArr = this.F;
                if (i < springAnimationArr.length) {
                    if (springAnimationArr[i] == null) {
                        springAnimationArr[i] = new SpringAnimation(this, K[i]);
                    }
                    SpringAnimation springAnimation = springAnimationArr[i];
                    SpringForce springForce2 = new SpringForce();
                    springForce2.a((float) springForce.b);
                    double d = springForce.f993a;
                    springForce2.b((float) (d * d));
                    springAnimation.r = springForce2;
                    i++;
                } else {
                    t(getState(), true);
                    invalidateSelf();
                    return;
                }
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f = new MaterialShapeDrawableState(this.f);
        return this;
    }

    public final void n(float f) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.n != f) {
            materialShapeDrawableState.n = f;
            v();
        }
    }

    public final void o(ColorStateList colorStateList) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.d != colorStateList) {
            materialShapeDrawableState.d = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.j = true;
        this.k = true;
        super.onBoundsChange(rect);
        if (this.f.b != null && !rect.isEmpty()) {
            t(getState(), this.C);
        }
        this.C = rect.isEmpty();
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        boolean z = false;
        if (this.f.b != null) {
            t(iArr, false);
        }
        boolean s = s(iArr);
        boolean u = u();
        if (s || u) {
            z = true;
        }
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    public final void p() {
        this.u.c(-7829368);
        this.f.getClass();
        super.invalidateSelf();
    }

    public final void q() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.o != 2) {
            materialShapeDrawableState.o = 2;
            super.invalidateSelf();
        }
    }

    public final void r(StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.b != stateListShapeAppearanceModel) {
            materialShapeDrawableState.b = stateListShapeAppearanceModel;
            t(getState(), true);
            invalidateSelf();
        }
    }

    public final boolean s(int[] iArr) {
        boolean z;
        Paint paint;
        int color;
        int colorForState;
        Paint paint2;
        int color2;
        int colorForState2;
        if (this.f.d != null && color2 != (colorForState2 = this.f.d.getColorForState(iArr, (color2 = (paint2 = this.s).getColor())))) {
            paint2.setColor(colorForState2);
            z = true;
        } else {
            z = false;
        }
        if (this.f.e != null && color != (colorForState = this.f.e.getColorForState(iArr, (color = (paint = this.t).getColor())))) {
            paint.setColor(colorForState);
            return true;
        }
        return z;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.l != i) {
            materialShapeDrawableState.l = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f.getClass();
        super.invalidateSelf();
    }

    @Override // com.google.android.material.shape.Shapeable
    public final void setShapeAppearanceModel(ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        materialShapeDrawableState.f11880a = shapeAppearanceModel;
        materialShapeDrawableState.b = null;
        this.G = null;
        this.H = null;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f.f = colorStateList;
        u();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        if (materialShapeDrawableState.g != mode) {
            materialShapeDrawableState.g = mode;
            u();
            super.invalidateSelf();
        }
    }

    public final void t(int[] iArr, boolean z) {
        boolean z2;
        ShapeAppearanceModel a2;
        CornerSize cornerSize;
        int i;
        RectF h = h();
        if (this.f.b != null && !h.isEmpty()) {
            if (this.E == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            boolean z3 = z | z2;
            if (this.G == null) {
                this.G = new float[4];
            }
            StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f.b;
            ShapeAppearanceModel[] shapeAppearanceModelArr = stateListShapeAppearanceModel.d;
            int i2 = stateListShapeAppearanceModel.f11908a;
            int[][] iArr2 = stateListShapeAppearanceModel.f11909c;
            StateListCornerSize stateListCornerSize = stateListShapeAppearanceModel.h;
            StateListCornerSize stateListCornerSize2 = stateListShapeAppearanceModel.g;
            StateListCornerSize stateListCornerSize3 = stateListShapeAppearanceModel.f;
            StateListCornerSize stateListCornerSize4 = stateListShapeAppearanceModel.e;
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                        break;
                    } else {
                        i3++;
                    }
                } else {
                    i3 = -1;
                    break;
                }
            }
            if (i3 < 0) {
                int[] iArr3 = StateSet.WILD_CARD;
                int i4 = 0;
                while (true) {
                    if (i4 < i2) {
                        if (StateSet.stateSetMatches(iArr2[i4], iArr3)) {
                            i = i4;
                            break;
                        }
                        i4++;
                    } else {
                        i = -1;
                        break;
                    }
                }
                i3 = i;
            }
            if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
                a2 = shapeAppearanceModelArr[i3];
            } else {
                ShapeAppearanceModel.Builder g = shapeAppearanceModelArr[i3].g();
                if (stateListCornerSize4 != null) {
                    g.e = stateListCornerSize4.c(iArr);
                }
                if (stateListCornerSize3 != null) {
                    g.f = stateListCornerSize3.c(iArr);
                }
                if (stateListCornerSize2 != null) {
                    g.h = stateListCornerSize2.c(iArr);
                }
                if (stateListCornerSize != null) {
                    g.g = stateListCornerSize.c(iArr);
                }
                a2 = g.a();
            }
            for (int i5 = 0; i5 < 4; i5++) {
                this.w.getClass();
                if (i5 != 1) {
                    if (i5 != 2) {
                        if (i5 != 3) {
                            cornerSize = a2.f;
                        } else {
                            cornerSize = a2.e;
                        }
                    } else {
                        cornerSize = a2.h;
                    }
                } else {
                    cornerSize = a2.g;
                }
                float a3 = cornerSize.a(h);
                if (z3) {
                    this.G[i5] = a3;
                }
                SpringAnimation[] springAnimationArr = this.F;
                SpringAnimation springAnimation = springAnimationArr[i5];
                if (springAnimation != null) {
                    springAnimation.e(a3);
                    if (z3) {
                        springAnimationArr[i5].f();
                    }
                }
            }
            if (z3) {
                invalidateSelf();
            }
        }
    }

    public final boolean u() {
        PorterDuffColorFilter porterDuffColorFilter;
        PorterDuffColorFilter porterDuffColorFilter2 = this.x;
        PorterDuffColorFilter porterDuffColorFilter3 = this.y;
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        ColorStateList colorStateList = materialShapeDrawableState.f;
        PorterDuff.Mode mode = materialShapeDrawableState.g;
        if (colorStateList != null && mode != null) {
            int d = d(colorStateList.getColorForState(getState(), 0));
            this.z = d;
            porterDuffColorFilter = new PorterDuffColorFilter(d, mode);
        } else {
            int color = this.s.getColor();
            int d2 = d(color);
            this.z = d2;
            if (d2 != color) {
                porterDuffColorFilter = new PorterDuffColorFilter(d2, PorterDuff.Mode.SRC_IN);
            } else {
                porterDuffColorFilter = null;
            }
        }
        this.x = porterDuffColorFilter;
        this.f.getClass();
        this.y = null;
        this.f.getClass();
        if (!Objects.equals(porterDuffColorFilter2, this.x) || !Objects.equals(porterDuffColorFilter3, this.y)) {
            return true;
        }
        return false;
    }

    public final void v() {
        MaterialShapeDrawableState materialShapeDrawableState = this.f;
        float f = materialShapeDrawableState.n + 0.0f;
        materialShapeDrawableState.p = (int) Math.ceil(0.75f * f);
        this.f.q = (int) Math.ceil(f * 0.25f);
        u();
        super.invalidateSelf();
    }

    public MaterialShapeDrawable(Context context, AttributeSet attributeSet, int i, int i2) {
        this(ShapeAppearanceModel.c(context, attributeSet, i, i2).a());
    }

    public MaterialShapeDrawable(ShapeAppearanceModel shapeAppearanceModel) {
        this(new MaterialShapeDrawableState(shapeAppearanceModel));
    }

    public MaterialShapeDrawable(MaterialShapeDrawableState materialShapeDrawableState) {
        ShapeAppearancePathProvider shapeAppearancePathProvider;
        this.f11877c = new ShapeAppearanceModel.CornerSizeUnaryOperator() { // from class: com.google.android.material.shape.MaterialShapeDrawable.1
            @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
            public final CornerSize a(CornerSize cornerSize) {
                if (cornerSize instanceof RelativeCornerSize) {
                    return cornerSize;
                }
                Paint paint = MaterialShapeDrawable.J;
                return new AdjustedCornerSize(-MaterialShapeDrawable.this.j(), cornerSize);
            }
        };
        this.g = new ShapePath.ShadowCompatOperation[4];
        this.h = new ShapePath.ShadowCompatOperation[4];
        this.i = new BitSet(8);
        this.l = new Matrix();
        this.m = new Path();
        this.n = new Path();
        this.o = new RectF();
        this.p = new RectF();
        this.q = new Region();
        this.r = new Region();
        Paint paint = new Paint(1);
        this.s = paint;
        Paint paint2 = new Paint(1);
        this.t = paint2;
        this.u = new ShadowRenderer();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            shapeAppearancePathProvider = ShapeAppearancePathProvider.Lazy.f11893a;
        } else {
            shapeAppearancePathProvider = new ShapeAppearancePathProvider();
        }
        this.w = shapeAppearancePathProvider;
        this.A = new RectF();
        this.B = true;
        this.C = true;
        this.F = new SpringAnimation[4];
        this.f = materialShapeDrawableState;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        u();
        s(getState());
        this.v = new ShapeAppearancePathProvider.PathListener() { // from class: com.google.android.material.shape.MaterialShapeDrawable.2
            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public final void a(ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                BitSet bitSet = materialShapeDrawable.i;
                shapePath.getClass();
                bitSet.set(i, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.g;
                shapePath.a(shapePath.f);
                shadowCompatOperationArr[i] = new ShapePath.AnonymousClass1(new ArrayList(shapePath.h), new Matrix(matrix));
            }

            @Override // com.google.android.material.shape.ShapeAppearancePathProvider.PathListener
            public final void b(ShapePath shapePath, Matrix matrix, int i) {
                MaterialShapeDrawable materialShapeDrawable = MaterialShapeDrawable.this;
                shapePath.getClass();
                materialShapeDrawable.i.set(i + 4, false);
                ShapePath.ShadowCompatOperation[] shadowCompatOperationArr = materialShapeDrawable.h;
                shapePath.a(shapePath.f);
                shadowCompatOperationArr[i] = new ShapePath.AnonymousClass1(new ArrayList(shapePath.h), new Matrix(matrix));
            }
        };
    }

    @RestrictTo
    /* loaded from: classes3.dex */
    public static class MaterialShapeDrawableState extends Drawable.ConstantState {

        /* renamed from: a, reason: collision with root package name */
        public ShapeAppearanceModel f11880a;
        public StateListShapeAppearanceModel b;

        /* renamed from: c, reason: collision with root package name */
        public ElevationOverlayProvider f11881c;
        public ColorStateList d;
        public ColorStateList e;
        public ColorStateList f;
        public PorterDuff.Mode g;
        public Rect h;
        public final float i;
        public float j;
        public float k;
        public int l;
        public float m;
        public float n;
        public int o;
        public int p;
        public int q;
        public final Paint.Style r;

        public MaterialShapeDrawableState(ShapeAppearanceModel shapeAppearanceModel) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = PorterDuff.Mode.SRC_IN;
            this.h = null;
            this.i = 1.0f;
            this.j = 1.0f;
            this.l = KotlinVersion.MAX_COMPONENT_VALUE;
            this.m = 0.0f;
            this.n = 0.0f;
            this.o = 0;
            this.p = 0;
            this.q = 0;
            this.r = Paint.Style.FILL_AND_STROKE;
            this.f11880a = shapeAppearanceModel;
            this.f11881c = null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this);
            materialShapeDrawable.j = true;
            materialShapeDrawable.k = true;
            return materialShapeDrawable;
        }

        public MaterialShapeDrawableState(MaterialShapeDrawableState materialShapeDrawableState) {
            this.d = null;
            this.e = null;
            this.f = null;
            this.g = PorterDuff.Mode.SRC_IN;
            this.h = null;
            this.i = 1.0f;
            this.j = 1.0f;
            this.l = KotlinVersion.MAX_COMPONENT_VALUE;
            this.m = 0.0f;
            this.n = 0.0f;
            this.o = 0;
            this.p = 0;
            this.q = 0;
            this.r = Paint.Style.FILL_AND_STROKE;
            this.f11880a = materialShapeDrawableState.f11880a;
            this.b = materialShapeDrawableState.b;
            this.f11881c = materialShapeDrawableState.f11881c;
            this.k = materialShapeDrawableState.k;
            this.d = materialShapeDrawableState.d;
            this.e = materialShapeDrawableState.e;
            this.g = materialShapeDrawableState.g;
            this.f = materialShapeDrawableState.f;
            this.l = materialShapeDrawableState.l;
            this.i = materialShapeDrawableState.i;
            this.q = materialShapeDrawableState.q;
            this.o = materialShapeDrawableState.o;
            this.j = materialShapeDrawableState.j;
            this.m = materialShapeDrawableState.m;
            this.n = materialShapeDrawableState.n;
            this.p = materialShapeDrawableState.p;
            this.r = materialShapeDrawableState.r;
            if (materialShapeDrawableState.h != null) {
                this.h = new Rect(materialShapeDrawableState.h);
            }
        }
    }
}
