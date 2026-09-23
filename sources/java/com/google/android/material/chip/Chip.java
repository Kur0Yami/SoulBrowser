package com.google.android.material.chip;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.PointerIcon;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.AnimatorRes;
import androidx.annotation.BoolRes;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatCheckBox;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.WrappedDrawable;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.widget.ExploreByTouchHelper;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.R;
import com.google.android.material.animation.MotionSpec;
import com.google.android.material.chip.ChipDrawable;
import com.google.android.material.internal.MaterialCheckable;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.resources.TextAppearanceFontCallback;
import com.google.android.material.ripple.RippleUtils;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.shape.Shapeable;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import kotlin.jvm.internal.IntCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes3.dex */
public class Chip extends AppCompatCheckBox implements ChipDrawable.Delegate, Shapeable, MaterialCheckable<Chip> {
    public static final int B = R.style.Widget_MaterialComponents_Chip_Action;
    public static final Rect C = new Rect();
    public static final int[] D = {android.R.attr.state_selected};
    public static final int[] E = {android.R.attr.state_checkable};
    public final TextAppearanceFontCallback A;
    public ChipDrawable i;
    public InsetDrawable j;
    public RippleDrawable k;
    public View.OnClickListener l;
    public CompoundButton.OnCheckedChangeListener m;
    public MaterialCheckable.OnCheckedChangeListener n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public CharSequence v;
    public final ChipTouchHelper w;
    public boolean x;
    public final Rect y;
    public final RectF z;

