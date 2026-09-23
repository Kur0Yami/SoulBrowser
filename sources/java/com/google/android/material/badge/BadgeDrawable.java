package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.TextPaint;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import androidx.annotation.OptIn;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.R;
import com.google.android.material.badge.BadgeState;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;

@OptIn
/* loaded from: classes3.dex */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    public static final int r = R.style.Widget_MaterialComponents_Badge;
    public static final int s = R.attr.badgeStyle;

    /* renamed from: c, reason: collision with root package name */
    public final WeakReference f11655c;
    public final MaterialShapeDrawable f;
    public final TextDrawableHelper g;
    public final Rect h;
    public final BadgeState i;
    public float j;
    public float k;
    public final int l;
    public float m;
    public float n;
    public float o;
    public WeakReference p;
    public WeakReference q;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface BadgeGravity {
    }

    public BadgeDrawable(Context context, BadgeState.State state) {
        int intValue;
        int intValue2;
        FrameLayout frameLayout;
        TextAppearance textAppearance;
        WeakReference weakReference = new WeakReference(context);
        this.f11655c = weakReference;
        ThemeEnforcement.c(context, ThemeEnforcement.b, "Theme.MaterialComponents");
        this.h = new Rect();
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.g = textDrawableHelper;
        Paint.Align align = Paint.Align.CENTER;
        TextPaint textPaint = textDrawableHelper.f11815a;
        textPaint.setTextAlign(align);
        BadgeState badgeState = new BadgeState(context, state);
        this.i = badgeState;
        boolean g = g();
        BadgeState.State state2 = badgeState.b;
        if (g) {
            intValue = state2.k.intValue();
        } else {
            intValue = state2.i.intValue();
        }
        if (g()) {
            intValue2 = state2.l.intValue();
        } else {
            intValue2 = state2.j.intValue();
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(ShapeAppearanceModel.a(context, intValue, intValue2).a());
        this.f = materialShapeDrawable;
        i();
        Context context2 = (Context) weakReference.get();
        if (context2 != null && textDrawableHelper.g != (textAppearance = new TextAppearance(context2, state2.h.intValue()))) {
            textDrawableHelper.c(textAppearance, context2);
            textPaint.setColor(state2.g.intValue());
            invalidateSelf();
            k();
            invalidateSelf();
        }
        int i = state2.p;
        if (i != -2) {
            this.l = ((int) Math.pow(10.0d, i - 1.0d)) - 1;
        } else {
            this.l = state2.q;
        }
        textDrawableHelper.e = true;
        k();
        invalidateSelf();
        textDrawableHelper.e = true;
        i();
        k();
        invalidateSelf();
        textPaint.setAlpha(getAlpha());
        invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(state2.f.intValue());
        if (materialShapeDrawable.f.d != valueOf) {
            materialShapeDrawable.o(valueOf);
            invalidateSelf();
        }
        textPaint.setColor(state2.g.intValue());
        invalidateSelf();
        WeakReference weakReference2 = this.p;
        if (weakReference2 != null && weakReference2.get() != null) {
            View view = (View) this.p.get();
            WeakReference weakReference3 = this.q;
            if (weakReference3 != null) {
                frameLayout = (FrameLayout) weakReference3.get();
            } else {
                frameLayout = null;
            }
            j(view, frameLayout);
        }
        k();
        setVisible(state2.x.booleanValue(), false);
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final void a() {
        invalidateSelf();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2, types: [android.view.ViewParent] */
    /* JADX WARN: Type inference failed for: r0v8, types: [android.view.ViewParent] */
    public final void b(View view, View view2) {
        float f;
        float f2;
        View view3;
        boolean z;
        FrameLayout e = e();
        if (e == null) {
            float y = view.getY();
            f2 = view.getX();
            view3 = view.getParent();
            f = y;
        } else {
            f = 0.0f;
            f2 = 0.0f;
            view3 = e;
        }
        while (true) {
            z = view3 instanceof View;
            if (!z || view3 == view2) {
                break;
            }
            ViewParent parent = view3.getParent();
            if (!(parent instanceof ViewGroup) || ((ViewGroup) parent).getClipChildren()) {
                break;
            }
            View view4 = view3;
            f += view4.getY();
            f2 += view4.getX();
            view3 = view3.getParent();
        }
        if (z) {
            float f3 = (this.k - this.o) + f;
            float f4 = (this.j - this.n) + f2;
            View view5 = view3;
            float height = ((this.k + this.o) - view5.getHeight()) + f;
            float width = ((this.j + this.n) - view5.getWidth()) + f2;
            if (f3 < 0.0f) {
                this.k = Math.abs(f3) + this.k;
            }
            if (f4 < 0.0f) {
                this.j = Math.abs(f4) + this.j;
            }
            if (height > 0.0f) {
                this.k -= Math.abs(height);
            }
            if (width > 0.0f) {
                this.j -= Math.abs(width);
            }
        }
    }

    public final String c() {
        BadgeState badgeState = this.i;
        BadgeState.State state = badgeState.b;
        BadgeState.State state2 = badgeState.b;
        String str = state.n;
        WeakReference weakReference = this.f11655c;
        if (str != null) {
            int i = state.p;
            if (i != -2 && str != null && str.length() > i) {
                Context context = (Context) weakReference.get();
                if (context != null) {
                    return String.format(context.getString(R.string.m3_exceed_max_badge_text_suffix), str.substring(0, i - 1), "…");
                }
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            return str;
        }
        if (h()) {
            int i2 = this.l;
            if (i2 != -2 && f() > i2) {
                Context context2 = (Context) weakReference.get();
                if (context2 == null) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                return String.format(state2.r, context2.getString(R.string.mtrl_exceed_max_badge_number_suffix), Integer.valueOf(i2), "+");
            }
            return NumberFormat.getInstance(state2.r).format(f());
        }
        return null;
    }

    public final CharSequence d() {
        Context context;
        if (isVisible()) {
            BadgeState badgeState = this.i;
            BadgeState.State state = badgeState.b;
            BadgeState.State state2 = badgeState.b;
            if (state.n != null) {
                CharSequence charSequence = state.s;
                if (charSequence != null) {
                    return charSequence;
                }
                return badgeState.b.n;
            }
            if (h()) {
                if (state2.u != 0 && (context = (Context) this.f11655c.get()) != null) {
                    int i = this.l;
                    if (i != -2 && f() > i) {
                        return context.getString(state2.v, Integer.valueOf(i));
                    }
                    return context.getResources().getQuantityString(state2.u, f(), Integer.valueOf(f()));
                }
                return null;
            }
            return state2.t;
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        String c2;
        int round;
        if (!getBounds().isEmpty() && getAlpha() != 0 && isVisible()) {
            this.f.draw(canvas);
            if (g() && (c2 = c()) != null) {
                Rect rect = new Rect();
                TextDrawableHelper textDrawableHelper = this.g;
                textDrawableHelper.f11815a.getTextBounds(c2, 0, c2.length(), rect);
                float exactCenterY = this.k - rect.exactCenterY();
                float f = this.j;
                if (rect.bottom <= 0) {
                    round = (int) exactCenterY;
                } else {
                    round = Math.round(exactCenterY);
                }
                canvas.drawText(c2, f, round, textDrawableHelper.f11815a);
            }
        }
    }

    public final FrameLayout e() {
        WeakReference weakReference = this.q;
        if (weakReference != null) {
            return (FrameLayout) weakReference.get();
        }
        return null;
    }

    public final int f() {
        int i = this.i.b.o;
        if (i != -1) {
            return i;
        }
        return 0;
    }

    public final boolean g() {
        if (this.i.b.n != null || h()) {
            return true;
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.i.b.m;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.h.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.h.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    public final boolean h() {
        BadgeState.State state = this.i.b;
        if (state.n == null && state.o != -1) {
            return true;
        }
        return false;
    }

    public final void i() {
        int intValue;
        int intValue2;
        Context context = (Context) this.f11655c.get();
        if (context == null) {
            return;
        }
        boolean g = g();
        BadgeState badgeState = this.i;
        if (g) {
            intValue = badgeState.b.k.intValue();
        } else {
            intValue = badgeState.b.i.intValue();
        }
        if (g()) {
            intValue2 = badgeState.b.l.intValue();
        } else {
            intValue2 = badgeState.b.j.intValue();
        }
        this.f.setShapeAppearanceModel(ShapeAppearanceModel.a(context, intValue, intValue2).a());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    public final void j(View view, FrameLayout frameLayout) {
        this.p = new WeakReference(view);
        this.q = new WeakReference(frameLayout);
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
        k();
        invalidateSelf();
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0147  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x023a  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x025b  */
    /* JADX WARN: Removed duplicated region for block: B:74:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x021a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x014e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void k() {
        /*
            Method dump skipped, instructions count: 607
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.badge.BadgeDrawable.k():void");
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        BadgeState badgeState = this.i;
        badgeState.f11656a.m = i;
        badgeState.b.m = i;
        this.g.f11815a.setAlpha(getAlpha());
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
