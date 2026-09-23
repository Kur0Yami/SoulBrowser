package com.google.android.material.button;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import androidx.annotation.RestrictTo;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes3.dex */
public class MaterialButtonHelper {

    /* renamed from: a, reason: collision with root package name */
    public final MaterialButton f11700a;
    public ShapeAppearanceModel b;

    /* renamed from: c, reason: collision with root package name */
    public StateListShapeAppearanceModel f11701c;
    public SpringForce d;
    public MaterialShapeDrawable.OnCornerSizeChangeListener e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public PorterDuff.Mode l;
    public ColorStateList m;
    public ColorStateList n;
    public ColorStateList o;
    public MaterialShapeDrawable p;
    public boolean t;
    public RippleDrawable v;
    public int w;
    public boolean q = false;
    public boolean r = false;
    public boolean s = false;
    public boolean u = true;

    public MaterialButtonHelper(MaterialButton materialButton, ShapeAppearanceModel shapeAppearanceModel) {
        this.f11700a = materialButton;
        this.b = shapeAppearanceModel;
    }

    public final MaterialShapeDrawable a(boolean z) {
        RippleDrawable rippleDrawable = this.v;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 0) {
            return (MaterialShapeDrawable) ((LayerDrawable) ((InsetDrawable) this.v.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return null;
    }

    public final void b(int i, int i2) {
        MaterialButton materialButton = this.f11700a;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.h;
        int i4 = this.i;
        this.i = i2;
        this.h = i;
        if (!this.r) {
            c();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    public final void c() {
        int i;
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable(this.b);
        StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f11701c;
        if (stateListShapeAppearanceModel != null) {
            materialShapeDrawable.r(stateListShapeAppearanceModel);
        }
        SpringForce springForce = this.d;
        if (springForce != null) {
            materialShapeDrawable.m(springForce);
        }
        MaterialShapeDrawable.OnCornerSizeChangeListener onCornerSizeChangeListener = this.e;
        if (onCornerSizeChangeListener != null) {
            materialShapeDrawable.I = onCornerSizeChangeListener;
        }
        MaterialButton materialButton = this.f11700a;
        materialShapeDrawable.l(materialButton.getContext());
        materialShapeDrawable.setTintList(this.m);
        PorterDuff.Mode mode = this.l;
        if (mode != null) {
            materialShapeDrawable.setTintMode(mode);
        }
        float f = this.k;
        ColorStateList colorStateList = this.n;
        materialShapeDrawable.f.k = f;
        materialShapeDrawable.invalidateSelf();
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f;
        if (materialShapeDrawableState.e != colorStateList) {
            materialShapeDrawableState.e = colorStateList;
            materialShapeDrawable.onStateChange(materialShapeDrawable.getState());
        }
        MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(this.b);
        StateListShapeAppearanceModel stateListShapeAppearanceModel2 = this.f11701c;
        if (stateListShapeAppearanceModel2 != null) {
            materialShapeDrawable2.r(stateListShapeAppearanceModel2);
        }
        SpringForce springForce2 = this.d;
        if (springForce2 != null) {
            materialShapeDrawable2.m(springForce2);
        }
        materialShapeDrawable2.setTint(0);
        float f2 = this.k;
        if (this.q) {
            i = MaterialColors.c(materialButton, R.attr.colorSurface);
        } else {
            i = 0;
        }
        materialShapeDrawable2.f.k = f2;
        materialShapeDrawable2.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(i);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState2 = materialShapeDrawable2.f;
        if (materialShapeDrawableState2.e != valueOf) {
            materialShapeDrawableState2.e = valueOf;
            materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
        }
        MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(this.b);
        this.p = materialShapeDrawable3;
        StateListShapeAppearanceModel stateListShapeAppearanceModel3 = this.f11701c;
        if (stateListShapeAppearanceModel3 != null) {
            materialShapeDrawable3.r(stateListShapeAppearanceModel3);
        }
        SpringForce springForce3 = this.d;
        if (springForce3 != null) {
            this.p.m(springForce3);
        }
        this.p.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(RippleUtils.c(this.o), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{materialShapeDrawable2, materialShapeDrawable}), this.f, this.h, this.g, this.i), this.p);
        this.v = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        MaterialShapeDrawable a2 = a(false);
        if (a2 != null) {
            a2.n(this.w);
            a2.setState(materialButton.getDrawableState());
        }
    }

    public final void d() {
        Shapeable shapeable;
        MaterialShapeDrawable a2 = a(false);
        if (a2 != null) {
            StateListShapeAppearanceModel stateListShapeAppearanceModel = this.f11701c;
            if (stateListShapeAppearanceModel != null) {
                a2.r(stateListShapeAppearanceModel);
            } else {
                a2.setShapeAppearanceModel(this.b);
            }
            SpringForce springForce = this.d;
            if (springForce != null) {
                a2.m(springForce);
            }
        }
        MaterialShapeDrawable a3 = a(true);
        if (a3 != null) {
            StateListShapeAppearanceModel stateListShapeAppearanceModel2 = this.f11701c;
            if (stateListShapeAppearanceModel2 != null) {
                a3.r(stateListShapeAppearanceModel2);
            } else {
                a3.setShapeAppearanceModel(this.b);
            }
            SpringForce springForce2 = this.d;
            if (springForce2 != null) {
                a3.m(springForce2);
            }
        }
        RippleDrawable rippleDrawable = this.v;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 1) {
            if (this.v.getNumberOfLayers() > 2) {
                shapeable = (Shapeable) this.v.getDrawable(2);
            } else {
                shapeable = (Shapeable) this.v.getDrawable(1);
            }
        } else {
            shapeable = null;
        }
        if (shapeable != null) {
            shapeable.setShapeAppearanceModel(this.b);
            if (shapeable instanceof MaterialShapeDrawable) {
                MaterialShapeDrawable materialShapeDrawable = (MaterialShapeDrawable) shapeable;
                StateListShapeAppearanceModel stateListShapeAppearanceModel3 = this.f11701c;
                if (stateListShapeAppearanceModel3 != null) {
                    materialShapeDrawable.r(stateListShapeAppearanceModel3);
                }
                SpringForce springForce3 = this.d;
                if (springForce3 != null) {
                    materialShapeDrawable.m(springForce3);
                }
            }
        }
    }

    public final void e() {
        int i = 0;
        MaterialShapeDrawable a2 = a(false);
        MaterialShapeDrawable a3 = a(true);
        if (a2 != null) {
            float f = this.k;
            ColorStateList colorStateList = this.n;
            a2.f.k = f;
            a2.invalidateSelf();
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = a2.f;
            if (materialShapeDrawableState.e != colorStateList) {
                materialShapeDrawableState.e = colorStateList;
                a2.onStateChange(a2.getState());
            }
            if (a3 != null) {
                float f2 = this.k;
                if (this.q) {
                    i = MaterialColors.c(this.f11700a, R.attr.colorSurface);
                }
                a3.f.k = f2;
                a3.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(i);
                MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState2 = a3.f;
                if (materialShapeDrawableState2.e != valueOf) {
                    materialShapeDrawableState2.e = valueOf;
                    a3.onStateChange(a3.getState());
                }
            }
        }
    }
}