    /* loaded from: classes3.dex */
    public class ChipTouchHelper extends ExploreByTouchHelper {
        public ChipTouchHelper(Chip chip) {
            super(chip);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void l(ArrayList arrayList) {
            ChipDrawable chipDrawable;
            arrayList.add(0);
            int i = Chip.B;
            Chip chip = Chip.this;
            if (chip.e() && (chipDrawable = chip.i) != null && chipDrawable.Y && chip.l != null) {
                arrayList.add(1);
            }
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final boolean o(int i, int i2) {
            boolean z = false;
            if (i2 == 16) {
                Chip chip = Chip.this;
                if (i == 0) {
                    return chip.performClick();
                }
                if (i == 1) {
                    chip.playSoundEffect(0);
                    View.OnClickListener onClickListener = chip.l;
                    if (onClickListener != null) {
                        onClickListener.onClick(chip);
                        z = true;
                    }
                    if (chip.x) {
                        chip.w.t(1, 1);
                    }
                }
            }
            return z;
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void p(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            boolean z;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            Chip chip = Chip.this;
            ChipDrawable chipDrawable = chip.i;
            if (chipDrawable != null && chipDrawable.e0) {
                z = true;
            } else {
                z = false;
            }
            accessibilityNodeInfo.setCheckable(z);
            accessibilityNodeInfo.setClickable(chip.isClickable());
            accessibilityNodeInfoCompat.k(chip.getAccessibilityClassName());
            accessibilityNodeInfoCompat.w(chip.getText());
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void q(int i, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            CharSequence charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (i == 1) {
                Chip chip = Chip.this;
                CharSequence closeIconContentDescription = chip.getCloseIconContentDescription();
                if (closeIconContentDescription != null) {
                    accessibilityNodeInfoCompat.n(closeIconContentDescription);
                } else {
                    CharSequence text = chip.getText();
                    Context context = chip.getContext();
                    int i2 = R.string.mtrl_chip_close_icon_content_description;
                    if (!TextUtils.isEmpty(text)) {
                        charSequence = text;
                    }
                    accessibilityNodeInfoCompat.n(context.getString(i2, charSequence).trim());
                }
                accessibilityNodeInfo.setBoundsInParent(chip.getCloseIconTouchBoundsInt());
                accessibilityNodeInfoCompat.b(AccessibilityNodeInfoCompat.AccessibilityActionCompat.g);
                accessibilityNodeInfo.setEnabled(chip.isEnabled());
                accessibilityNodeInfoCompat.k(Button.class.getName());
                return;
            }
            accessibilityNodeInfoCompat.n(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            accessibilityNodeInfo.setBoundsInParent(Chip.C);
        }

        @Override // androidx.customview.widget.ExploreByTouchHelper
        public final void r(int i, boolean z) {
            int[] iArr;
            Chip chip = Chip.this;
            if (i == 1) {
                chip.r = z;
            }
            ChipDrawable chipDrawable = chip.i;
            boolean z2 = chip.r;
            boolean z3 = false;
            if (chipDrawable.Z != null) {
                if (z2) {
                    iArr = new int[]{android.R.attr.state_pressed, android.R.attr.state_enabled};
                } else {
                    iArr = ChipDrawable.T0;
                }
                z3 = chipDrawable.U(iArr);
            }
            if (z3) {
                chip.refreshDrawableState();
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Chip(android.content.Context r17, android.util.AttributeSet r18) {
        /*
            Method dump skipped, instructions count: 979
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public RectF getCloseIconTouchBounds() {
        RectF rectF = this.z;
        rectF.setEmpty();
        if (e() && this.l != null) {
            ChipDrawable chipDrawable = this.i;
            Rect bounds = chipDrawable.getBounds();
            rectF.setEmpty();
            if (chipDrawable.c0()) {
                float f = chipDrawable.r0 + chipDrawable.q0 + chipDrawable.c0 + chipDrawable.p0 + chipDrawable.o0;
                if (chipDrawable.getLayoutDirection() == 0) {
                    float f2 = bounds.right;
                    rectF.right = f2;
                    rectF.left = f2 - f;
                } else {
                    float f3 = bounds.left;
                    rectF.left = f3;
                    rectF.right = f3 + f;
                }
                rectF.top = bounds.top;
                rectF.bottom = bounds.bottom;
            }
        }
        return rectF;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @NonNull
    public Rect getCloseIconTouchBoundsInt() {
        RectF closeIconTouchBounds = getCloseIconTouchBounds();
        int i = (int) closeIconTouchBounds.left;
        int i2 = (int) closeIconTouchBounds.top;
        int i3 = (int) closeIconTouchBounds.right;
        int i4 = (int) closeIconTouchBounds.bottom;
        Rect rect = this.y;
        rect.set(i, i2, i3, i4);
        return rect;
    }

    @Nullable
    private TextAppearance getTextAppearance() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.y0.g;
        }
        return null;
    }

    private void setCloseIconHovered(boolean z) {
        if (this.q != z) {
            this.q = z;
            refreshDrawableState();
        }
    }

    private void setCloseIconPressed(boolean z) {
        if (this.p != z) {
            this.p = z;
            refreshDrawableState();
        }
    }

    @Override // com.google.android.material.chip.ChipDrawable.Delegate
    public final void a() {
        d(this.u);
        requestLayout();
        invalidateOutline();
    }

    public final void d(int i) {
        int i2;
        this.u = i;
        int i3 = 0;
        if (!this.s) {
            InsetDrawable insetDrawable = this.j;
            if (insetDrawable != null) {
                if (insetDrawable != null) {
                    this.j = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
            g();
            return;
        }
        int max = Math.max(0, i - ((int) this.i.N));
        int max2 = Math.max(0, i - this.i.getIntrinsicWidth());
        if (max2 <= 0 && max <= 0) {
            InsetDrawable insetDrawable2 = this.j;
            if (insetDrawable2 != null) {
                if (insetDrawable2 != null) {
                    this.j = null;
                    setMinWidth(0);
                    setMinHeight((int) getChipMinHeight());
                    g();
                    return;
                }
                return;
            }
            g();
            return;
        }
        if (max2 > 0) {
            i2 = max2 / 2;
        } else {
            i2 = 0;
        }
        if (max > 0) {
            i3 = max / 2;
        }
        int i4 = i3;
        if (this.j != null) {
            Rect rect = new Rect();
            this.j.getPadding(rect);
            if (rect.top == i4 && rect.bottom == i4 && rect.left == i2 && rect.right == i2) {
                g();
                return;
            }
        }
        if (getMinHeight() != i) {
            setMinHeight(i);
        }
        if (getMinWidth() != i) {
            setMinWidth(i);
        }
        this.j = new InsetDrawable((Drawable) this.i, i2, i4, i2, i4);
        g();
    }

    @Override // android.view.View
    public final boolean dispatchHoverEvent(MotionEvent motionEvent) {
        int i;
        if (!this.x) {
            return super.dispatchHoverEvent(motionEvent);
        }
        ChipTouchHelper chipTouchHelper = this.w;
        AccessibilityManager accessibilityManager = chipTouchHelper.h;
        int i2 = 0;
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            int action = motionEvent.getAction();
            if (action != 7 && action != 9) {
                if (action == 10 && (i = chipTouchHelper.m) != Integer.MIN_VALUE) {
                    if (i != Integer.MIN_VALUE) {
                        chipTouchHelper.m = IntCompanionObject.MIN_VALUE;
                        chipTouchHelper.t(IntCompanionObject.MIN_VALUE, Uuid.SIZE_BITS);
                        chipTouchHelper.t(i, 256);
                    }
                }
            } else {
                float x = motionEvent.getX();
                float y = motionEvent.getY();
                Chip chip = Chip.this;
                if (chip.e() && chip.getCloseIconTouchBounds().contains(x, y)) {
                    i2 = 1;
                }
                int i3 = chipTouchHelper.m;
                if (i3 != i2) {
                    chipTouchHelper.m = i2;
                    chipTouchHelper.t(i2, Uuid.SIZE_BITS);
                    chipTouchHelper.t(i3, 256);
                }
            }
            return true;
        }
        if (!super.dispatchHoverEvent(motionEvent)) {
            return false;
        }
        return true;
    }

    @Override // android.view.View
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        if (!this.x) {
            return super.dispatchKeyEvent(keyEvent);
        }
        ChipTouchHelper chipTouchHelper = this.w;
        chipTouchHelper.getClass();
        boolean z = false;
        int i = 0;
        z = false;
        z = false;
        z = false;
        z = false;
        z = false;
        if (keyEvent.getAction() != 1) {
            int keyCode = keyEvent.getKeyCode();
            if (keyCode != 61) {
                int i2 = 66;
                if (keyCode != 66) {
                    switch (keyCode) {
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                            if (keyEvent.hasNoModifiers()) {
                                if (keyCode != 19) {
                                    if (keyCode != 21) {
                                        if (keyCode != 22) {
                                            i2 = 130;
                                        }
                                    } else {
                                        i2 = 17;
                                    }
                                } else {
                                    i2 = 33;
                                }
                                int repeatCount = keyEvent.getRepeatCount() + 1;
                                boolean z2 = false;
                                while (i < repeatCount && chipTouchHelper.m(i2, null)) {
                                    i++;
                                    z2 = true;
                                }
                                z = z2;
                                break;
                            }
                            break;
                    }
                }
                if (keyEvent.hasNoModifiers() && keyEvent.getRepeatCount() == 0) {
                    int i3 = chipTouchHelper.l;
                    if (i3 != Integer.MIN_VALUE) {
                        chipTouchHelper.o(i3, 16);
                    }
                    z = true;
                }
            } else if (keyEvent.hasNoModifiers()) {
                z = chipTouchHelper.m(2, null);
            } else if (keyEvent.hasModifiers(1)) {
                z = chipTouchHelper.m(1, null);
            }
        }
        if (z && chipTouchHelper.l != Integer.MIN_VALUE) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [int, boolean] */
    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        ChipDrawable chipDrawable = this.i;
        boolean z = false;
        int i = 0;
        z = false;
        if (chipDrawable != null && ChipDrawable.C(chipDrawable.Z)) {
            ChipDrawable chipDrawable2 = this.i;
            ?? isEnabled = isEnabled();
            int i2 = isEnabled;
            if (this.r) {
                i2 = isEnabled + 1;
            }
            int i3 = i2;
            if (this.q) {
                i3 = i2 + 1;
            }
            int i4 = i3;
            if (this.p) {
                i4 = i3 + 1;
            }
            int i5 = i4;
            if (isChecked()) {
                i5 = i4 + 1;
            }
            int[] iArr = new int[i5];
            if (isEnabled()) {
                iArr[0] = 16842910;
                i = 1;
            }
            if (this.r) {
                iArr[i] = 16842908;
                i++;
            }
            if (this.q) {
                iArr[i] = 16843623;
                i++;
            }
            if (this.p) {
                iArr[i] = 16842919;
                i++;
            }
            if (isChecked()) {
                iArr[i] = 16842913;
            }
            z = chipDrawable2.U(iArr);
        }
        if (z) {
            invalidate();
        }
    }

    public final boolean e() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            Object obj = chipDrawable.Z;
            if (obj != null) {
                if (obj instanceof WrappedDrawable) {
                    obj = ((WrappedDrawable) obj).b();
                }
            } else {
                obj = null;
            }
            if (obj != null) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final void f() {
        ChipDrawable chipDrawable;
        if (e() && (chipDrawable = this.i) != null && chipDrawable.Y && this.l != null) {
            ViewCompat.z(this, this.w);
            this.x = true;
        } else {
            ViewCompat.z(this, null);
            this.x = false;
        }
    }

    public final void g() {
        this.k = new RippleDrawable(RippleUtils.c(this.i.R), getBackgroundDrawable(), null);
        this.i.getClass();
        setBackground(this.k);
        h();
    }

    @Override // android.widget.CheckBox, android.widget.CompoundButton, android.widget.Button, android.widget.TextView, android.view.View
    @NonNull
    public CharSequence getAccessibilityClassName() {
        if (!TextUtils.isEmpty(this.v)) {
            return this.v;
        }
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.e0) {
            if (getParent() instanceof ChipGroup) {
                throw null;
            }
            return "android.widget.Button";
        }
        if (isClickable()) {
            return "android.widget.Button";
        }
        return "android.view.View";
    }

    @Nullable
    public Drawable getBackgroundDrawable() {
        InsetDrawable insetDrawable = this.j;
        if (insetDrawable == null) {
            return this.i;
        }
        return insetDrawable;
    }

    @Nullable
    public Drawable getCheckedIcon() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.g0;
        }
        return null;
    }

    @Nullable
    public ColorStateList getCheckedIconTint() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.h0;
        }
        return null;
    }

    @Nullable
    public ColorStateList getChipBackgroundColor() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.M;
        }
        return null;
    }

