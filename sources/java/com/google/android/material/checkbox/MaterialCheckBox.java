package com.google.android.material.checkbox;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimatedStateListDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.autofill.AutofillManager;
import android.widget.CompoundButton;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.vectordrawable.graphics.drawable.Animatable2Compat;
import androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat;
import com.google.android.material.R;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.drawable.DrawableUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class MaterialCheckBox extends AppCompatCheckBox {
    public static final int C = R.style.Widget_MaterialComponents_CompoundButton_CheckBox;
    public static final int[] D = {R.attr.state_indeterminate};
    public static final int[] E;
    public static final int[][] F;
    public static final int G;
    public final AnimatedVectorDrawableCompat A;
    public final Animatable2Compat.AnimationCallback B;
    public final LinkedHashSet i;
    public final LinkedHashSet j;
    public ColorStateList k;
    public boolean l;
    public boolean m;
    public boolean n;
    public CharSequence o;
    public Drawable p;
    public Drawable q;
    public boolean r;
    public ColorStateList s;
    public ColorStateList t;
    public PorterDuff.Mode u;
    public int v;
    public int[] w;
    public boolean x;
    public CharSequence y;
    public CompoundButton.OnCheckedChangeListener z;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface CheckedState {
    }

    /* loaded from: classes3.dex */
    public interface OnCheckedStateChangedListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface OnErrorChangedListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends View.BaseSavedState {

        @NonNull
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public int f11724c;

        /* renamed from: com.google.android.material.checkbox.MaterialCheckBox$SavedState$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 implements Parcelable.Creator<SavedState> {
            /* JADX WARN: Type inference failed for: r0v0, types: [android.view.View$BaseSavedState, com.google.android.material.checkbox.MaterialCheckBox$SavedState] */
            @Override // android.os.Parcelable.Creator
            public final SavedState createFromParcel(Parcel parcel) {
                ?? baseSavedState = new View.BaseSavedState(parcel);
                baseSavedState.f11724c = ((Integer) parcel.readValue(SavedState.class.getClassLoader())).intValue();
                return baseSavedState;
            }

            @Override // android.os.Parcelable.Creator
            public final SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public final String toString() {
            String str;
            StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" CheckedState=");
            int i = this.f11724c;
            if (i != 1) {
                if (i != 2) {
                    str = "unchecked";
                } else {
                    str = "indeterminate";
                }
            } else {
                str = "checked";
            }
            return a.p(sb, str, "}");
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeValue(Integer.valueOf(this.f11724c));
        }
    }

    static {
        int i = R.attr.state_error;
        E = new int[]{i};
        F = new int[][]{new int[]{android.R.attr.state_enabled, i}, new int[]{android.R.attr.state_enabled, android.R.attr.state_checked}, new int[]{android.R.attr.state_enabled, -16842912}, new int[]{-16842910, android.R.attr.state_checked}, new int[]{-16842910, -16842912}};
        G = Resources.getSystem().getIdentifier("btn_check_material_anim", "drawable", "android");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MaterialCheckBox(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            int r3 = androidx.appcompat.R.attr.checkboxStyle
            int r4 = com.google.android.material.checkbox.MaterialCheckBox.C
            android.content.Context r8 = com.google.android.material.theme.overlay.MaterialThemeOverlay.a(r8, r9, r3, r4)
            r7.<init>(r8, r9, r3)
            java.util.LinkedHashSet r8 = new java.util.LinkedHashSet
            r8.<init>()
            r7.i = r8
            java.util.LinkedHashSet r8 = new java.util.LinkedHashSet
            r8.<init>()
            r7.j = r8
            android.content.Context r8 = r7.getContext()
            int r0 = com.google.android.material.R.drawable.mtrl_checkbox_button_checked_unchecked
            androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat r8 = androidx.vectordrawable.graphics.drawable.AnimatedVectorDrawableCompat.a(r8, r0)
            r7.A = r8
            com.google.android.material.checkbox.MaterialCheckBox$1 r8 = new com.google.android.material.checkbox.MaterialCheckBox$1
            r8.<init>()
            r7.B = r8
            android.content.Context r0 = r7.getContext()
            android.graphics.drawable.Drawable r8 = r7.getButtonDrawable()
            r7.p = r8
            android.content.res.ColorStateList r8 = r7.getSuperButtonTintList()
            r7.s = r8
            r8 = 0
            r7.setSupportButtonTintList(r8)
            int[] r2 = com.google.android.material.R.styleable.MaterialCheckBox
            r6 = 0
            int[] r5 = new int[r6]
            com.google.android.material.internal.ThemeEnforcement.a(r0, r9, r3, r4)
            r1 = r9
            com.google.android.material.internal.ThemeEnforcement.b(r0, r1, r2, r3, r4, r5)
            androidx.appcompat.widget.TintTypedArray r9 = new androidx.appcompat.widget.TintTypedArray
            android.content.res.TypedArray r1 = r0.obtainStyledAttributes(r1, r2, r3, r4)
            r9.<init>(r0, r1)
            int r2 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIcon
            android.graphics.drawable.Drawable r2 = r9.b(r2)
            r7.q = r2
            android.graphics.drawable.Drawable r2 = r7.p
            r3 = 1
            if (r2 == 0) goto L95
            int r2 = com.google.android.material.R.attr.isMaterial3Theme
            boolean r2 = com.google.android.material.resources.MaterialAttributes.b(r0, r2, r6)
            if (r2 == 0) goto L95
            int r2 = com.google.android.material.R.styleable.MaterialCheckBox_android_button
            int r2 = r1.getResourceId(r2, r6)
            int r4 = com.google.android.material.R.styleable.MaterialCheckBox_buttonCompat
            int r4 = r1.getResourceId(r4, r6)
            int r5 = com.google.android.material.checkbox.MaterialCheckBox.G
            if (r2 != r5) goto L95
            if (r4 != 0) goto L95
            super.setButtonDrawable(r8)
            int r8 = com.google.android.material.R.drawable.mtrl_checkbox_button
            android.graphics.drawable.Drawable r8 = androidx.appcompat.content.res.AppCompatResources.a(r0, r8)
            r7.p = r8
            r7.r = r3
            android.graphics.drawable.Drawable r8 = r7.q
            if (r8 != 0) goto L95
            int r8 = com.google.android.material.R.drawable.mtrl_checkbox_button_icon
            android.graphics.drawable.Drawable r8 = androidx.appcompat.content.res.AppCompatResources.a(r0, r8)
            r7.q = r8
        L95:
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTint
            android.content.res.ColorStateList r8 = com.google.android.material.resources.MaterialResources.b(r0, r9, r8)
            r7.t = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_buttonIconTintMode
            r0 = -1
            int r8 = r1.getInt(r8, r0)
            android.graphics.PorterDuff$Mode r0 = android.graphics.PorterDuff.Mode.SRC_IN
            android.graphics.PorterDuff$Mode r8 = com.google.android.material.internal.ViewUtils.c(r8, r0)
            r7.u = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_useMaterialThemeColors
            boolean r8 = r1.getBoolean(r8, r6)
            r7.l = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_centerIfNoTextEnabled
            boolean r8 = r1.getBoolean(r8, r3)
            r7.m = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_errorShown
            boolean r8 = r1.getBoolean(r8, r6)
            r7.n = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_errorAccessibilityLabel
            java.lang.CharSequence r8 = r1.getText(r8)
            r7.o = r8
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            boolean r8 = r1.hasValue(r8)
            if (r8 == 0) goto Ldd
            int r8 = com.google.android.material.R.styleable.MaterialCheckBox_checkedState
            int r8 = r1.getInt(r8, r6)
            r7.setCheckedState(r8)
        Ldd:
            r9.f()
            r7.b()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.checkbox.MaterialCheckBox.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @NonNull
    private String getButtonStateDescription() {
        int i = this.v;
        if (i == 1) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_checked);
        }
        if (i == 0) {
            return getResources().getString(R.string.mtrl_checkbox_state_description_unchecked);
        }
        return getResources().getString(R.string.mtrl_checkbox_state_description_indeterminate);
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.k == null) {
            int c2 = MaterialColors.c(this, androidx.appcompat.R.attr.colorControlActivated);
            int c3 = MaterialColors.c(this, androidx.appcompat.R.attr.colorError);
            int c4 = MaterialColors.c(this, R.attr.colorSurface);
            int c5 = MaterialColors.c(this, R.attr.colorOnSurface);
            this.k = new ColorStateList(F, new int[]{MaterialColors.g(1.0f, c4, c3), MaterialColors.g(1.0f, c4, c2), MaterialColors.g(0.54f, c4, c5), MaterialColors.g(0.38f, c4, c5), MaterialColors.g(0.38f, c4, c5)});
        }
        return this.k;
    }

    @Nullable
    private ColorStateList getSuperButtonTintList() {
        ColorStateList colorStateList = this.s;
        if (colorStateList != null) {
            return colorStateList;
        }
        if (super.getButtonTintList() != null) {
            return super.getButtonTintList();
        }
        return getSupportButtonTintList();
    }

    public final void b() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        this.p = DrawableUtils.b(this.p, this.s, getButtonTintMode());
        this.q = DrawableUtils.b(this.q, this.t, this.u);
        if (this.r) {
            AnimatedVectorDrawableCompat animatedVectorDrawableCompat = this.A;
            if (animatedVectorDrawableCompat != null) {
                Animatable2Compat.AnimationCallback animationCallback = this.B;
                animatedVectorDrawableCompat.c(animationCallback);
                animatedVectorDrawableCompat.b(animationCallback);
            }
            if (Build.VERSION.SDK_INT >= 24) {
                Drawable drawable = this.p;
                if ((drawable instanceof AnimatedStateListDrawable) && animatedVectorDrawableCompat != null) {
                    ((AnimatedStateListDrawable) drawable).addTransition(R.id.checked, R.id.unchecked, animatedVectorDrawableCompat, false);
                    ((AnimatedStateListDrawable) this.p).addTransition(R.id.indeterminate, R.id.unchecked, animatedVectorDrawableCompat, false);
                }
            }
        }
        Drawable drawable2 = this.p;
        if (drawable2 != null && (colorStateList2 = this.s) != null) {
            drawable2.setTintList(colorStateList2);
        }
        Drawable drawable3 = this.q;
        if (drawable3 != null && (colorStateList = this.t) != null) {
            drawable3.setTintList(colorStateList);
        }
        super.setButtonDrawable(DrawableUtils.a(this.p, this.q, -1, -1));
        refreshDrawableState();
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public Drawable getButtonDrawable() {
        return this.p;
    }

    @Nullable
    public Drawable getButtonIconDrawable() {
        return this.q;
    }

    @Nullable
    public ColorStateList getButtonIconTintList() {
        return this.t;
    }

    @NonNull
    public PorterDuff.Mode getButtonIconTintMode() {
        return this.u;
    }

    @Override // android.widget.CompoundButton
    @Nullable
    public ColorStateList getButtonTintList() {
        return this.s;
    }

    public int getCheckedState() {
        return this.v;
    }

    @Nullable
    public CharSequence getErrorAccessibilityLabel() {
        return this.o;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final boolean isChecked() {
        if (this.v == 1) {
            return true;
        }
        return false;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.l && this.s == null && this.t == null) {
            setUseMaterialThemeColors(true);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (getCheckedState() == 2) {
            View.mergeDrawableStates(onCreateDrawableState, D);
        }
        if (this.n) {
            View.mergeDrawableStates(onCreateDrawableState, E);
        }
        this.w = DrawableUtils.c(onCreateDrawableState);
        return onCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onDraw(Canvas canvas) {
        Drawable buttonDrawable;
        if (this.m && TextUtils.isEmpty(getText()) && (buttonDrawable = getButtonDrawable()) != null) {
            int i = 1;
            if (getLayoutDirection() == 1) {
                i = -1;
            }
            int width = ((getWidth() - buttonDrawable.getIntrinsicWidth()) / 2) * i;
            int save = canvas.save();
            canvas.translate(width, 0.0f);
            super.onDraw(canvas);
            canvas.restoreToCount(save);
            if (getBackground() != null) {
                Rect bounds = buttonDrawable.getBounds();
                getBackground().setHotspotBounds(bounds.left + width, bounds.top, bounds.right + width, bounds.bottom);
                return;
            }
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        if (accessibilityNodeInfo != null && this.n) {
            accessibilityNodeInfo.setText(((Object) accessibilityNodeInfo.getText()) + ", " + ((Object) this.o));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        setCheckedState(savedState.f11724c);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [android.view.View$BaseSavedState, com.google.android.material.checkbox.MaterialCheckBox$SavedState, android.os.Parcelable] */
    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? baseSavedState = new View.BaseSavedState(super.onSaveInstanceState());
        baseSavedState.f11724c = getCheckedState();
        return baseSavedState;
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@DrawableRes int i) {
        setButtonDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setButtonIconDrawable(@Nullable Drawable drawable) {
        this.q = drawable;
        b();
    }

    public void setButtonIconDrawableResource(@DrawableRes int i) {
        setButtonIconDrawable(AppCompatResources.a(getContext(), i));
    }

    public void setButtonIconTintList(@Nullable ColorStateList colorStateList) {
        if (this.t == colorStateList) {
            return;
        }
        this.t = colorStateList;
        b();
    }

    public void setButtonIconTintMode(@NonNull PorterDuff.Mode mode) {
        if (this.u == mode) {
            return;
        }
        this.u = mode;
        b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintList(@Nullable ColorStateList colorStateList) {
        if (this.s == colorStateList) {
            return;
        }
        this.s = colorStateList;
        b();
    }

    @Override // android.widget.CompoundButton
    public void setButtonTintMode(@Nullable PorterDuff.Mode mode) {
        setSupportButtonTintMode(mode);
        b();
    }

    public void setCenterIfNoTextEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        setCheckedState(z ? 1 : 0);
    }

    public void setCheckedState(int i) {
        boolean z;
        AutofillManager autofillManager;
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener;
        if (this.v != i) {
            this.v = i;
            if (i == 1) {
                z = true;
            } else {
                z = false;
            }
            super.setChecked(z);
            refreshDrawableState();
            if (Build.VERSION.SDK_INT >= 30 && this.y == null) {
                super.setStateDescription(getButtonStateDescription());
            }
            if (!this.x) {
                this.x = true;
                LinkedHashSet linkedHashSet = this.j;
                if (linkedHashSet != null) {
                    Iterator it = linkedHashSet.iterator();
                    while (it.hasNext()) {
                        ((OnCheckedStateChangedListener) it.next()).a();
                    }
                }
                if (this.v != 2 && (onCheckedChangeListener = this.z) != null) {
                    onCheckedChangeListener.onCheckedChanged(this, isChecked());
                }
                if (Build.VERSION.SDK_INT >= 26 && (autofillManager = (AutofillManager) getContext().getSystemService(AutofillManager.class)) != null) {
                    autofillManager.notifyValueChanged(this);
                }
                this.x = false;
            }
        }
    }

    public void setErrorAccessibilityLabel(@Nullable CharSequence charSequence) {
        this.o = charSequence;
    }

    public void setErrorAccessibilityLabelResource(@StringRes int i) {
        CharSequence charSequence;
        if (i != 0) {
            charSequence = getResources().getText(i);
        } else {
            charSequence = null;
        }
        setErrorAccessibilityLabel(charSequence);
    }

    public void setErrorShown(boolean z) {
        if (this.n != z) {
            this.n = z;
            refreshDrawableState();
            Iterator it = this.i.iterator();
            while (it.hasNext()) {
                ((OnErrorChangedListener) it.next()).a();
            }
        }
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.z = onCheckedChangeListener;
    }

    @Override // android.widget.CompoundButton, android.view.View
    @RequiresApi
    public void setStateDescription(@Nullable CharSequence charSequence) {
        this.y = charSequence;
        if (charSequence == null) {
            if (Build.VERSION.SDK_INT >= 30 && charSequence == null) {
                super.setStateDescription(getButtonStateDescription());
                return;
            }
            return;
        }
        super.setStateDescription(charSequence);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.l = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public final void toggle() {
        setChecked(!isChecked());
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton
    public void setButtonDrawable(@Nullable Drawable drawable) {
        this.p = drawable;
        this.r = false;
        b();
    }
}
