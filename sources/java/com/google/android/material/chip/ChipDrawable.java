package com.google.android.material.chip;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.AttributeSet;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.drawable.TintAwareDrawable;
import androidx.core.graphics.drawable.WrappedDrawable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.ShapeAppearancePathProvider;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.KotlinVersion;

/* loaded from: classes3.dex */
public class ChipDrawable extends MaterialShapeDrawable implements TintAwareDrawable, Drawable.Callback, TextDrawableHelper.TextDrawableDelegate {
    public static final int[] T0 = {R.attr.state_enabled};
    public static final ShapeDrawable U0 = new ShapeDrawable(new OvalShape());
    public int A0;
    public int B0;
    public int C0;
    public int D0;
    public int E0;
    public boolean F0;
    public int G0;
    public int H0;
    public ColorFilter I0;
    public PorterDuffColorFilter J0;
    public ColorStateList K0;
    public ColorStateList L;
    public PorterDuff.Mode L0;
    public ColorStateList M;
    public int[] M0;
    public float N;
    public ColorStateList N0;
    public float O;
    public WeakReference O0;
    public ColorStateList P;
    public TextUtils.TruncateAt P0;
    public float Q;
    public boolean Q0;
    public ColorStateList R;
    public int R0;
    public CharSequence S;
    public boolean S0;
    public boolean T;
    public Drawable U;
    public ColorStateList V;
    public float W;
    public boolean X;
    public boolean Y;
    public Drawable Z;
    public RippleDrawable a0;
    public ColorStateList b0;
    public float c0;
    public SpannableStringBuilder d0;
    public boolean e0;
    public boolean f0;
    public Drawable g0;
    public ColorStateList h0;
    public MotionSpec i0;
    public MotionSpec j0;
    public float k0;
    public float l0;
    public float m0;
    public float n0;
    public float o0;
    public float p0;
    public float q0;
    public float r0;
    public final Context s0;
    public final Paint t0;
    public final Paint.FontMetrics u0;
    public final RectF v0;
    public final PointF w0;
    public final Path x0;
    public final TextDrawableHelper y0;
    public int z0;

    /* loaded from: classes3.dex */
    public interface Delegate {
        void a();
    }