    public float getChipCornerRadius() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable == null) {
            return 0.0f;
        }
        return Math.max(0.0f, chipDrawable.A());
    }

    public Drawable getChipDrawable() {
        return this.i;
    }

    public float getChipEndPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.r0;
        }
        return 0.0f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public Drawable getChipIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable == null || (drawable = chipDrawable.U) == 0) {
            return null;
        }
        if (drawable instanceof WrappedDrawable) {
            return ((WrappedDrawable) drawable).b();
        }
        return drawable;
    }

    public float getChipIconSize() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.W;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipIconTint() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.V;
        }
        return null;
    }

    public float getChipMinHeight() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.N;
        }
        return 0.0f;
    }

    public float getChipStartPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.k0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getChipStrokeColor() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.P;
        }
        return null;
    }

    public float getChipStrokeWidth() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.Q;
        }
        return 0.0f;
    }

    @Deprecated
    public CharSequence getChipText() {
        return getText();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public Drawable getCloseIcon() {
        Drawable drawable;
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable == null || (drawable = chipDrawable.Z) == 0) {
            return null;
        }
        if (drawable instanceof WrappedDrawable) {
            return ((WrappedDrawable) drawable).b();
        }
        return drawable;
    }

    @Nullable
    public CharSequence getCloseIconContentDescription() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.d0;
        }
        return null;
    }

    public float getCloseIconEndPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.q0;
        }
        return 0.0f;
    }

    public float getCloseIconSize() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.c0;
        }
        return 0.0f;
    }

    public float getCloseIconStartPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.p0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getCloseIconTint() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.b0;
        }
        return null;
    }

    @Override // android.widget.TextView
    @Nullable
    public TextUtils.TruncateAt getEllipsize() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.P0;
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    public final void getFocusedRect(Rect rect) {
        if (this.x) {
            ChipTouchHelper chipTouchHelper = this.w;
            if (chipTouchHelper.l == 1 || chipTouchHelper.k == 1) {
                rect.set(getCloseIconTouchBoundsInt());
                return;
            }
        }
        super.getFocusedRect(rect);
    }

    @Nullable
    public MotionSpec getHideMotionSpec() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.j0;
        }
        return null;
    }

    public float getIconEndPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.m0;
        }
        return 0.0f;
    }

    public float getIconStartPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.l0;
        }
        return 0.0f;
    }

    @Nullable
    public ColorStateList getRippleColor() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.R;
        }
        return null;
    }

    @Override // com.google.android.material.shape.Shapeable
    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.i.f.f11880a;
    }

    @Nullable
    public MotionSpec getShowMotionSpec() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.i0;
        }
        return null;
    }

    public float getTextEndPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.o0;
        }
        return 0.0f;
    }

    public float getTextStartPadding() {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            return chipDrawable.n0;
        }
        return 0.0f;
    }

    public final void h() {
        ChipDrawable chipDrawable;
        if (!TextUtils.isEmpty(getText()) && (chipDrawable = this.i) != null) {
            int z = (int) (chipDrawable.z() + chipDrawable.r0 + chipDrawable.o0);
            ChipDrawable chipDrawable2 = this.i;
            int y = (int) (chipDrawable2.y() + chipDrawable2.k0 + chipDrawable2.n0);
            if (this.j != null) {
                Rect rect = new Rect();
                this.j.getPadding(rect);
                y += rect.left;
                z += rect.right;
            }
            setPaddingRelative(y, getPaddingTop(), z, getPaddingBottom());
        }
    }

    public final void i() {
        TextPaint paint = getPaint();
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            paint.drawableState = chipDrawable.getState();
        }
        TextAppearance textAppearance = getTextAppearance();
        if (textAppearance != null) {
            textAppearance.d(getContext(), paint, this.A);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        MaterialShapeUtils.c(this, this.i);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public final int[] onCreateDrawableState(int i) {
        int[] onCreateDrawableState = super.onCreateDrawableState(i + 2);
        if (isChecked()) {
            View.mergeDrawableStates(onCreateDrawableState, D);
        }
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.e0) {
            View.mergeDrawableStates(onCreateDrawableState, E);
        }
        return onCreateDrawableState;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onFocusChanged(boolean z, int i, Rect rect) {
        super.onFocusChanged(z, i, rect);
        if (this.x) {
            ChipTouchHelper chipTouchHelper = this.w;
            int i2 = chipTouchHelper.l;
            if (i2 != Integer.MIN_VALUE) {
                chipTouchHelper.j(i2);
            }
            if (z) {
                chipTouchHelper.m(i, rect);
            }
        }
    }

    @Override // android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 7) {
            if (actionMasked == 10) {
                setCloseIconHovered(false);
            }
        } else {
            setCloseIconHovered(getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()));
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        boolean z;
        int i;
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(getAccessibilityClassName());
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.e0) {
            z = true;
        } else {
            z = false;
        }
        accessibilityNodeInfo.setCheckable(z);
        accessibilityNodeInfo.setClickable(isClickable());
        if (getParent() instanceof ChipGroup) {
            ChipGroup chipGroup = (ChipGroup) getParent();
            AccessibilityNodeInfoCompat accessibilityNodeInfoCompat = new AccessibilityNodeInfoCompat(accessibilityNodeInfo);
            int i2 = -1;
            if (chipGroup.g) {
                i = 0;
                for (int i3 = 0; i3 < chipGroup.getChildCount(); i3++) {
                    View childAt = chipGroup.getChildAt(i3);
                    if ((childAt instanceof Chip) && chipGroup.getChildAt(i3).getVisibility() == 0) {
                        if (((Chip) childAt) == this) {
                            break;
                        } else {
                            i++;
                        }
                    }
                }
            }
            i = -1;
            Object tag = getTag(R.id.row_index_key);
            if (tag instanceof Integer) {
                i2 = ((Integer) tag).intValue();
            }
            accessibilityNodeInfoCompat.m(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.a(isChecked(), i2, 1, i, 1));
        }
    }

    @Override // android.widget.Button, android.widget.TextView, android.view.View
    public final PointerIcon onResolvePointerIcon(MotionEvent motionEvent, int i) {
        if (getCloseIconTouchBounds().contains(motionEvent.getX(), motionEvent.getY()) && isEnabled()) {
            return PointerIcon.getSystemIcon(getContext(), 1002);
        }
        return super.onResolvePointerIcon(motionEvent, i);
    }

    @Override // android.widget.TextView, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        if (this.t != i) {
            this.t = i;
            h();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001e, code lost:
    
        if (r0 != 3) goto L28;
     */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            int r0 = r6.getActionMasked()
            android.graphics.RectF r1 = r5.getCloseIconTouchBounds()
            float r2 = r6.getX()
            float r3 = r6.getY()
            boolean r1 = r1.contains(r2, r3)
            r2 = 1
            r3 = 0
            if (r0 == 0) goto L4a
            if (r0 == r2) goto L2c
            r4 = 2
            if (r0 == r4) goto L21
            r1 = 3
            if (r0 == r1) goto L45
            goto L50
        L21:
            boolean r0 = r5.p
            if (r0 == 0) goto L50
            if (r1 != 0) goto L2a
            r5.setCloseIconPressed(r3)
        L2a:
            r0 = r2
            goto L51
        L2c:
            boolean r0 = r5.p
            if (r0 == 0) goto L45
            r5.playSoundEffect(r3)
            android.view.View$OnClickListener r0 = r5.l
            if (r0 == 0) goto L3a
            r0.onClick(r5)
        L3a:
            boolean r0 = r5.x
            if (r0 == 0) goto L43
            com.google.android.material.chip.Chip$ChipTouchHelper r0 = r5.w
            r0.t(r2, r2)
        L43:
            r0 = r2
            goto L46
        L45:
            r0 = r3
        L46:
            r5.setCloseIconPressed(r3)
            goto L51
        L4a:
            if (r1 == 0) goto L50
            r5.setCloseIconPressed(r2)
            goto L2a
        L50:
            r0 = r3
        L51:
            if (r0 != 0) goto L5b
            boolean r6 = super.onTouchEvent(r6)
            if (r6 == 0) goto L5a
            goto L5b
        L5a:
            return r3
        L5b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.chip.Chip.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public void setAccessibilityClassName(@Nullable CharSequence charSequence) {
        this.v = charSequence;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.k) {
            Log.w("Chip", "Do not set the background; Chip manages its own background drawable.");
        } else {
            super.setBackground(drawable);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        Log.w("Chip", "Do not set the background color; Chip manages its own background drawable.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != getBackgroundDrawable() && drawable != this.k) {
            Log.w("Chip", "Do not set the background drawable; Chip manages its own background drawable.");
        } else {
            super.setBackgroundDrawable(drawable);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.view.View
    public void setBackgroundResource(int i) {
        Log.w("Chip", "Do not set the background resource; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintList(@Nullable ColorStateList colorStateList) {
        Log.w("Chip", "Do not set the background tint list; Chip manages its own background drawable.");
    }

    @Override // android.view.View
    public void setBackgroundTintMode(@Nullable PorterDuff.Mode mode) {
        Log.w("Chip", "Do not set the background tint mode; Chip manages its own background drawable.");
    }

    public void setCheckable(boolean z) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.F(z);
        }
    }

    public void setCheckableResource(@BoolRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.F(chipDrawable.s0.getResources().getBoolean(i));
        }
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable == null) {
            this.o = z;
        } else if (chipDrawable.e0) {
            super.setChecked(z);
        }
    }

    public void setCheckedIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.G(drawable);
        }
    }

    @Deprecated
    public void setCheckedIconEnabled(boolean z) {
        setCheckedIconVisible(z);
    }

    @Deprecated
    public void setCheckedIconEnabledResource(@BoolRes int i) {
        setCheckedIconVisible(i);
    }

    public void setCheckedIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.G(AppCompatResources.a(chipDrawable.s0, i));
        }
    }

    public void setCheckedIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.H(colorStateList);
        }
    }

    public void setCheckedIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.H(ContextCompat.c(chipDrawable.s0, i));
        }
    }

    public void setCheckedIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.I(chipDrawable.s0.getResources().getBoolean(i));
        }
    }

    public void setChipBackgroundColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.M != colorStateList) {
            chipDrawable.M = colorStateList;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
    }

    public void setChipBackgroundColorResource(@ColorRes int i) {
        ColorStateList c2;
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.M != (c2 = ContextCompat.c(chipDrawable.s0, i))) {
            chipDrawable.M = c2;
            chipDrawable.onStateChange(chipDrawable.getState());
        }
    }

    @Deprecated
    public void setChipCornerRadius(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.J(f);
        }
    }

    @Deprecated
    public void setChipCornerRadiusResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.J(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setChipDrawable(@NonNull ChipDrawable chipDrawable) {
        ChipDrawable chipDrawable2 = this.i;
        if (chipDrawable2 != chipDrawable) {
            if (chipDrawable2 != null) {
                chipDrawable2.O0 = new WeakReference(null);
            }
            this.i = chipDrawable;
            chipDrawable.Q0 = false;
            chipDrawable.O0 = new WeakReference(this);
            d(this.u);
        }
    }

    public void setChipEndPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.r0 != f) {
            chipDrawable.r0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.D();
        }
    }

    public void setChipEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float dimension = chipDrawable.s0.getResources().getDimension(i);
            if (chipDrawable.r0 != dimension) {
                chipDrawable.r0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.D();
            }
        }
    }

    public void setChipIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.K(drawable);
        }
    }

    @Deprecated
    public void setChipIconEnabled(boolean z) {
        setChipIconVisible(z);
    }

    @Deprecated
    public void setChipIconEnabledResource(@BoolRes int i) {
        setChipIconVisible(i);
    }

    public void setChipIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.K(AppCompatResources.a(chipDrawable.s0, i));
        }
    }

    public void setChipIconSize(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.L(f);
        }
    }

    public void setChipIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.L(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setChipIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.M(colorStateList);
        }
    }

    public void setChipIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.M(ContextCompat.c(chipDrawable.s0, i));
        }
    }

    public void setChipIconVisible(@BoolRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.N(chipDrawable.s0.getResources().getBoolean(i));
        }
    }

    public void setChipMinHeight(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.N != f) {
            chipDrawable.N = f;
            chipDrawable.invalidateSelf();
            chipDrawable.D();
        }
    }

    public void setChipMinHeightResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float dimension = chipDrawable.s0.getResources().getDimension(i);
            if (chipDrawable.N != dimension) {
                chipDrawable.N = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.D();
            }
        }
    }

    public void setChipStartPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.k0 != f) {
            chipDrawable.k0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.D();
        }
    }

    public void setChipStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float dimension = chipDrawable.s0.getResources().getDimension(i);
            if (chipDrawable.k0 != dimension) {
                chipDrawable.k0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.D();
            }
        }
    }

    public void setChipStrokeColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.O(colorStateList);
        }
    }

    public void setChipStrokeColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.O(ContextCompat.c(chipDrawable.s0, i));
        }
    }

    public void setChipStrokeWidth(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.P(f);
        }
    }

    public void setChipStrokeWidthResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.P(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    @Deprecated
    public void setChipText(@Nullable CharSequence charSequence) {
        setText(charSequence);
    }

    @Deprecated
    public void setChipTextResource(@StringRes int i) {
        setText(getResources().getString(i));
    }

    public void setCloseIcon(@Nullable Drawable drawable) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Q(drawable);
        }
        f();
    }

    public void setCloseIconContentDescription(@Nullable CharSequence charSequence) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.d0 != charSequence) {
            BidiFormatter c2 = BidiFormatter.c();
            c2.getClass();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f750a;
            chipDrawable.d0 = c2.d(charSequence);
            chipDrawable.invalidateSelf();
        }
    }

    @Deprecated
    public void setCloseIconEnabled(boolean z) {
        setCloseIconVisible(z);
    }

    @Deprecated
    public void setCloseIconEnabledResource(@BoolRes int i) {
        setCloseIconVisible(i);
    }

    public void setCloseIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.R(f);
        }
    }

    public void setCloseIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.R(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setCloseIconResource(@DrawableRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Q(AppCompatResources.a(chipDrawable.s0, i));
        }
        f();
    }

    public void setCloseIconSize(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.S(f);
        }
    }

    public void setCloseIconSizeResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.S(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setCloseIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.T(f);
        }
    }

    public void setCloseIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.T(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setCloseIconTint(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.V(colorStateList);
        }
    }

    public void setCloseIconTintResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.V(ContextCompat.c(chipDrawable.s0, i));
        }
    }

    public void setCloseIconVisible(@BoolRes int i) {
        setCloseIconVisible(getResources().getBoolean(i));
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // androidx.appcompat.widget.AppCompatCheckBox, android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable == null) {
            if (drawable3 == null) {
                super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
                return;
            }
            throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
        }
        throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(int i, int i2, int i3, int i4) {
        if (i != 0) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (i3 == 0) {
            super.setCompoundDrawablesWithIntrinsicBounds(i, i2, i3, i4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.n(f);
        }
    }

    @Override // android.widget.TextView
    public void setEllipsize(TextUtils.TruncateAt truncateAt) {
        if (this.i != null) {
            if (truncateAt != TextUtils.TruncateAt.MARQUEE) {
                super.setEllipsize(truncateAt);
                ChipDrawable chipDrawable = this.i;
                if (chipDrawable != null) {
                    chipDrawable.P0 = truncateAt;
                    return;
                }
                return;
            }
            throw new UnsupportedOperationException("Text within a chip are not allowed to scroll.");
        }
    }

    public void setEnsureMinTouchTargetSize(boolean z) {
        this.s = z;
        d(this.u);
    }

    @Override // android.widget.TextView
    public void setGravity(int i) {
        if (i != 8388627) {
            Log.w("Chip", "Chip text must be vertically center and start aligned");
        } else {
            super.setGravity(i);
        }
    }

    public void setHideMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.j0 = motionSpec;
        }
    }

    public void setHideMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.j0 = MotionSpec.a(chipDrawable.s0, i);
        }
    }

    public void setIconEndPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.X(f);
        }
    }

    public void setIconEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.X(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    public void setIconStartPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Y(f);
        }
    }

    public void setIconStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Y(chipDrawable.s0.getResources().getDimension(i));
        }
    }

    @RestrictTo
    public void setInternalOnCheckedChangeListener(@Nullable MaterialCheckable.OnCheckedChangeListener<Chip> onCheckedChangeListener) {
        this.n = onCheckedChangeListener;
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        if (this.i == null) {
            return;
        }
        super.setLayoutDirection(i);
    }

    @Override // android.widget.TextView
    public void setLines(int i) {
        if (i <= 1) {
            super.setLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxLines(int i) {
        if (i <= 1) {
            super.setMaxLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public void setMaxWidth(@Px int i) {
        super.setMaxWidth(i);
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.R0 = i;
        }
    }

    @Override // android.widget.TextView
    public void setMinLines(int i) {
        if (i <= 1) {
            super.setMinLines(i);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.CompoundButton
    public void setOnCheckedChangeListener(@Nullable CompoundButton.OnCheckedChangeListener onCheckedChangeListener) {
        this.m = onCheckedChangeListener;
    }

    public void setOnCloseIconClickListener(View.OnClickListener onClickListener) {
        this.l = onClickListener;
        f();
    }

    public void setRippleColor(@Nullable ColorStateList colorStateList) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Z(colorStateList);
        }
        this.i.getClass();
        g();
    }

    public void setRippleColorResource(@ColorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.Z(ContextCompat.c(chipDrawable.s0, i));
            this.i.getClass();
            g();
        }
    }

    @Override // com.google.android.material.shape.Shapeable
    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        this.i.setShapeAppearanceModel(shapeAppearanceModel);
    }

    public void setShowMotionSpec(@Nullable MotionSpec motionSpec) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.i0 = motionSpec;
        }
    }

    public void setShowMotionSpecResource(@AnimatorRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.i0 = MotionSpec.a(chipDrawable.s0, i);
        }
    }

    @Override // android.widget.TextView
    public void setSingleLine(boolean z) {
        if (z) {
            super.setSingleLine(z);
            return;
        }
        throw new UnsupportedOperationException("Chip does not support multi-line text");
    }

    @Override // android.widget.TextView
    public final void setText(CharSequence charSequence, TextView.BufferType bufferType) {
        CharSequence charSequence2;
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            if (charSequence == null) {
                charSequence = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (chipDrawable.Q0) {
                charSequence2 = null;
            } else {
                charSequence2 = charSequence;
            }
            super.setText(charSequence2, bufferType);
            ChipDrawable chipDrawable2 = this.i;
            if (chipDrawable2 != null && !TextUtils.equals(chipDrawable2.S, charSequence)) {
                chipDrawable2.S = charSequence;
                chipDrawable2.y0.e = true;
                chipDrawable2.invalidateSelf();
                chipDrawable2.D();
            }
        }
    }

    public void setTextAppearance(@Nullable TextAppearance textAppearance) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.y0.c(textAppearance, chipDrawable.s0);
        }
        i();
    }

    public void setTextAppearanceResource(@StyleRes int i) {
        setTextAppearance(getContext(), i);
    }

    public void setTextEndPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.o0 != f) {
            chipDrawable.o0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.D();
        }
    }

    public void setTextEndPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float dimension = chipDrawable.s0.getResources().getDimension(i);
            if (chipDrawable.o0 != dimension) {
                chipDrawable.o0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.D();
            }
        }
    }

    @Override // android.widget.TextView
    public final void setTextSize(int i, float f) {
        super.setTextSize(i, f);
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float applyDimension = TypedValue.applyDimension(i, f, getResources().getDisplayMetrics());
            TextDrawableHelper textDrawableHelper = chipDrawable.y0;
            TextAppearance textAppearance = textDrawableHelper.g;
            if (textAppearance != null) {
                textAppearance.l = applyDimension;
                textDrawableHelper.f11815a.setTextSize(applyDimension);
                chipDrawable.a();
            }
        }
        i();
    }

    public void setTextStartPadding(float f) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null && chipDrawable.n0 != f) {
            chipDrawable.n0 = f;
            chipDrawable.invalidateSelf();
            chipDrawable.D();
        }
    }

    public void setTextStartPaddingResource(@DimenRes int i) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            float dimension = chipDrawable.s0.getResources().getDimension(i);
            if (chipDrawable.n0 != dimension) {
                chipDrawable.n0 = dimension;
                chipDrawable.invalidateSelf();
                chipDrawable.D();
            }
        }
    }

    public void setCloseIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.W(z);
        }
        f();
    }

    public void setCheckedIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.I(z);
        }
    }

    public void setChipIconVisible(boolean z) {
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            chipDrawable.N(z);
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelativeWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set start drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set end drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesWithIntrinsicBounds(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        if (drawable != null) {
            throw new UnsupportedOperationException("Please set left drawable using R.attr#chipIcon.");
        }
        if (drawable3 == null) {
            super.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
            return;
        }
        throw new UnsupportedOperationException("Please set right drawable using R.attr#closeIcon.");
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            Context context2 = chipDrawable.s0;
            chipDrawable.y0.c(new TextAppearance(context2, i), context2);
        }
        i();
    }

    @Override // android.widget.TextView
    public void setTextAppearance(int i) {
        super.setTextAppearance(i);
        ChipDrawable chipDrawable = this.i;
        if (chipDrawable != null) {
            Context context = chipDrawable.s0;
            chipDrawable.y0.c(new TextAppearance(context, i), context);
        }
        i();
    }
}
