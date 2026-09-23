package com.google.android.material.button;

import android.R;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Layout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inspector.PropertyMapper;
import android.view.inspector.PropertyReader;
import android.widget.Button;
import android.widget.Checkable;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.Dimension;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatButton;
import androidx.core.content.ContextCompat;
import androidx.customview.view.AbsSavedState;
import androidx.dynamicanimation.animation.FloatPropertyCompat;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.c;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import com.google.android.material.shape.StateListShapeAppearanceModel;
import com.google.android.material.shape.StateListSizeChange;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class MaterialButton extends AppCompatButton implements Checkable, Shapeable {
    public static final int[] J = {R.attr.state_checkable};
    public static final int[] K = {R.attr.state_checked};
    public static final int L = com.google.android.material.R.style.Widget_MaterialComponents_Button;
    public static final int M = com.google.android.material.R.attr.materialSizeOverlay;
    public static final FloatPropertyCompat N = new Object();
    public boolean A;
    public int B;
    public boolean C;
    public int D;
    public StateListSizeChange E;
    public int F;
    public float G;
    public float H;
    public SpringAnimation I;
    public final MaterialButtonHelper h;
    public final LinkedHashSet i;
    public OnPressedChangeListener j;
    public PorterDuff.Mode k;
    public ColorStateList l;
    public Drawable m;
    public String n;
    public int o;
    public int p;
    public int q;
    public int r;
    public boolean s;
    public boolean t;
    public int u;
    public int v;
    public float w;
    public int x;
    public int y;
    public LinearLayout.LayoutParams z;

    /* renamed from: com.google.android.material.button.MaterialButton$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends FloatPropertyCompat<MaterialButton> {
        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final float a(Shapeable shapeable) {
            return ((MaterialButton) shapeable).getDisplayedWidthIncrease();
        }

        @Override // androidx.dynamicanimation.animation.FloatPropertyCompat
        public final void b(Shapeable shapeable, float f) {
            ((MaterialButton) shapeable).setDisplayedWidthIncrease(f);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface IconGravity {
    }

    @RequiresApi
    @RestrictTo
    /* loaded from: classes3.dex */
    public final class InspectionCompanion implements android.view.inspector.InspectionCompanion {

        /* renamed from: a, reason: collision with root package name */
        public int f11697a;

        public final void mapProperties(PropertyMapper propertyMapper) {
            this.f11697a = propertyMapper.mapInt("iconPadding", com.google.android.material.R.attr.iconPadding);
        }

        public final void readProperties(Object obj, PropertyReader propertyReader) {
            propertyReader.readInt(this.f11697a, ((MaterialButton) obj).getIconPadding());
        }
    }

    /* loaded from: classes3.dex */
    public interface OnCheckedChangeListener {
        void a(MaterialButton materialButton, boolean z);
    }

    /* loaded from: classes3.dex */
    public interface OnPressedChangeListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public boolean g;

        /* renamed from: com.google.android.material.button.MaterialButton$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.ClassLoaderCreator<SavedState> {
            @Override // android.os.Parcelable.ClassLoaderCreator
            public final SavedState createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new SavedState(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            public final Object[] newArray(int i) {
                return new SavedState[i];
            }

            @Override // android.os.Parcelable.Creator
            public final Object createFromParcel(Parcel parcel) {
                return new SavedState(parcel, null);
            }
        }

        public SavedState(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            if (classLoader == null) {
                getClass().getClassLoader();
            }
            this.g = parcel.readInt() == 1;
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.g ? 1 : 0);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialButton(@androidx.annotation.NonNull android.content.Context r10, @androidx.annotation.Nullable android.util.AttributeSet r11) {
        /*
            Method dump skipped, instructions count: 417
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public static /* synthetic */ void a(MaterialButton materialButton) {
        materialButton.B = materialButton.getOpticalCenterShift();
        materialButton.j();
        materialButton.invalidate();
    }

    private Layout.Alignment getActualTextAlignment() {
        int textAlignment = getTextAlignment();
        if (textAlignment != 1) {
            if (textAlignment != 6 && textAlignment != 3) {
                if (textAlignment != 4) {
                    return Layout.Alignment.ALIGN_NORMAL;
                }
                return Layout.Alignment.ALIGN_CENTER;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return getGravityTextAlignment();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getDisplayedWidthIncrease() {
        return this.G;
    }

    private Layout.Alignment getGravityTextAlignment() {
        int gravity = getGravity() & 8388615;
        if (gravity != 1) {
            if (gravity != 5 && gravity != 8388613) {
                return Layout.Alignment.ALIGN_NORMAL;
            }
            return Layout.Alignment.ALIGN_OPPOSITE;
        }
        return Layout.Alignment.ALIGN_CENTER;
    }

    private int getOpticalCenterShift() {
        MaterialShapeDrawable a2;
        if (!this.A || !this.C || (a2 = this.h.a(false)) == null) {
            return 0;
        }
        return (int) (a2.i() * 0.11f);
    }

    private int getTextHeight() {
        if (getLineCount() > 1) {
            return getLayout().getHeight();
        }
        TextPaint paint = getPaint();
        String charSequence = getText().toString();
        if (getTransformationMethod() != null) {
            charSequence = getTransformationMethod().getTransformation(charSequence, this).toString();
        }
        Rect rect = new Rect();
        paint.getTextBounds(charSequence, 0, charSequence.length(), rect);
        return Math.min(rect.height(), getLayout().getHeight());
    }

    private int getTextLayoutWidth() {
        int lineCount = getLineCount();
        float f = 0.0f;
        for (int i = 0; i < lineCount; i++) {
            f = Math.max(f, getLayout().getLineWidth(i));
        }
        return (int) Math.ceil(f);
    }

    private void setCheckedInternal(boolean z) {
        MaterialButtonHelper materialButtonHelper = this.h;
        if (materialButtonHelper != null && materialButtonHelper.t && this.s != z) {
            this.s = z;
            refreshDrawableState();
            if (getParent() instanceof MaterialButtonToggleGroup) {
                MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) getParent();
                boolean z2 = this.s;
                if (!materialButtonToggleGroup.q) {
                    materialButtonToggleGroup.f(getId(), z2);
                }
            }
            if (!this.t) {
                this.t = true;
                Iterator it = this.i.iterator();
                while (it.hasNext()) {
                    ((OnCheckedChangeListener) it.next()).a(this, this.s);
                }
                this.t = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setDisplayedWidthIncrease(float f) {
        MaterialButton materialButton;
        MaterialButton materialButton2;
        if (this.G != f) {
            this.G = f;
            j();
            invalidate();
            if (getParent() instanceof MaterialButtonGroup) {
                MaterialButtonGroup materialButtonGroup = (MaterialButtonGroup) getParent();
                int i = (int) this.G;
                int indexOfChild = materialButtonGroup.indexOfChild(this);
                if (indexOfChild >= 0) {
                    int i2 = indexOfChild - 1;
                    while (true) {
                        materialButton = null;
                        if (i2 >= 0) {
                            if (materialButtonGroup.c(i2)) {
                                materialButton2 = (MaterialButton) materialButtonGroup.getChildAt(i2);
                                break;
                            }
                            i2--;
                        } else {
                            materialButton2 = null;
                            break;
                        }
                    }
                    int childCount = materialButtonGroup.getChildCount();
                    while (true) {
                        indexOfChild++;
                        if (indexOfChild >= childCount) {
                            break;
                        } else if (materialButtonGroup.c(indexOfChild)) {
                            materialButton = (MaterialButton) materialButtonGroup.getChildAt(indexOfChild);
                            break;
                        }
                    }
                    if (materialButton2 != null || materialButton != null) {
                        if (materialButton2 == null) {
                            materialButton.setDisplayedWidthDecrease(i);
                        }
                        if (materialButton == null) {
                            materialButton2.setDisplayedWidthDecrease(i);
                        }
                        if (materialButton2 != null && materialButton != null) {
                            materialButton2.setDisplayedWidthDecrease(i / 2);
                            materialButton.setDisplayedWidthDecrease((i + 1) / 2);
                        }
                    }
                }
            }
        }
    }

    public final SpringForce d() {
        TypedArray obtainStyledAttributes;
        Context context = getContext();
        int i = com.google.android.material.R.attr.motionSpringFastSpatial;
        int i2 = com.google.android.material.R.style.Motion_Material3_Spring_Standard_Fast_Spatial;
        TypedValue a2 = MaterialAttributes.a(context, i);
        if (a2 == null) {
            obtainStyledAttributes = context.obtainStyledAttributes(null, com.google.android.material.R.styleable.MaterialSpring, 0, i2);
        } else {
            obtainStyledAttributes = context.obtainStyledAttributes(a2.resourceId, com.google.android.material.R.styleable.MaterialSpring);
        }
        SpringForce springForce = new SpringForce();
        try {
            float f = obtainStyledAttributes.getFloat(com.google.android.material.R.styleable.MaterialSpring_stiffness, Float.MIN_VALUE);
            if (f != Float.MIN_VALUE) {
                float f2 = obtainStyledAttributes.getFloat(com.google.android.material.R.styleable.MaterialSpring_damping, Float.MIN_VALUE);
                if (f2 != Float.MIN_VALUE) {
                    springForce.b(f);
                    springForce.a(f2);
                    return springForce;
                }
                throw new IllegalArgumentException("A MaterialSpring style must have a damping value.");
            }
            throw new IllegalArgumentException("A MaterialSpring style must have stiffness value.");
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public final boolean e() {
        MaterialButtonHelper materialButtonHelper = this.h;
        if (materialButtonHelper != null && !materialButtonHelper.r) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
    
        if (r1 == com.google.android.material.shape.StateListSizeChange.SizeChangeType.f) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(boolean r9) {
        /*
            r8 = this;
            com.google.android.material.shape.StateListSizeChange r0 = r8.E
            if (r0 != 0) goto L6
            goto L85
        L6:
            androidx.dynamicanimation.animation.SpringAnimation r0 = r8.I
            if (r0 != 0) goto L19
            androidx.dynamicanimation.animation.SpringAnimation r0 = new androidx.dynamicanimation.animation.SpringAnimation
            androidx.dynamicanimation.animation.FloatPropertyCompat r1 = com.google.android.material.button.MaterialButton.N
            r0.<init>(r8, r1)
            r8.I = r0
            androidx.dynamicanimation.animation.SpringForce r1 = r8.d()
            r0.r = r1
        L19:
            boolean r0 = r8.C
            if (r0 == 0) goto L85
            int r0 = r8.F
            com.google.android.material.shape.StateListSizeChange r1 = r8.E
            int[] r2 = r8.getDrawableState()
            int[][] r3 = r1.f11913c
            r4 = 0
            r5 = r4
        L29:
            int r6 = r1.f11912a
            r7 = -1
            if (r5 >= r6) goto L3a
            r6 = r3[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r2)
            if (r6 == 0) goto L37
            goto L3b
        L37:
            int r5 = r5 + 1
            goto L29
        L3a:
            r5 = r7
        L3b:
            if (r5 >= 0) goto L54
            int[] r2 = android.util.StateSet.WILD_CARD
            int[][] r3 = r1.f11913c
            r5 = r4
        L42:
            int r6 = r1.f11912a
            if (r5 >= r6) goto L53
            r6 = r3[r5]
            boolean r6 = android.util.StateSet.stateSetMatches(r6, r2)
            if (r6 == 0) goto L50
            r7 = r5
            goto L53
        L50:
            int r5 = r5 + 1
            goto L42
        L53:
            r5 = r7
        L54:
            if (r5 >= 0) goto L59
            com.google.android.material.shape.StateListSizeChange$SizeChange r1 = r1.b
            goto L5d
        L59:
            com.google.android.material.shape.StateListSizeChange$SizeChange[] r1 = r1.d
            r1 = r1[r5]
        L5d:
            com.google.android.material.shape.StateListSizeChange$SizeChangeAmount r1 = r1.f11914a
            int r2 = r8.getWidth()
            float r3 = r1.b
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r1 = r1.f11915a
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r5 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.f11916c
            if (r1 != r5) goto L6f
            float r1 = (float) r2
            float r3 = r3 * r1
        L6d:
            int r4 = (int) r3
            goto L74
        L6f:
            com.google.android.material.shape.StateListSizeChange$SizeChangeType r2 = com.google.android.material.shape.StateListSizeChange.SizeChangeType.f
            if (r1 != r2) goto L74
            goto L6d
        L74:
            int r0 = java.lang.Math.min(r0, r4)
            androidx.dynamicanimation.animation.SpringAnimation r1 = r8.I
            float r0 = (float) r0
            r1.e(r0)
            if (r9 == 0) goto L85
            androidx.dynamicanimation.animation.SpringAnimation r9 = r8.I
            r9.f()
        L85:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.button.MaterialButton.f(boolean):void");
    }

    public final void g() {
        int i = this.u;
        if (i != 1 && i != 2) {
            if (i != 3 && i != 4) {
                if (i != 16 && i != 32) {
                    return;
                }
                setCompoundDrawablesRelative(null, this.m, null, null);
                return;
            }
            setCompoundDrawablesRelative(null, null, this.m, null);
            return;
        }
        setCompoundDrawablesRelative(this.m, null, null, null);
    }

    @NonNull
    @SuppressLint({"KotlinPropertyAccess"})
    public String getA11yClassName() {
        Class cls;
        if (!TextUtils.isEmpty(this.n)) {
            return this.n;
        }
        MaterialButtonHelper materialButtonHelper = this.h;
        if (materialButtonHelper != null && materialButtonHelper.t) {
            cls = CompoundButton.class;
        } else {
            cls = Button.class;
        }
        return cls.getName();
    }

    @Px
    public int getAllowedWidthDecrease() {
        return this.D;
    }

    @Override // android.view.View
    @Nullable
    public ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    @Nullable
    public PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    @Px
    public int getCornerRadius() {
        if (e()) {
            return this.h.j;
        }
        return 0;
    }

    @Nullable
    @RestrictTo
    public SpringForce getCornerSpringForce() {
        return this.h.d;
    }

    public Drawable getIcon() {
        return this.m;
    }

    public int getIconGravity() {
        return this.u;
    }

    @Px
    public int getIconPadding() {
        return this.r;
    }

    @Px
    public int getIconSize() {
        return this.o;
    }

    public ColorStateList getIconTint() {
        return this.l;
    }

    public PorterDuff.Mode getIconTintMode() {
        return this.k;
    }

    @Dimension
    public int getInsetBottom() {
        return this.h.i;
    }

    @Dimension
    public int getInsetTop() {
        return this.h.h;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        if (e()) {
            return this.h.o;
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        if (e()) {
            return this.h.b;
        }
        throw new IllegalStateException("Attempted to get ShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    @Nullable
    @RestrictTo
    public StateListShapeAppearanceModel getStateListShapeAppearanceModel() {
        if (e()) {
            return this.h.f11701c;
        }
        throw new IllegalStateException("Attempted to get StateListShapeAppearanceModel from a MaterialButton which has an overwritten background.");
    }

    public ColorStateList getStrokeColor() {
        if (e()) {
            return this.h.n;
        }
        return null;
    }

    @Px
    public int getStrokeWidth() {
        if (e()) {
            return this.h.k;
        }
        return 0;
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @Nullable
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (e()) {
            return this.h.m;
        }
        return super.getSupportBackgroundTintList();
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @Nullable
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (e()) {
            return this.h.l;
        }
        return super.getSupportBackgroundTintMode();
    }

    public final void h(boolean z) {
        Drawable drawable = this.m;
        if (drawable != null) {
            Drawable mutate = drawable.mutate();
            this.m = mutate;
            mutate.setTintList(this.l);
            PorterDuff.Mode mode = this.k;
            if (mode != null) {
                this.m.setTintMode(mode);
            }
            int i = this.o;
            if (i == 0) {
                i = this.m.getIntrinsicWidth();
            }
            int i2 = this.o;
            if (i2 == 0) {
                i2 = this.m.getIntrinsicHeight();
            }
            Drawable drawable2 = this.m;
            int i3 = this.p;
            int i4 = this.q;
            drawable2.setBounds(i3, i4, i + i3, i2 + i4);
            this.m.setVisible(true, z);
        }
        if (z) {
            g();
            return;
        }
        Drawable[] compoundDrawablesRelative = getCompoundDrawablesRelative();
        Drawable drawable3 = compoundDrawablesRelative[0];
        Drawable drawable4 = compoundDrawablesRelative[1];
        Drawable drawable5 = compoundDrawablesRelative[2];
        int i5 = this.u;
        if (((i5 != 1 && i5 != 2) || drawable3 == this.m) && (((i5 != 3 && i5 != 4) || drawable5 == this.m) && ((i5 != 16 && i5 != 32) || drawable4 == this.m))) {
            return;
        }
        g();
    }

    public final void i(int i, int i2) {
        boolean z;
        if (this.m != null && getLayout() != null) {
            int i3 = this.u;
            boolean z2 = true;
            if (i3 != 1 && i3 != 2 && i3 != 3 && i3 != 4) {
                if (i3 != 16 && i3 != 32) {
                    return;
                }
                this.p = 0;
                if (i3 == 16) {
                    this.q = 0;
                    h(false);
                    return;
                }
                int i4 = this.o;
                if (i4 == 0) {
                    i4 = this.m.getIntrinsicHeight();
                }
                int max = Math.max(0, (((((i2 - getTextHeight()) - getPaddingTop()) - i4) - this.r) - getPaddingBottom()) / 2);
                if (this.q != max) {
                    this.q = max;
                    h(false);
                    return;
                }
                return;
            }
            this.q = 0;
            Layout.Alignment actualTextAlignment = getActualTextAlignment();
            int i5 = this.u;
            if (i5 != 1 && i5 != 3 && ((i5 != 2 || actualTextAlignment != Layout.Alignment.ALIGN_NORMAL) && (i5 != 4 || actualTextAlignment != Layout.Alignment.ALIGN_OPPOSITE))) {
                int i6 = this.o;
                if (i6 == 0) {
                    i6 = this.m.getIntrinsicWidth();
                }
                int textLayoutWidth = ((((i - getTextLayoutWidth()) - getPaddingEnd()) - i6) - this.r) - getPaddingStart();
                if (actualTextAlignment == Layout.Alignment.ALIGN_CENTER) {
                    textLayoutWidth /= 2;
                }
                if (getLayoutDirection() == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (this.u != 4) {
                    z2 = false;
                }
                if (z != z2) {
                    textLayoutWidth = -textLayoutWidth;
                }
                if (this.p != textLayoutWidth) {
                    this.p = textLayoutWidth;
                    h(false);
                    return;
                }
                return;
            }
            this.p = 0;
            h(false);
        }
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.s;
    }

    public final void j() {
        int i = (int) (this.G - this.H);
        int i2 = (i / 2) + this.B;
        getLayoutParams().width = (int) (this.w + i);
        setPaddingRelative(this.x + i2, getPaddingTop(), (this.y + i) - i2, getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (e()) {
            MaterialShapeUtils.c(this, this.h.a(false));
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        MaterialButtonHelper materialButtonHelper = this.h;
        if (materialButtonHelper != null && materialButtonHelper.t) {
            View.mergeDrawableStates(onCreateDrawableState, J);
        }
        if (this.s) {
            View.mergeDrawableStates(onCreateDrawableState, K);
        }
        return onCreateDrawableState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(getA11yClassName());
        accessibilityEvent.setChecked(this.s);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getA11yClassName());
        MaterialButtonHelper materialButtonHelper = this.h;
        if (materialButtonHelper != null && materialButtonHelper.t) {
            z = true;
        } else {
            z = false;
        }
        accessibilityNodeInfo.setCheckable(z);
        accessibilityNodeInfo.setChecked(this.s);
        accessibilityNodeInfo.setClickable(isClickable());
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        super.onLayout(z, i, i2, i3, i4);
        i(getMeasuredWidth(), getMeasuredHeight());
        int i6 = getResources().getConfiguration().orientation;
        if (this.v != i6) {
            this.v = i6;
            this.w = -1.0f;
        }
        if (this.w == -1.0f) {
            this.w = getMeasuredWidth();
            if (this.z == null && (getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getButtonSizeChange() != null) {
                this.z = (LinearLayout.LayoutParams) getLayoutParams();
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(this.z);
                layoutParams.width = (int) this.w;
                setLayoutParams(layoutParams);
            }
        }
        boolean z2 = false;
        if (this.D == -1) {
            if (this.m == null) {
                i5 = 0;
            } else {
                int iconPadding = getIconPadding();
                int i7 = this.o;
                if (i7 == 0) {
                    i7 = this.m.getIntrinsicWidth();
                }
                i5 = iconPadding + i7;
            }
            this.D = (getMeasuredWidth() - getTextLayoutWidth()) - i5;
        }
        if (this.x == -1) {
            this.x = getPaddingStart();
        }
        if (this.y == -1) {
            this.y = getPaddingEnd();
        }
        if ((getParent() instanceof MaterialButtonGroup) && ((MaterialButtonGroup) getParent()).getOrientation() == 0) {
            z2 = true;
        }
        this.C = z2;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        setChecked(savedState.g);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.os.Parcelable, androidx.customview.view.AbsSavedState, com.google.android.material.button.MaterialButton$SavedState] */
    @Override // android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        absSavedState.g = this.s;
        return absSavedState;
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.widget.TextView
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        super.onTextChanged(charSequence, i, i2, i3);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (isEnabled() && this.h.u) {
            toggle();
        }
        return super.performClick();
    }

    @Override // android.view.View
    public final void refreshDrawableState() {
        super.refreshDrawableState();
        if (this.m != null) {
            if (this.m.setState(getDrawableState())) {
                invalidate();
            }
        }
    }

    @RestrictTo
    public void setA11yClassName(@Nullable String str) {
        this.n = str;
    }

    @Override // android.view.View
    public void setBackground(@NonNull Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(@ColorInt int i) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.a(false) != null) {
                materialButtonHelper.a(false).setTint(i);
                return;
            }
            return;
        }
        super.setBackgroundColor(i);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundDrawable(@NonNull Drawable drawable) {
        if (e()) {
            if (drawable != getBackground()) {
                Log.w("MaterialButton", "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled");
                MaterialButtonHelper materialButtonHelper = this.h;
                materialButtonHelper.r = true;
                MaterialButton materialButton = materialButtonHelper.f11700a;
                materialButton.setSupportBackgroundTintList(materialButtonHelper.m);
                materialButton.setSupportBackgroundTintMode(materialButtonHelper.l);
                super.setBackgroundDrawable(drawable);
                return;
            }
            getBackground().setState(drawable.getState());
            return;
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // androidx.appcompat.widget.AppCompatButton, android.view.View
    public void setBackgroundResource(@DrawableRes int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.a(getContext(), i);
        } else {
            drawable = null;
        }
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCheckable(boolean z) {
        if (e()) {
            this.h.t = z;
        }
    }

    @Override // android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedInternal(z);
    }

    public void setCornerRadius(@Px int i) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (!materialButtonHelper.s || materialButtonHelper.j != i) {
                materialButtonHelper.j = i;
                materialButtonHelper.s = true;
                float f = i;
                ShapeAppearanceModel.Builder g = materialButtonHelper.b.g();
                g.d(f);
                g.e(f);
                g.c(f);
                g.b(f);
                materialButtonHelper.b = g.a();
                materialButtonHelper.f11701c = null;
                materialButtonHelper.d();
            }
        }
    }

    public void setCornerRadiusResource(@DimenRes int i) {
        if (e()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    @RestrictTo
    public void setCornerSpringForce(@NonNull SpringForce springForce) {
        MaterialButtonHelper materialButtonHelper = this.h;
        materialButtonHelper.d = springForce;
        if (materialButtonHelper.f11701c != null) {
            materialButtonHelper.d();
        }
    }

    public void setDisplayedWidthDecrease(int i) {
        this.H = Math.min(i, this.D);
        j();
        invalidate();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        if (e()) {
            this.h.a(false).n(f);
        }
    }

    public void setIcon(@Nullable Drawable drawable) {
        if (this.m != drawable) {
            this.m = drawable;
            h(true);
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconGravity(int i) {
        if (this.u != i) {
            this.u = i;
            i(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void setIconPadding(@Px int i) {
        if (this.r != i) {
            this.r = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(@DrawableRes int i) {
        Drawable drawable;
        if (i != 0) {
            drawable = AppCompatResources.a(getContext(), i);
        } else {
            drawable = null;
        }
        setIcon(drawable);
    }

    public void setIconSize(@Px int i) {
        if (i >= 0) {
            if (this.o != i) {
                this.o = i;
                h(true);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("iconSize cannot be less than 0");
    }

    public void setIconTint(@Nullable ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            h(false);
        }
    }

    public void setIconTintMode(PorterDuff.Mode mode) {
        if (this.k != mode) {
            this.k = mode;
            h(false);
        }
    }

    public void setIconTintResource(@ColorRes int i) {
        setIconTint(ContextCompat.c(getContext(), i));
    }

    public void setInsetBottom(@Dimension int i) {
        MaterialButtonHelper materialButtonHelper = this.h;
        materialButtonHelper.b(materialButtonHelper.h, i);
    }

    public void setInsetTop(@Dimension int i) {
        MaterialButtonHelper materialButtonHelper = this.h;
        materialButtonHelper.b(i, materialButtonHelper.i);
    }

    public void setInternalBackground(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setOnPressedChangeListenerInternal(@Nullable OnPressedChangeListener onPressedChangeListener) {
        this.j = onPressedChangeListener;
    }

    public void setOpticalCenterEnabled(boolean z) {
        if (this.A != z) {
            this.A = z;
            MaterialButtonHelper materialButtonHelper = this.h;
            if (z) {
                c cVar = new c(5, this);
                materialButtonHelper.e = cVar;
                MaterialShapeDrawable a2 = materialButtonHelper.a(false);
                if (a2 != null) {
                    a2.I = cVar;
                }
            } else {
                materialButtonHelper.e = null;
                MaterialShapeDrawable a3 = materialButtonHelper.a(false);
                if (a3 != null) {
                    a3.I = null;
                }
            }
            post(new androidx.credentials.playservices.controllers.CreatePassword.a(3, this));
        }
    }

    @Override // android.view.View
    public void setPressed(boolean z) {
        OnPressedChangeListener onPressedChangeListener = this.j;
        if (onPressedChangeListener != null) {
            onPressedChangeListener.a();
        }
        super.setPressed(z);
        f(false);
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            MaterialButton materialButton = materialButtonHelper.f11700a;
            if (materialButtonHelper.o != colorStateList) {
                materialButtonHelper.o = colorStateList;
                if (materialButton.getBackground() instanceof RippleDrawable) {
                    ((RippleDrawable) materialButton.getBackground()).setColor(RippleUtils.c(colorStateList));
                }
            }
        }
    }

    public void setRippleColorResource(@ColorRes int i) {
        if (e()) {
            setRippleColor(ContextCompat.c(getContext(), i));
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            materialButtonHelper.b = shapeAppearanceModel;
            materialButtonHelper.f11701c = null;
            materialButtonHelper.d();
            return;
        }
        throw new IllegalStateException("Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setShouldDrawSurfaceColorStroke(boolean z) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            materialButtonHelper.q = z;
            materialButtonHelper.e();
        }
    }

    public void setSizeChange(@NonNull StateListSizeChange stateListSizeChange) {
        if (this.E != stateListSizeChange) {
            this.E = stateListSizeChange;
            f(true);
        }
    }

    @RestrictTo
    public void setStateListShapeAppearanceModel(@NonNull StateListShapeAppearanceModel stateListShapeAppearanceModel) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.d == null && stateListShapeAppearanceModel.d()) {
                materialButtonHelper.d = d();
                if (materialButtonHelper.f11701c != null) {
                    materialButtonHelper.d();
                }
            }
            materialButtonHelper.f11701c = stateListShapeAppearanceModel;
            materialButtonHelper.d();
            return;
        }
        throw new IllegalStateException("Attempted to set StateListShapeAppearanceModel on a MaterialButton which has an overwritten background.");
    }

    public void setStrokeColor(@Nullable ColorStateList colorStateList) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.n != colorStateList) {
                materialButtonHelper.n = colorStateList;
                materialButtonHelper.e();
            }
        }
    }

    public void setStrokeColorResource(@ColorRes int i) {
        if (e()) {
            setStrokeColor(ContextCompat.c(getContext(), i));
        }
    }

    public void setStrokeWidth(@Px int i) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.k != i) {
                materialButtonHelper.k = i;
                materialButtonHelper.e();
            }
        }
    }

    public void setStrokeWidthResource(@DimenRes int i) {
        if (e()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @RestrictTo
    public void setSupportBackgroundTintList(@Nullable ColorStateList colorStateList) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.m != colorStateList) {
                materialButtonHelper.m = colorStateList;
                if (materialButtonHelper.a(false) != null) {
                    materialButtonHelper.a(false).setTintList(materialButtonHelper.m);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintList(colorStateList);
    }

    @Override // androidx.appcompat.widget.AppCompatButton
    @RestrictTo
    public void setSupportBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        if (e()) {
            MaterialButtonHelper materialButtonHelper = this.h;
            if (materialButtonHelper.l != mode) {
                materialButtonHelper.l = mode;
                if (materialButtonHelper.a(false) != null && materialButtonHelper.l != null) {
                    materialButtonHelper.a(false).setTintMode(materialButtonHelper.l);
                    return;
                }
                return;
            }
            return;
        }
        super.setSupportBackgroundTintMode(mode);
    }

    @Override // android.view.View
    public void setTextAlignment(int i) {
        super.setTextAlignment(i);
        i(getMeasuredWidth(), getMeasuredHeight());
    }

    public void setToggleCheckedStateOnClick(boolean z) {
        this.h.u = z;
    }

    @Override // android.widget.TextView
    public void setWidth(@Px int i) {
        this.w = -1.0f;
        super.setWidth(i);
    }

    public void setWidthChangeMax(@Px int i) {
        if (this.F != i) {
            this.F = i;
            f(true);
        }
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        setChecked(!this.s);
    }
}