    public ChipDrawable(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, Chip.B);
        this.O = -1.0f;
        this.t0 = new Paint(1);
        this.u0 = new Paint.FontMetrics();
        this.v0 = new RectF();
        this.w0 = new PointF();
        this.x0 = new Path();
        this.H0 = KotlinVersion.MAX_COMPONENT_VALUE;
        this.L0 = PorterDuff.Mode.SRC_IN;
        this.O0 = new WeakReference(null);
        l(context);
        this.s0 = context;
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.y0 = textDrawableHelper;
        this.S = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        textDrawableHelper.f11815a.density = context.getResources().getDisplayMetrics().density;
        int[] iArr = T0;
        setState(iArr);
        U(iArr);
        this.Q0 = true;
        U0.setTint(-1);
    }

    public static boolean B(ColorStateList colorStateList) {
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public static boolean C(Drawable drawable) {
        if (drawable != null && drawable.isStateful()) {
            return true;
        }
        return false;
    }

    public static void d0(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public final float A() {
        if (this.S0) {
            float[] fArr = this.G;
            if (fArr != null) {
                return fArr[3];
            }
            return this.f.f11880a.e.a(h());
        }
        return this.O;
    }

    public final void D() {
        Delegate delegate = (Delegate) this.O0.get();
        if (delegate != null) {
            delegate.a();
        }
    }

    public final boolean E(int[] iArr, int[] iArr2) {
        int i;
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        int i6;
        PorterDuffColorFilter porterDuffColorFilter;
        ColorStateList colorStateList;
        boolean onStateChange = super.onStateChange(iArr);
        ColorStateList colorStateList2 = this.L;
        if (colorStateList2 != null) {
            i = colorStateList2.getColorForState(iArr, this.z0);
        } else {
            i = 0;
        }
        int d = d(i);
        boolean z5 = true;
        if (this.z0 != d) {
            this.z0 = d;
            onStateChange = true;
        }
        ColorStateList colorStateList3 = this.M;
        if (colorStateList3 != null) {
            i2 = colorStateList3.getColorForState(iArr, this.A0);
        } else {
            i2 = 0;
        }
        int d2 = d(i2);
        if (this.A0 != d2) {
            this.A0 = d2;
            onStateChange = true;
        }
        int i7 = ColorUtils.i(d2, d);
        if (this.B0 != i7) {
            z = true;
        } else {
            z = false;
        }
        if (this.f.d == null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z | z2) {
            this.B0 = i7;
            o(ColorStateList.valueOf(i7));
            onStateChange = true;
        }
        ColorStateList colorStateList4 = this.P;
        if (colorStateList4 != null) {
            i3 = colorStateList4.getColorForState(iArr, this.C0);
        } else {
            i3 = 0;
        }
        if (this.C0 != i3) {
            this.C0 = i3;
            onStateChange = true;
        }
        if (this.N0 != null && RippleUtils.d(iArr)) {
            i4 = this.N0.getColorForState(iArr, this.D0);
        } else {
            i4 = 0;
        }
        if (this.D0 != i4) {
            this.D0 = i4;
        }
        TextAppearance textAppearance = this.y0.g;
        if (textAppearance != null && (colorStateList = textAppearance.k) != null) {
            i5 = colorStateList.getColorForState(iArr, this.E0);
        } else {
            i5 = 0;
        }
        if (this.E0 != i5) {
            this.E0 = i5;
            onStateChange = true;
        }
        int[] state = getState();
        if (state != null) {
            int length = state.length;
            int i8 = 0;
            while (true) {
                if (i8 >= length) {
                    break;
                }
                if (state[i8] == 16842912) {
                    if (this.e0) {
                        z3 = true;
                    }
                } else {
                    i8++;
                }
            }
        }
        z3 = false;
        if (this.F0 != z3 && this.g0 != null) {
            float y = y();
            this.F0 = z3;
            if (y != y()) {
                onStateChange = true;
                z4 = true;
            } else {
                z4 = false;
                onStateChange = true;
            }
        } else {
            z4 = false;
        }
        ColorStateList colorStateList5 = this.K0;
        if (colorStateList5 != null) {
            i6 = colorStateList5.getColorForState(iArr, this.G0);
        } else {
            i6 = 0;
        }
        if (this.G0 != i6) {
            this.G0 = i6;
            ColorStateList colorStateList6 = this.K0;
            PorterDuff.Mode mode = this.L0;
            if (colorStateList6 != null && mode != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList6.getColorForState(getState(), 0), mode);
            } else {
                porterDuffColorFilter = null;
            }
            this.J0 = porterDuffColorFilter;
        } else {
            z5 = onStateChange;
        }
        if (C(this.U)) {
            z5 |= this.U.setState(iArr);
        }
        if (C(this.g0)) {
            z5 |= this.g0.setState(iArr);
        }
        if (C(this.Z)) {
            int[] iArr3 = new int[iArr.length + iArr2.length];
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            System.arraycopy(iArr2, 0, iArr3, iArr.length, iArr2.length);
            z5 |= this.Z.setState(iArr3);
        }
        if (C(this.a0)) {
            z5 |= this.a0.setState(iArr2);
        }
        if (z5) {
            invalidateSelf();
        }
        if (z4) {
            D();
        }
        return z5;
    }

    public final void F(boolean z) {
        if (this.e0 != z) {
            this.e0 = z;
            float y = y();
            if (!z && this.F0) {
                this.F0 = false;
            }
            float y2 = y();
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void G(Drawable drawable) {
        if (this.g0 != drawable) {
            float y = y();
            this.g0 = drawable;
            float y2 = y();
            d0(this.g0);
            w(this.g0);
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void H(ColorStateList colorStateList) {
        Drawable drawable;
        if (this.h0 != colorStateList) {
            this.h0 = colorStateList;
            if (this.f0 && (drawable = this.g0) != null && this.e0) {
                drawable.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void I(boolean z) {
        if (this.f0 != z) {
            boolean a0 = a0();
            this.f0 = z;
            boolean a02 = a0();
            if (a0 != a02) {
                if (a02) {
                    w(this.g0);
                } else {
                    d0(this.g0);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void J(float f) {
        if (this.O != f) {
            this.O = f;
            ShapeAppearanceModel.Builder g = this.f.f11880a.g();
            g.d(f);
            g.e(f);
            g.c(f);
            g.b(f);
            setShapeAppearanceModel(g.a());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void K(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.U;
        Drawable drawable4 = null;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof WrappedDrawable;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((WrappedDrawable) drawable3).b();
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float y = y();
            if (drawable != null) {
                drawable4 = drawable.mutate();
            }
            this.U = drawable4;
            float y2 = y();
            d0(drawable2);
            if (b0()) {
                w(this.U);
            }
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void L(float f) {
        if (this.W != f) {
            float y = y();
            this.W = f;
            float y2 = y();
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void M(ColorStateList colorStateList) {
        this.X = true;
        if (this.V != colorStateList) {
            this.V = colorStateList;
            if (b0()) {
                this.U.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void N(boolean z) {
        if (this.T != z) {
            boolean b0 = b0();
            this.T = z;
            boolean b02 = b0();
            if (b0 != b02) {
                if (b02) {
                    w(this.U);
                } else {
                    d0(this.U);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void O(ColorStateList colorStateList) {
        if (this.P != colorStateList) {
            this.P = colorStateList;
            if (this.S0) {
                MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = this.f;
                if (materialShapeDrawableState.e != colorStateList) {
                    materialShapeDrawableState.e = colorStateList;
                    onStateChange(getState());
                }
            }
            onStateChange(getState());
        }
    }

    public final void P(float f) {
        if (this.Q != f) {
            this.Q = f;
            this.t0.setStrokeWidth(f);
            if (this.S0) {
                this.f.k = f;
                invalidateSelf();
            }
            invalidateSelf();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void Q(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.Z;
        Drawable drawable4 = null;
        if (drawable3 != 0) {
            boolean z = drawable3 instanceof WrappedDrawable;
            drawable2 = drawable3;
            if (z) {
                drawable2 = ((WrappedDrawable) drawable3).b();
            }
        } else {
            drawable2 = null;
        }
        if (drawable2 != drawable) {
            float z2 = z();
            if (drawable != null) {
                drawable4 = drawable.mutate();
            }
            this.Z = drawable4;
            this.a0 = new RippleDrawable(RippleUtils.c(this.R), this.Z, U0);
            float z3 = z();
            d0(drawable2);
            if (c0()) {
                w(this.Z);
            }
            invalidateSelf();
            if (z2 != z3) {
                D();
            }
        }
    }

    public final void R(float f) {
        if (this.q0 != f) {
            this.q0 = f;
            invalidateSelf();
            if (c0()) {
                D();
            }
        }
    }

    public final void S(float f) {
        if (this.c0 != f) {
            this.c0 = f;
            invalidateSelf();
            if (c0()) {
                D();
            }
        }
    }

    public final void T(float f) {
        if (this.p0 != f) {
            this.p0 = f;
            invalidateSelf();
            if (c0()) {
                D();
            }
        }
    }

    public final boolean U(int[] iArr) {
        if (!Arrays.equals(this.M0, iArr)) {
            this.M0 = iArr;
            if (c0()) {
                return E(getState(), iArr);
            }
            return false;
        }
        return false;
    }

    public final void V(ColorStateList colorStateList) {
        if (this.b0 != colorStateList) {
            this.b0 = colorStateList;
            if (c0()) {
                this.Z.setTintList(colorStateList);
            }
            onStateChange(getState());
        }
    }

    public final void W(boolean z) {
        if (this.Y != z) {
            boolean c0 = c0();
            this.Y = z;
            boolean c02 = c0();
            if (c0 != c02) {
                if (c02) {
                    w(this.Z);
                } else {
                    d0(this.Z);
                }
                invalidateSelf();
                D();
            }
        }
    }

    public final void X(float f) {
        if (this.m0 != f) {
            float y = y();
            this.m0 = f;
            float y2 = y();
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void Y(float f) {
        if (this.l0 != f) {
            float y = y();
            this.l0 = f;
            float y2 = y();
            invalidateSelf();
            if (y != y2) {
                D();
            }
        }
    }

    public final void Z(ColorStateList colorStateList) {
        if (this.R != colorStateList) {
            this.R = colorStateList;
            this.N0 = null;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final void a() {
        D();
        invalidateSelf();
    }

    public final boolean a0() {
        if (this.f0 && this.g0 != null && this.F0) {
            return true;
        }
        return false;
    }

    public final boolean b0() {
        if (this.T && this.U != null) {
            return true;
        }
        return false;
    }

    public final boolean c0() {
        if (this.Y && this.Z != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        int i;
        Canvas canvas2;
        int i2;
        float f;
        boolean z;
        int i3;
        Rect bounds = getBounds();
        if (!bounds.isEmpty() && (i = this.H0) != 0) {
            if (i < 255) {
                canvas2 = canvas;
                i2 = canvas2.saveLayerAlpha(bounds.left, bounds.top, bounds.right, bounds.bottom, i);
            } else {
                canvas2 = canvas;
                i2 = 0;
            }
            boolean z2 = this.S0;
            Paint paint = this.t0;
            RectF rectF = this.v0;
            if (!z2) {
                paint.setColor(this.z0);
                paint.setStyle(Paint.Style.FILL);
                rectF.set(bounds);
                canvas2.drawRoundRect(rectF, A(), A(), paint);
            }
            if (!this.S0) {
                paint.setColor(this.A0);
                paint.setStyle(Paint.Style.FILL);
                ColorFilter colorFilter = this.I0;
                if (colorFilter == null) {
                    colorFilter = this.J0;
                }
                paint.setColorFilter(colorFilter);
                rectF.set(bounds);
                canvas2.drawRoundRect(rectF, A(), A(), paint);
            }
            if (this.S0) {
                super.draw(canvas);
            }
            if (this.Q > 0.0f && !this.S0) {
                paint.setColor(this.C0);
                paint.setStyle(Paint.Style.STROKE);
                if (!this.S0) {
                    ColorFilter colorFilter2 = this.I0;
                    if (colorFilter2 == null) {
                        colorFilter2 = this.J0;
                    }
                    paint.setColorFilter(colorFilter2);
                }
                float f2 = bounds.left;
                float f3 = this.Q / 2.0f;
                rectF.set(f2 + f3, bounds.top + f3, bounds.right - f3, bounds.bottom - f3);
                float f4 = this.O - (this.Q / 2.0f);
                canvas2.drawRoundRect(rectF, f4, f4, paint);
            }
            paint.setColor(this.D0);
            paint.setStyle(Paint.Style.FILL);
            rectF.set(bounds);
            if (!this.S0) {
                canvas2.drawRoundRect(rectF, A(), A(), paint);
                f = 2.0f;
            } else {
                RectF rectF2 = new RectF(bounds);
                MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = this.f;
                ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawableState.f11880a;
                float[] fArr = this.G;
                float f5 = materialShapeDrawableState.j;
                ShapeAppearancePathProvider.PathListener pathListener = this.v;
                ShapeAppearancePathProvider shapeAppearancePathProvider = this.w;
                f = 2.0f;
                Path path = this.x0;
                shapeAppearancePathProvider.a(shapeAppearanceModel, fArr, f5, rectF2, pathListener, path);
                f(canvas2, paint, path, this.f.f11880a, this.G, h());
            }
            if (b0()) {
                x(bounds, rectF);
                float f6 = rectF.left;
                float f7 = rectF.top;
                canvas2.translate(f6, f7);
                this.U.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.U.draw(canvas2);
                canvas2.translate(-f6, -f7);
            }
            if (a0()) {
                x(bounds, rectF);
                float f8 = rectF.left;
                float f9 = rectF.top;
                canvas2.translate(f8, f9);
                this.g0.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.g0.draw(canvas2);
                canvas2.translate(-f8, -f9);
            }
            if (this.Q0 && this.S != null) {
                PointF pointF = this.w0;
                pointF.set(0.0f, 0.0f);
                Paint.Align align = Paint.Align.LEFT;
                CharSequence charSequence = this.S;
                TextDrawableHelper textDrawableHelper = this.y0;
                if (charSequence != null) {
                    float y = y() + this.k0 + this.n0;
                    if (getLayoutDirection() == 0) {
                        pointF.x = bounds.left + y;
                    } else {
                        pointF.x = bounds.right - y;
                        align = Paint.Align.RIGHT;
                    }
                    float centerY = bounds.centerY();
                    TextPaint textPaint = textDrawableHelper.f11815a;
                    Paint.FontMetrics fontMetrics = this.u0;
                    textPaint.getFontMetrics(fontMetrics);
                    pointF.y = centerY - ((fontMetrics.descent + fontMetrics.ascent) / f);
                }
                rectF.setEmpty();
                if (this.S != null) {
                    float y2 = y() + this.k0 + this.n0;
                    float z3 = z() + this.r0 + this.o0;
                    if (getLayoutDirection() == 0) {
                        rectF.left = bounds.left + y2;
                        rectF.right = bounds.right - z3;
                    } else {
                        rectF.left = bounds.left + z3;
                        rectF.right = bounds.right - y2;
                    }
                    rectF.top = bounds.top;
                    rectF.bottom = bounds.bottom;
                }
                TextAppearance textAppearance = textDrawableHelper.g;
                TextPaint textPaint2 = textDrawableHelper.f11815a;
                if (textAppearance != null) {
                    textPaint2.drawableState = getState();
                    textDrawableHelper.g.d(this.s0, textPaint2, textDrawableHelper.b);
                }
                textPaint2.setTextAlign(align);
                if (Math.round(textDrawableHelper.a(this.S.toString())) > Math.round(rectF.width())) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    int save = canvas2.save();
                    canvas2.clipRect(rectF);
                    i3 = save;
                } else {
                    i3 = 0;
                }
                CharSequence charSequence2 = this.S;
                if (z && this.P0 != null) {
                    charSequence2 = TextUtils.ellipsize(charSequence2, textPaint2, rectF.width(), this.P0);
                }
                canvas.drawText(charSequence2, 0, charSequence2.length(), pointF.x, pointF.y, textPaint2);
                canvas2 = canvas;
                if (z) {
                    canvas2.restoreToCount(i3);
                }
            }
            if (c0()) {
                rectF.setEmpty();
                if (c0()) {
                    float f10 = this.r0 + this.q0;
                    if (getLayoutDirection() == 0) {
                        float f11 = bounds.right - f10;
                        rectF.right = f11;
                        rectF.left = f11 - this.c0;
                    } else {
                        float f12 = bounds.left + f10;
                        rectF.left = f12;
                        rectF.right = f12 + this.c0;
                    }
                    float exactCenterY = bounds.exactCenterY();
                    float f13 = this.c0;
                    float f14 = exactCenterY - (f13 / f);
                    rectF.top = f14;
                    rectF.bottom = f14 + f13;
                }
                float f15 = rectF.left;
                float f16 = rectF.top;
                canvas2.translate(f15, f16);
                this.Z.setBounds(0, 0, (int) rectF.width(), (int) rectF.height());
                this.a0.setBounds(this.Z.getBounds());
                this.a0.jumpToCurrentState();
                this.a0.draw(canvas2);
                canvas2.translate(-f15, -f16);
            }
            if (this.H0 < 255) {
                canvas2.restoreToCount(i2);
            }
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.H0;
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        return this.I0;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) this.N;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return Math.min(Math.round(z() + this.y0.a(this.S.toString()) + y() + this.k0 + this.n0 + this.o0 + this.r0), this.R0);
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void getOutline(Outline outline) {
        Outline outline2;
        if (this.S0) {
            super.getOutline(outline);
            return;
        }
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            outline.setRoundRect(bounds, this.O);
            outline2 = outline;
        } else {
            outline2 = outline;
            outline2.setRoundRect(0, 0, getIntrinsicWidth(), (int) this.N, this.O);
        }
        outline2.setAlpha(this.H0 / 255.0f);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final boolean isStateful() {
        ColorStateList colorStateList;
        if (!B(this.L) && !B(this.M) && !B(this.P)) {
            TextAppearance textAppearance = this.y0.g;
            if (textAppearance == null || (colorStateList = textAppearance.k) == null || !colorStateList.isStateful()) {
                if ((!this.f0 || this.g0 == null || !this.e0) && !C(this.U) && !C(this.g0) && !B(this.K0)) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLayoutDirectionChanged(int i) {
        boolean onLayoutDirectionChanged = super.onLayoutDirectionChanged(i);
        if (b0()) {
            onLayoutDirectionChanged |= this.U.setLayoutDirection(i);
        }
        if (a0()) {
            onLayoutDirectionChanged |= this.g0.setLayoutDirection(i);
        }
        if (c0()) {
            onLayoutDirectionChanged |= this.Z.setLayoutDirection(i);
        }
        if (onLayoutDirectionChanged) {
            invalidateSelf();
            return true;
        }
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onLevelChange(int i) {
        boolean onLevelChange = super.onLevelChange(i);
        if (b0()) {
            onLevelChange |= this.U.setLevel(i);
        }
        if (a0()) {
            onLevelChange |= this.g0.setLevel(i);
        }
        if (c0()) {
            onLevelChange |= this.Z.setLevel(i);
        }
        if (onLevelChange) {
            invalidateSelf();
        }
        return onLevelChange;
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final boolean onStateChange(int[] iArr) {
        if (this.S0) {
            super.onStateChange(iArr);
        }
        return E(iArr, this.M0);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        if (this.H0 != i) {
            this.H0 = i;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.I0 != colorFilter) {
            this.I0 = colorFilter;
            invalidateSelf();
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setTintList(ColorStateList colorStateList) {
        if (this.K0 != colorStateList) {
            this.K0 = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // com.google.android.material.shape.MaterialShapeDrawable, android.graphics.drawable.Drawable
    public final void setTintMode(PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (this.L0 != mode) {
            this.L0 = mode;
            ColorStateList colorStateList = this.K0;
            if (colorStateList != null && mode != null) {
                porterDuffColorFilter = new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
            } else {
                porterDuffColorFilter = null;
            }
            this.J0 = porterDuffColorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z, boolean z2) {
        boolean visible = super.setVisible(z, z2);
        if (b0()) {
            visible |= this.U.setVisible(z, z2);
        }
        if (a0()) {
            visible |= this.g0.setVisible(z, z2);
        }
        if (c0()) {
            visible |= this.Z.setVisible(z, z2);
        }
        if (visible) {
            invalidateSelf();
        }
        return visible;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public final void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    public final void w(Drawable drawable) {
        if (drawable != null) {
            drawable.setCallback(this);
            drawable.setLayoutDirection(getLayoutDirection());
            drawable.setLevel(getLevel());
            drawable.setVisible(isVisible(), false);
            if (drawable == this.Z) {
                if (drawable.isStateful()) {
                    drawable.setState(this.M0);
                }
                drawable.setTintList(this.b0);
                return;
            }
            Drawable drawable2 = this.U;
            if (drawable == drawable2 && this.X) {
                drawable2.setTintList(this.V);
            }
            if (drawable.isStateful()) {
                drawable.setState(getState());
            }
        }
    }

    public final void x(Rect rect, RectF rectF) {
        Drawable drawable;
        Drawable drawable2;
        rectF.setEmpty();
        if (!b0() && !a0()) {
            return;
        }
        float f = this.k0 + this.l0;
        if (this.F0) {
            drawable = this.g0;
        } else {
            drawable = this.U;
        }
        float f2 = this.W;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        if (getLayoutDirection() == 0) {
            float f3 = rect.left + f;
            rectF.left = f3;
            rectF.right = f3 + f2;
        } else {
            float f4 = rect.right - f;
            rectF.right = f4;
            rectF.left = f4 - f2;
        }
        if (this.F0) {
            drawable2 = this.g0;
        } else {
            drawable2 = this.U;
        }
        float f5 = this.W;
        if (f5 <= 0.0f && drawable2 != null) {
            f5 = (float) Math.ceil(ViewUtils.b(this.s0, 24));
            if (drawable2.getIntrinsicHeight() <= f5) {
                f5 = drawable2.getIntrinsicHeight();
            }
        }
        float exactCenterY = rect.exactCenterY() - (f5 / 2.0f);
        rectF.top = exactCenterY;
        rectF.bottom = exactCenterY + f5;
    }

    public final float y() {
        Drawable drawable;
        if (!b0() && !a0()) {
            return 0.0f;
        }
        float f = this.l0;
        if (this.F0) {
            drawable = this.g0;
        } else {
            drawable = this.U;
        }
        float f2 = this.W;
        if (f2 <= 0.0f && drawable != null) {
            f2 = drawable.getIntrinsicWidth();
        }
        return f2 + f + this.m0;
    }

    public final float z() {
        if (c0()) {
            return this.p0 + this.c0 + this.q0;
        }
        return 0.0f;
    }
}
