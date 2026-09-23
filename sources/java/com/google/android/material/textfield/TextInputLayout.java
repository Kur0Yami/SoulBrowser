package com.google.android.material.textfield;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.Editable;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStructure;
import android.view.ViewTreeObserver;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DimenRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.VisibleForTesting;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatDrawableManager;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.DrawableUtils;
import androidx.core.graphics.ColorUtils;
import androidx.core.text.BidiFormatter;
import androidx.core.text.TextDirectionHeuristicCompat;
import androidx.core.text.TextDirectionHeuristicsCompat;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.customview.view.AbsSavedState;
import androidx.transition.Fade;
import androidx.transition.TransitionManager;
import androidx.transition.Visibility;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.color.MaterialColors;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.CollapsingTextHelper;
import com.google.android.material.internal.DescendantOffsetUtils;
import com.google.android.material.internal.StaticLayoutBuilderCompat;
import com.google.android.material.motion.MotionUtils;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.CornerTreatment;
import com.google.android.material.shape.MaterialShapeDrawable;
import com.google.android.material.shape.MaterialShapeUtils;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.CutoutDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes3.dex */
public class TextInputLayout extends LinearLayout implements ViewTreeObserver.OnGlobalLayoutListener {
    public static final int H0 = R.style.Widget_Design_TextInputLayout;
    public static final int[][] I0 = {new int[]{android.R.attr.state_pressed}, new int[0]};
    public int A;
    public final CollapsingTextHelper A0;
    public Fade B;
    public boolean B0;
    public Fade C;
    public boolean C0;
    public ColorStateList D;
    public ValueAnimator D0;
    public ColorStateList E;
    public boolean E0;
    public ColorStateList F;
    public boolean F0;
    public ColorStateList G;
    public boolean G0;
    public boolean H;
    public CharSequence I;
    public boolean J;
    public MaterialShapeDrawable K;
    public MaterialShapeDrawable L;
    public StateListDrawable M;
    public boolean N;
    public MaterialShapeDrawable O;
    public MaterialShapeDrawable P;
    public ShapeAppearanceModel Q;
    public boolean R;
    public final int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int a0;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public final FrameLayout f11978c;
    public int c0;
    public final Rect d0;
    public final Rect e0;
    public final StartCompoundLayout f;
    public final RectF f0;
    public final EndCompoundLayout g;
    public Typeface g0;
    public final int h;
    public ColorDrawable h0;
    public EditText i;
    public int i0;
    public CharSequence j;
    public final LinkedHashSet j0;
    public int k;
    public ColorDrawable k0;
    public int l;
    public int l0;
    public int m;
    public Drawable m0;
    public int n;
    public ColorStateList n0;
    public final IndicatorViewController o;
    public ColorStateList o0;
    public boolean p;
    public int p0;
    public int q;
    public int q0;
    public boolean r;
    public int r0;
    public LengthCounter s;
    public ColorStateList s0;
    public AppCompatTextView t;
    public int t0;
    public int u;
    public int u0;
    public int v;
    public int v0;
    public CharSequence w;
    public int w0;
    public boolean x;
    public int x0;
    public AppCompatTextView y;
    public int y0;
    public ColorStateList z;
    public boolean z0;

    /* renamed from: com.google.android.material.textfield.TextInputLayout$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 extends AccessibilityDelegateCompat {
        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            accessibilityNodeInfo.setVisibleToUser(false);
        }
    }

    /* loaded from: classes3.dex */
    public static class AccessibilityDelegate extends AccessibilityDelegateCompat {
        public final TextInputLayout d;

        public AccessibilityDelegate(TextInputLayout textInputLayout) {
            this.d = textInputLayout;
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            CharSequence charSequence;
            boolean z;
            String str;
            AccessibilityNodeInfo accessibilityNodeInfo = accessibilityNodeInfoCompat.f834a;
            this.f760a.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
            TextInputLayout textInputLayout = this.d;
            EditText editText = textInputLayout.getEditText();
            if (editText != null) {
                charSequence = editText.getText();
            } else {
                charSequence = null;
            }
            CharSequence hint = textInputLayout.getHint();
            CharSequence error = textInputLayout.getError();
            CharSequence placeholderText = textInputLayout.getPlaceholderText();
            int counterMaxLength = textInputLayout.getCounterMaxLength();
            CharSequence counterOverflowDescription = textInputLayout.getCounterOverflowDescription();
            boolean isEmpty = TextUtils.isEmpty(charSequence);
            boolean isEmpty2 = TextUtils.isEmpty(hint);
            boolean z2 = textInputLayout.z0;
            boolean isEmpty3 = TextUtils.isEmpty(error);
            if (isEmpty3 && TextUtils.isEmpty(counterOverflowDescription)) {
                z = false;
            } else {
                z = true;
            }
            if (!isEmpty2) {
                str = hint.toString();
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            StartCompoundLayout startCompoundLayout = textInputLayout.f;
            AppCompatTextView appCompatTextView = startCompoundLayout.f;
            if (appCompatTextView.getVisibility() == 0) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView);
                accessibilityNodeInfo.setTraversalAfter(appCompatTextView);
            } else {
                accessibilityNodeInfo.setTraversalAfter(startCompoundLayout.h);
            }
            if (!isEmpty) {
                accessibilityNodeInfoCompat.w(charSequence);
            } else if (!TextUtils.isEmpty(str)) {
                accessibilityNodeInfoCompat.w(str);
                if (!z2 && placeholderText != null) {
                    accessibilityNodeInfoCompat.w(str + ", " + ((Object) placeholderText));
                }
            } else if (placeholderText != null) {
                accessibilityNodeInfoCompat.w(placeholderText);
            }
            if (!TextUtils.isEmpty(str)) {
                if (Build.VERSION.SDK_INT >= 26) {
                    accessibilityNodeInfoCompat.q(str);
                } else {
                    if (!isEmpty) {
                        str = ((Object) charSequence) + ", " + str;
                    }
                    accessibilityNodeInfoCompat.w(str);
                }
                accessibilityNodeInfoCompat.u(isEmpty);
            }
            if (charSequence == null || charSequence.length() != counterMaxLength) {
                counterMaxLength = -1;
            }
            accessibilityNodeInfo.setMaxTextLength(counterMaxLength);
            if (z) {
                if (isEmpty3) {
                    error = counterOverflowDescription;
                }
                accessibilityNodeInfo.setError(error);
            }
            AppCompatTextView appCompatTextView2 = textInputLayout.o.y;
            if (appCompatTextView2 != null) {
                accessibilityNodeInfo.setLabelFor(appCompatTextView2);
            }
            textInputLayout.g.b().m(accessibilityNodeInfoCompat);
        }

        @Override // androidx.core.view.AccessibilityDelegateCompat
        public final void e(View view, AccessibilityEvent accessibilityEvent) {
            super.e(view, accessibilityEvent);
            this.d.g.b().n(accessibilityEvent);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface BoxBackgroundMode {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes3.dex */
    public @interface EndIconMode {
    }

    /* loaded from: classes3.dex */
    public interface LengthCounter {
        int b(Editable editable);
    }

    /* loaded from: classes3.dex */
    public interface OnEditTextAttachedListener {
        void a(TextInputLayout textInputLayout);
    }

    /* loaded from: classes3.dex */
    public interface OnEndIconChangedListener {
        void a();
    }

    /* loaded from: classes3.dex */
    public static class SavedState extends AbsSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Object();
        public CharSequence g;
        public boolean h;

        /* renamed from: com.google.android.material.textfield.TextInputLayout$SavedState$1, reason: invalid class name */
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
            this.g = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.h = parcel.readInt() == 1;
        }

        public final String toString() {
            return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.g) + "}";
        }

        @Override // androidx.customview.view.AbsSavedState, android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            TextUtils.writeToParcel(this.g, parcel, i);
            parcel.writeInt(this.h ? 1 : 0);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.material.textfield.TextInputLayout$LengthCounter, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public TextInputLayout(@androidx.annotation.NonNull android.content.Context r18, @androidx.annotation.Nullable android.util.AttributeSet r19) {
        /*
            Method dump skipped, instructions count: 940
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    @Nullable
    private Drawable getEditTextBoxBackground() {
        int i;
        EditText editText = this.i;
        if ((editText instanceof AutoCompleteTextView) && editText.getInputType() == 0) {
            int c2 = MaterialColors.c(this.i, androidx.appcompat.R.attr.colorControlHighlight);
            int i2 = this.T;
            int[][] iArr = I0;
            if (i2 == 2) {
                Context context = getContext();
                MaterialShapeDrawable materialShapeDrawable = this.K;
                TypedValue c3 = MaterialAttributes.c(context, R.attr.colorSurface, "TextInputLayout");
                int i3 = c3.resourceId;
                if (i3 != 0) {
                    i = context.getColor(i3);
                } else {
                    i = c3.data;
                }
                MaterialShapeDrawable materialShapeDrawable2 = new MaterialShapeDrawable(materialShapeDrawable.f.f11880a);
                int g = MaterialColors.g(0.1f, c2, i);
                materialShapeDrawable2.o(new ColorStateList(iArr, new int[]{g, 0}));
                materialShapeDrawable2.setTint(i);
                ColorStateList colorStateList = new ColorStateList(iArr, new int[]{g, i});
                MaterialShapeDrawable materialShapeDrawable3 = new MaterialShapeDrawable(materialShapeDrawable.f.f11880a);
                materialShapeDrawable3.setTint(-1);
                return new LayerDrawable(new Drawable[]{new RippleDrawable(colorStateList, materialShapeDrawable2, materialShapeDrawable3), materialShapeDrawable});
            }
            if (i2 == 1) {
                MaterialShapeDrawable materialShapeDrawable4 = this.K;
                int i4 = this.c0;
                return new RippleDrawable(new ColorStateList(iArr, new int[]{MaterialColors.g(0.1f, c2, i4), i4}), materialShapeDrawable4, materialShapeDrawable4);
            }
            return null;
        }
        return this.K;
    }

    private Drawable getOrCreateFilledDropDownMenuBackground() {
        if (this.M == null) {
            StateListDrawable stateListDrawable = new StateListDrawable();
            this.M = stateListDrawable;
            stateListDrawable.addState(new int[]{android.R.attr.state_above_anchor}, getOrCreateOutlinedDropDownMenuBackground());
            this.M.addState(new int[0], h(false));
        }
        return this.M;
    }

    private Drawable getOrCreateOutlinedDropDownMenuBackground() {
        if (this.L == null) {
            this.L = h(true);
        }
        return this.L;
    }

    public static void m(ViewGroup viewGroup, boolean z) {
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            childAt.setEnabled(z);
            if (childAt instanceof ViewGroup) {
                m((ViewGroup) childAt, z);
            }
        }
    }

    private void setEditText(EditText editText) {
        if (this.i == null) {
            if (getEndIconMode() != 3 && !(editText instanceof TextInputEditText)) {
                Log.i("TextInputLayout", "EditText added is not a TextInputEditText. Please switch to using that class instead.");
            }
            this.i = editText;
            int i = this.k;
            if (i != -1) {
                setMinEms(i);
            } else {
                setMinWidth(this.m);
            }
            int i2 = this.l;
            if (i2 != -1) {
                setMaxEms(i2);
            } else {
                setMaxWidth(this.n);
            }
            this.N = false;
            k();
            setTextInputAccessibilityDelegate(new AccessibilityDelegate(this));
            Typeface typeface = this.i.getTypeface();
            CollapsingTextHelper collapsingTextHelper = this.A0;
            boolean n = collapsingTextHelper.n(typeface);
            boolean o = collapsingTextHelper.o(typeface);
            if (n || o) {
                collapsingTextHelper.j(false);
            }
            float textSize = this.i.getTextSize();
            if (collapsingTextHelper.h != textSize) {
                collapsingTextHelper.h = textSize;
                collapsingTextHelper.j(false);
            }
            float letterSpacing = this.i.getLetterSpacing();
            if (collapsingTextHelper.X != letterSpacing) {
                collapsingTextHelper.X = letterSpacing;
                collapsingTextHelper.j(false);
            }
            int gravity = this.i.getGravity();
            int i3 = (gravity & (-113)) | 48;
            if (collapsingTextHelper.g != i3) {
                collapsingTextHelper.g = i3;
                collapsingTextHelper.j(false);
            }
            if (collapsingTextHelper.f != gravity) {
                collapsingTextHelper.f = gravity;
                collapsingTextHelper.j(false);
            }
            this.y0 = editText.getMinimumHeight();
            this.i.addTextChangedListener(new TextWatcher(editText) { // from class: com.google.android.material.textfield.TextInputLayout.1

                /* renamed from: c, reason: collision with root package name */
                public int f11979c;
                public final /* synthetic */ EditText f;

                {
                    this.f = editText;
                    this.f11979c = editText.getLineCount();
                }

                @Override // android.text.TextWatcher
                public final void afterTextChanged(Editable editable) {
                    TextInputLayout textInputLayout = TextInputLayout.this;
                    textInputLayout.w(!textInputLayout.F0, false);
                    if (textInputLayout.p) {
                        textInputLayout.p(editable);
                    }
                    if (textInputLayout.x) {
                        textInputLayout.x(editable);
                    }
                    EditText editText2 = this.f;
                    int lineCount = editText2.getLineCount();
                    int i4 = this.f11979c;
                    if (lineCount != i4) {
                        if (lineCount < i4) {
                            int minimumHeight = editText2.getMinimumHeight();
                            int i5 = textInputLayout.y0;
                            if (minimumHeight != i5) {
                                editText2.setMinimumHeight(i5);
                            }
                        }
                        this.f11979c = lineCount;
                    }
                }

                @Override // android.text.TextWatcher
                public final void beforeTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                }

                @Override // android.text.TextWatcher
                public final void onTextChanged(CharSequence charSequence, int i4, int i5, int i6) {
                }
            });
            if (this.n0 == null) {
                this.n0 = this.i.getHintTextColors();
            }
            if (this.H) {
                if (TextUtils.isEmpty(this.I)) {
                    CharSequence hint = this.i.getHint();
                    this.j = hint;
                    setHint(hint);
                    this.i.setHint((CharSequence) null);
                }
                this.J = true;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                r();
            }
            if (this.t != null) {
                p(this.i.getText());
            }
            t();
            this.o.b();
            this.f.bringToFront();
            EndCompoundLayout endCompoundLayout = this.g;
            endCompoundLayout.bringToFront();
            Iterator it = this.j0.iterator();
            while (it.hasNext()) {
                ((OnEditTextAttachedListener) it.next()).a(this);
            }
            endCompoundLayout.m();
            if (!isEnabled()) {
                editText.setEnabled(false);
            }
            w(false, true);
            return;
        }
        throw new IllegalArgumentException("We already have an EditText, can only have one");
    }

    private void setHintInternal(CharSequence charSequence) {
        if (!TextUtils.equals(charSequence, this.I)) {
            this.I = charSequence;
            CollapsingTextHelper collapsingTextHelper = this.A0;
            if (charSequence == null || !TextUtils.equals(collapsingTextHelper.B, charSequence)) {
                collapsingTextHelper.B = charSequence;
                collapsingTextHelper.C = null;
                collapsingTextHelper.j(false);
            }
            if (!this.z0) {
                l();
            }
        }
    }

    private void setPlaceholderTextEnabled(boolean z) {
        if (this.x == z) {
            return;
        }
        if (z) {
            AppCompatTextView appCompatTextView = this.y;
            if (appCompatTextView != null) {
                this.f11978c.addView(appCompatTextView);
                this.y.setVisibility(0);
            }
        } else {
            AppCompatTextView appCompatTextView2 = this.y;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setVisibility(8);
            }
            this.y = null;
        }
        this.x = z;
    }

    public final void a() {
        if (this.i != null && this.T == 1) {
            if (getHintMaxLines() == 1) {
                if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                    EditText editText = this.i;
                    editText.setPaddingRelative(editText.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_top), this.i.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_2_0_padding_bottom));
                    return;
                } else {
                    if (MaterialResources.e(getContext())) {
                        EditText editText2 = this.i;
                        editText2.setPaddingRelative(editText2.getPaddingStart(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_top), this.i.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
                        return;
                    }
                    return;
                }
            }
            EditText editText3 = this.i;
            editText3.setPaddingRelative(editText3.getPaddingStart(), (int) (this.A0.f() + this.h), this.i.getPaddingEnd(), getResources().getDimensionPixelSize(R.dimen.material_filled_edittext_font_1_3_padding_bottom));
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        if (view instanceof EditText) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams);
            layoutParams2.gravity = (layoutParams2.gravity & (-113)) | 16;
            FrameLayout frameLayout = this.f11978c;
            frameLayout.addView(view, layoutParams2);
            frameLayout.setLayoutParams(layoutParams);
            v();
            setEditText((EditText) view);
            return;
        }
        super.addView(view, i, layoutParams);
    }

    public final void b(float f) {
        CollapsingTextHelper collapsingTextHelper = this.A0;
        if (collapsingTextHelper.b == f) {
            return;
        }
        if (this.D0 == null) {
            ValueAnimator valueAnimator = new ValueAnimator();
            this.D0 = valueAnimator;
            valueAnimator.setInterpolator(MotionUtils.d(getContext(), R.attr.motionEasingEmphasizedInterpolator, AnimationUtils.b));
            this.D0.setDuration(MotionUtils.c(getContext(), R.attr.motionDurationMedium4, 167));
            this.D0.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.google.android.material.textfield.TextInputLayout.4
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    TextInputLayout.this.A0.p(((Float) valueAnimator2.getAnimatedValue()).floatValue());
                }
            });
        }
        this.D0.setFloatValues(collapsingTextHelper.b, f);
        this.D0.start();
    }

    public final void c() {
        ColorStateList valueOf;
        int i;
        int i2;
        MaterialShapeDrawable materialShapeDrawable = this.K;
        if (materialShapeDrawable == null) {
            return;
        }
        ShapeAppearanceModel shapeAppearanceModel = materialShapeDrawable.f.f11880a;
        ShapeAppearanceModel shapeAppearanceModel2 = this.Q;
        if (shapeAppearanceModel != shapeAppearanceModel2) {
            materialShapeDrawable.setShapeAppearanceModel(shapeAppearanceModel2);
        }
        if (this.T == 2 && (i = this.V) > -1 && (i2 = this.b0) != 0) {
            MaterialShapeDrawable materialShapeDrawable2 = this.K;
            materialShapeDrawable2.f.k = i;
            materialShapeDrawable2.invalidateSelf();
            ColorStateList valueOf2 = ColorStateList.valueOf(i2);
            MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable2.f;
            if (materialShapeDrawableState.e != valueOf2) {
                materialShapeDrawableState.e = valueOf2;
                materialShapeDrawable2.onStateChange(materialShapeDrawable2.getState());
            }
        }
        int i3 = this.c0;
        if (this.T == 1) {
            i3 = ColorUtils.i(this.c0, MaterialColors.b(getContext(), R.attr.colorSurface, 0));
        }
        this.c0 = i3;
        this.K.o(ColorStateList.valueOf(i3));
        MaterialShapeDrawable materialShapeDrawable3 = this.O;
        if (materialShapeDrawable3 != null && this.P != null) {
            if (this.V > -1 && this.b0 != 0) {
                if (this.i.isFocused()) {
                    valueOf = ColorStateList.valueOf(this.p0);
                } else {
                    valueOf = ColorStateList.valueOf(this.b0);
                }
                materialShapeDrawable3.o(valueOf);
                this.P.o(ColorStateList.valueOf(this.b0));
            }
            invalidate();
        }
        u();
    }

    public final Rect d(Rect rect) {
        boolean z;
        if (this.i != null) {
            if (getLayoutDirection() == 1) {
                z = true;
            } else {
                z = false;
            }
            int i = rect.bottom;
            Rect rect2 = this.e0;
            rect2.bottom = i;
            int i2 = this.T;
            if (i2 != 1) {
                if (i2 != 2) {
                    rect2.left = i(rect.left, z);
                    rect2.top = getPaddingTop();
                    rect2.right = j(rect.right, z);
                    return rect2;
                }
                rect2.left = this.i.getPaddingLeft() + rect.left;
                rect2.top = rect.top - e();
                rect2.right = rect.right - this.i.getPaddingRight();
                return rect2;
            }
            rect2.left = i(rect.left, z);
            rect2.top = rect.top + this.U;
            rect2.right = j(rect.right, z);
            return rect2;
        }
        throw new IllegalStateException();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchProvideAutofillStructure(ViewStructure viewStructure, int i) {
        EditText editText = this.i;
        if (editText == null) {
            super.dispatchProvideAutofillStructure(viewStructure, i);
            return;
        }
        if (this.j != null) {
            boolean z = this.J;
            this.J = false;
            CharSequence hint = editText.getHint();
            this.i.setHint(this.j);
            try {
                super.dispatchProvideAutofillStructure(viewStructure, i);
                return;
            } finally {
                this.i.setHint(hint);
                this.J = z;
            }
        }
        viewStructure.setAutofillId(getAutofillId());
        onProvideAutofillStructure(viewStructure, i);
        onProvideAutofillVirtualStructure(viewStructure, i);
        FrameLayout frameLayout = this.f11978c;
        viewStructure.setChildCount(frameLayout.getChildCount());
        for (int i2 = 0; i2 < frameLayout.getChildCount(); i2++) {
            View childAt = frameLayout.getChildAt(i2);
            ViewStructure newChild = viewStructure.newChild(i2);
            childAt.dispatchProvideAutofillStructure(newChild, i);
            if (childAt == this.i) {
                newChild.setHint(getHint());
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        this.F0 = true;
        super.dispatchRestoreInstanceState(sparseArray);
        this.F0 = false;
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        MaterialShapeDrawable materialShapeDrawable;
        super.draw(canvas);
        boolean z = this.H;
        CollapsingTextHelper collapsingTextHelper = this.A0;
        if (z) {
            TextPaint textPaint = collapsingTextHelper.O;
            RectF rectF = collapsingTextHelper.e;
            int save = canvas.save();
            if (collapsingTextHelper.C != null && rectF.width() > 0.0f && rectF.height() > 0.0f) {
                textPaint.setTextSize(collapsingTextHelper.G);
                float f = collapsingTextHelper.q;
                float f2 = collapsingTextHelper.r;
                float f3 = collapsingTextHelper.F;
                if (f3 != 1.0f) {
                    canvas.scale(f3, f3, f, f2);
                }
                if ((collapsingTextHelper.e0 > 1 || collapsingTextHelper.f0 > 1) && !collapsingTextHelper.D && collapsingTextHelper.q()) {
                    float lineStart = collapsingTextHelper.q - collapsingTextHelper.Z.getLineStart(0);
                    int alpha = textPaint.getAlpha();
                    canvas.translate(lineStart, f2);
                    float f4 = alpha;
                    textPaint.setAlpha((int) (collapsingTextHelper.c0 * f4));
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, MaterialColors.a(collapsingTextHelper.K, textPaint.getAlpha()));
                    }
                    collapsingTextHelper.Z.draw(canvas);
                    textPaint.setAlpha((int) (collapsingTextHelper.b0 * f4));
                    if (i >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, MaterialColors.a(collapsingTextHelper.K, textPaint.getAlpha()));
                    }
                    int lineBaseline = collapsingTextHelper.Z.getLineBaseline(0);
                    CharSequence charSequence = collapsingTextHelper.d0;
                    float f5 = lineBaseline;
                    canvas.drawText(charSequence, 0, charSequence.length(), 0.0f, f5, textPaint);
                    if (i >= 31) {
                        textPaint.setShadowLayer(collapsingTextHelper.H, collapsingTextHelper.I, collapsingTextHelper.J, collapsingTextHelper.K);
                    }
                    String trim = collapsingTextHelper.d0.toString().trim();
                    if (trim.endsWith("…")) {
                        trim = android.support.v4.media.a.d(1, 0, trim);
                    }
                    String str = trim;
                    textPaint.setAlpha(alpha);
                    canvas.drawText(str, 0, Math.min(collapsingTextHelper.Z.getLineEnd(0), str.length()), 0.0f, f5, (Paint) textPaint);
                    canvas = canvas;
                } else {
                    canvas.translate(f, f2);
                    collapsingTextHelper.Z.draw(canvas);
                }
                canvas.restoreToCount(save);
            }
        }
        if (this.P != null && (materialShapeDrawable = this.O) != null) {
            materialShapeDrawable.draw(canvas);
            if (this.i.isFocused()) {
                Rect bounds = this.P.getBounds();
                Rect bounds2 = this.O.getBounds();
                float f6 = collapsingTextHelper.b;
                int centerX = bounds2.centerX();
                bounds.left = AnimationUtils.c(f6, centerX, bounds2.left);
                bounds.right = AnimationUtils.c(f6, centerX, bounds2.right);
                this.P.draw(canvas);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0034  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x004d  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void drawableStateChanged() {
        /*
            r4 = this;
            boolean r0 = r4.E0
            if (r0 == 0) goto L5
            return
        L5:
            r0 = 1
            r4.E0 = r0
            super.drawableStateChanged()
            int[] r1 = r4.getDrawableState()
            r2 = 0
            com.google.android.material.internal.CollapsingTextHelper r3 = r4.A0
            if (r3 == 0) goto L2f
            r3.M = r1
            android.content.res.ColorStateList r1 = r3.k
            if (r1 == 0) goto L20
            boolean r1 = r1.isStateful()
            if (r1 != 0) goto L2a
        L20:
            android.content.res.ColorStateList r1 = r3.j
            if (r1 == 0) goto L2f
            boolean r1 = r1.isStateful()
            if (r1 == 0) goto L2f
        L2a:
            r3.j(r2)
            r1 = r0
            goto L30
        L2f:
            r1 = r2
        L30:
            android.widget.EditText r3 = r4.i
            if (r3 == 0) goto L45
            boolean r3 = r4.isLaidOut()
            if (r3 == 0) goto L41
            boolean r3 = r4.isEnabled()
            if (r3 == 0) goto L41
            goto L42
        L41:
            r0 = r2
        L42:
            r4.w(r0, r2)
        L45:
            r4.t()
            r4.z()
            if (r1 == 0) goto L50
            r4.invalidate()
        L50:
            r4.E0 = r2
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.drawableStateChanged():void");
    }

    public final int e() {
        if (this.H) {
            int i = this.T;
            CollapsingTextHelper collapsingTextHelper = this.A0;
            if (i != 0) {
                if (i == 2) {
                    if (getHintMaxLines() == 1) {
                        return (int) (collapsingTextHelper.f() / 2.0f);
                    }
                    float f = collapsingTextHelper.f();
                    TextPaint textPaint = collapsingTextHelper.P;
                    textPaint.setTextSize(collapsingTextHelper.i);
                    textPaint.setTypeface(collapsingTextHelper.s);
                    textPaint.setLetterSpacing(collapsingTextHelper.W);
                    return Math.max(0, (int) (f - ((-textPaint.ascent()) / 2.0f)));
                }
            } else {
                return (int) collapsingTextHelper.f();
            }
        }
        return 0;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.transition.Transition, androidx.transition.Fade, androidx.transition.Visibility] */
    public final Fade f() {
        ?? visibility = new Visibility();
        visibility.g = MotionUtils.c(getContext(), R.attr.motionDurationShort2, 87);
        visibility.h = MotionUtils.d(getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.f11631a);
        return visibility;
    }

    public final boolean g() {
        if (this.H && !TextUtils.isEmpty(this.I) && (this.K instanceof CutoutDrawable)) {
            return true;
        }
        return false;
    }

    @Override // android.widget.LinearLayout, android.view.View
    public int getBaseline() {
        EditText editText = this.i;
        if (editText != null) {
            return e() + getPaddingTop() + editText.getBaseline();
        }
        return super.getBaseline();
    }

    @NonNull
    public MaterialShapeDrawable getBoxBackground() {
        int i = this.T;
        if (i != 1 && i != 2) {
            throw new IllegalStateException();
        }
        return this.K;
    }

    public int getBoxBackgroundColor() {
        return this.c0;
    }

    public int getBoxBackgroundMode() {
        return this.T;
    }

    public int getBoxCollapsedPaddingTop() {
        return this.U;
    }

    public float getBoxCornerRadiusBottomEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f0;
        if (layoutDirection == 1) {
            return this.Q.h.a(rectF);
        }
        return this.Q.g.a(rectF);
    }

    public float getBoxCornerRadiusBottomStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f0;
        if (layoutDirection == 1) {
            return this.Q.g.a(rectF);
        }
        return this.Q.h.a(rectF);
    }

    public float getBoxCornerRadiusTopEnd() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f0;
        if (layoutDirection == 1) {
            return this.Q.e.a(rectF);
        }
        return this.Q.f.a(rectF);
    }

    public float getBoxCornerRadiusTopStart() {
        int layoutDirection = getLayoutDirection();
        RectF rectF = this.f0;
        if (layoutDirection == 1) {
            return this.Q.f.a(rectF);
        }
        return this.Q.e.a(rectF);
    }

    public int getBoxStrokeColor() {
        return this.r0;
    }

    @Nullable
    public ColorStateList getBoxStrokeErrorColor() {
        return this.s0;
    }

    public int getBoxStrokeWidth() {
        return this.W;
    }

    public int getBoxStrokeWidthFocused() {
        return this.a0;
    }

    public int getCounterMaxLength() {
        return this.q;
    }

    @Nullable
    public CharSequence getCounterOverflowDescription() {
        AppCompatTextView appCompatTextView;
        if (this.p && this.r && (appCompatTextView = this.t) != null) {
            return appCompatTextView.getContentDescription();
        }
        return null;
    }

    @Nullable
    public ColorStateList getCounterOverflowTextColor() {
        return this.E;
    }

    @Nullable
    public ColorStateList getCounterTextColor() {
        return this.D;
    }

    @Nullable
    @RequiresApi
    public ColorStateList getCursorColor() {
        return this.F;
    }

    @Nullable
    @RequiresApi
    public ColorStateList getCursorErrorColor() {
        return this.G;
    }

    @Nullable
    public ColorStateList getDefaultHintTextColor() {
        return this.n0;
    }

    @Nullable
    public EditText getEditText() {
        return this.i;
    }

    @Nullable
    public CharSequence getEndIconContentDescription() {
        return this.g.k.getContentDescription();
    }

    @Nullable
    public Drawable getEndIconDrawable() {
        return this.g.k.getDrawable();
    }

    public int getEndIconMinSize() {
        return this.g.q;
    }

    public int getEndIconMode() {
        return this.g.m;
    }

    @NonNull
    public ImageView.ScaleType getEndIconScaleType() {
        return this.g.r;
    }

    @NonNull
    public CheckableImageButton getEndIconView() {
        return this.g.k;
    }

    @Nullable
    public CharSequence getError() {
        IndicatorViewController indicatorViewController = this.o;
        if (indicatorViewController.q) {
            return indicatorViewController.p;
        }
        return null;
    }

    public int getErrorAccessibilityLiveRegion() {
        return this.o.t;
    }

    @Nullable
    public CharSequence getErrorContentDescription() {
        return this.o.s;
    }

    @ColorInt
    public int getErrorCurrentTextColors() {
        AppCompatTextView appCompatTextView = this.o.r;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public Drawable getErrorIconDrawable() {
        return this.g.g.getDrawable();
    }

    @Nullable
    public CharSequence getHelperText() {
        IndicatorViewController indicatorViewController = this.o;
        if (indicatorViewController.x) {
            return indicatorViewController.w;
        }
        return null;
    }

    @ColorInt
    public int getHelperTextCurrentTextColor() {
        AppCompatTextView appCompatTextView = this.o.y;
        if (appCompatTextView != null) {
            return appCompatTextView.getCurrentTextColor();
        }
        return -1;
    }

    @Nullable
    public CharSequence getHint() {
        if (this.H) {
            return this.I;
        }
        return null;
    }

    @VisibleForTesting
    public final float getHintCollapsedTextHeight() {
        return this.A0.f();
    }

    @VisibleForTesting
    public final int getHintCurrentCollapsedTextColor() {
        CollapsingTextHelper collapsingTextHelper = this.A0;
        return collapsingTextHelper.g(collapsingTextHelper.k);
    }

    public int getHintMaxLines() {
        return this.A0.e0;
    }

    @Nullable
    public ColorStateList getHintTextColor() {
        return this.o0;
    }

    @NonNull
    public LengthCounter getLengthCounter() {
        return this.s;
    }

    public int getMaxEms() {
        return this.l;
    }

    @Px
    public int getMaxWidth() {
        return this.n;
    }

    public int getMinEms() {
        return this.k;
    }

    @Px
    public int getMinWidth() {
        return this.m;
    }

    @Nullable
    @Deprecated
    public CharSequence getPasswordVisibilityToggleContentDescription() {
        return this.g.k.getContentDescription();
    }

    @Nullable
    @Deprecated
    public Drawable getPasswordVisibilityToggleDrawable() {
        return this.g.k.getDrawable();
    }

    @Nullable
    public CharSequence getPlaceholderText() {
        if (this.x) {
            return this.w;
        }
        return null;
    }

    @StyleRes
    public int getPlaceholderTextAppearance() {
        return this.A;
    }

    @Nullable
    public ColorStateList getPlaceholderTextColor() {
        return this.z;
    }

    @Nullable
    public CharSequence getPrefixText() {
        return this.f.g;
    }

    @Nullable
    public ColorStateList getPrefixTextColor() {
        return this.f.f.getTextColors();
    }

    @NonNull
    public TextView getPrefixTextView() {
        return this.f.f;
    }

    @NonNull
    public ShapeAppearanceModel getShapeAppearanceModel() {
        return this.Q;
    }

    @Nullable
    public CharSequence getStartIconContentDescription() {
        return this.f.h.getContentDescription();
    }

    @Nullable
    public Drawable getStartIconDrawable() {
        return this.f.h.getDrawable();
    }

    public int getStartIconMinSize() {
        return this.f.k;
    }

    @NonNull
    public ImageView.ScaleType getStartIconScaleType() {
        return this.f.l;
    }

    @Nullable
    public CharSequence getSuffixText() {
        return this.g.t;
    }

    @Nullable
    public ColorStateList getSuffixTextColor() {
        return this.g.u.getTextColors();
    }

    @NonNull
    public TextView getSuffixTextView() {
        return this.g.u;
    }

    @Nullable
    public Typeface getTypeface() {
        return this.g0;
    }

    public final MaterialShapeDrawable h(boolean z) {
        float f;
        float dimensionPixelOffset;
        ColorStateList colorStateList;
        int i;
        float dimensionPixelOffset2 = getResources().getDimensionPixelOffset(R.dimen.mtrl_shape_corner_size_small_component);
        if (z) {
            f = dimensionPixelOffset2;
        } else {
            f = 0.0f;
        }
        EditText editText = this.i;
        if (editText instanceof MaterialAutoCompleteTextView) {
            dimensionPixelOffset = ((MaterialAutoCompleteTextView) editText).getPopupElevation();
        } else {
            dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.m3_comp_outlined_autocomplete_menu_container_elevation);
        }
        int dimensionPixelOffset3 = getResources().getDimensionPixelOffset(R.dimen.mtrl_exposed_dropdown_menu_popup_vertical_padding);
        ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
        builder.d(f);
        builder.e(f);
        builder.b(dimensionPixelOffset2);
        builder.c(dimensionPixelOffset2);
        ShapeAppearanceModel a2 = builder.a();
        EditText editText2 = this.i;
        if (editText2 instanceof MaterialAutoCompleteTextView) {
            colorStateList = ((MaterialAutoCompleteTextView) editText2).getDropDownBackgroundTintList();
        } else {
            colorStateList = null;
        }
        Context context = getContext();
        if (colorStateList == null) {
            Paint paint = MaterialShapeDrawable.J;
            TypedValue c2 = MaterialAttributes.c(context, R.attr.colorSurface, "MaterialShapeDrawable");
            int i2 = c2.resourceId;
            if (i2 != 0) {
                i = context.getColor(i2);
            } else {
                i = c2.data;
            }
            colorStateList = ColorStateList.valueOf(i);
        }
        MaterialShapeDrawable materialShapeDrawable = new MaterialShapeDrawable();
        materialShapeDrawable.l(context);
        materialShapeDrawable.o(colorStateList);
        materialShapeDrawable.n(dimensionPixelOffset);
        materialShapeDrawable.setShapeAppearanceModel(a2);
        MaterialShapeDrawable.MaterialShapeDrawableState materialShapeDrawableState = materialShapeDrawable.f;
        if (materialShapeDrawableState.h == null) {
            materialShapeDrawableState.h = new Rect();
        }
        materialShapeDrawable.f.h.set(0, dimensionPixelOffset3, 0, dimensionPixelOffset3);
        materialShapeDrawable.invalidateSelf();
        return materialShapeDrawable;
    }

    public final int i(int i, boolean z) {
        int c2;
        if (!z && getPrefixText() != null) {
            c2 = this.f.a();
        } else if (z && getSuffixText() != null) {
            c2 = this.g.c();
        } else {
            return this.i.getCompoundPaddingLeft() + i;
        }
        return i + c2;
    }

    public final int j(int i, boolean z) {
        int compoundPaddingRight;
        if (!z && getSuffixText() != null) {
            compoundPaddingRight = this.g.c();
        } else if (z && getPrefixText() != null) {
            compoundPaddingRight = this.f.a();
        } else {
            compoundPaddingRight = this.i.getCompoundPaddingRight();
        }
        return i - compoundPaddingRight;
    }

    /* JADX WARN: Type inference failed for: r0v26, types: [com.google.android.material.textfield.CutoutDrawable, com.google.android.material.shape.MaterialShapeDrawable] */
    public final void k() {
        int i = this.T;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    if (this.H && !(this.K instanceof CutoutDrawable)) {
                        ShapeAppearanceModel shapeAppearanceModel = this.Q;
                        int i2 = CutoutDrawable.M;
                        if (shapeAppearanceModel == null) {
                            shapeAppearanceModel = new ShapeAppearanceModel();
                        }
                        CutoutDrawable.CutoutDrawableState cutoutDrawableState = new CutoutDrawable.CutoutDrawableState(shapeAppearanceModel, new RectF());
                        ?? materialShapeDrawable = new MaterialShapeDrawable(cutoutDrawableState);
                        materialShapeDrawable.L = cutoutDrawableState;
                        this.K = materialShapeDrawable;
                    } else {
                        this.K = new MaterialShapeDrawable(this.Q);
                    }
                    this.O = null;
                    this.P = null;
                } else {
                    throw new IllegalArgumentException(android.support.v4.media.a.g(this.T, " is illegal; only @BoxBackgroundMode constants are supported.", new StringBuilder()));
                }
            } else {
                this.K = new MaterialShapeDrawable(this.Q);
                this.O = new MaterialShapeDrawable();
                this.P = new MaterialShapeDrawable();
            }
        } else {
            this.K = null;
            this.O = null;
            this.P = null;
        }
        u();
        z();
        if (this.T == 1) {
            if (getContext().getResources().getConfiguration().fontScale >= 2.0f) {
                this.U = getResources().getDimensionPixelSize(R.dimen.material_font_2_0_box_collapsed_padding_top);
            } else if (MaterialResources.e(getContext())) {
                this.U = getResources().getDimensionPixelSize(R.dimen.material_font_1_3_box_collapsed_padding_top);
            }
        }
        a();
        if (this.T != 0) {
            v();
        }
        EditText editText = this.i;
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            if (autoCompleteTextView.getDropDownBackground() == null) {
                int i3 = this.T;
                if (i3 == 2) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateOutlinedDropDownMenuBackground());
                } else if (i3 == 1) {
                    autoCompleteTextView.setDropDownBackgroundDrawable(getOrCreateFilledDropDownMenuBackground());
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00cb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l() {
        /*
            Method dump skipped, instructions count: 285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.l():void");
    }

    public final void n(AppCompatTextView appCompatTextView, int i) {
        try {
            appCompatTextView.setTextAppearance(i);
            if (appCompatTextView.getTextColors().getDefaultColor() != -65281) {
                return;
            }
        } catch (Exception unused) {
        }
        appCompatTextView.setTextAppearance(androidx.appcompat.R.style.TextAppearance_AppCompat_Caption);
        appCompatTextView.setTextColor(getContext().getColor(R.color.design_error));
    }

    public final boolean o() {
        IndicatorViewController indicatorViewController = this.o;
        if (indicatorViewController.o == 1 && indicatorViewController.r != null && !TextUtils.isEmpty(indicatorViewController.p)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.A0.i(configuration);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        int max;
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
        boolean z = false;
        this.G0 = false;
        if (this.i != null && this.i.getMeasuredHeight() < (max = Math.max(endCompoundLayout.getMeasuredHeight(), this.f.getMeasuredHeight()))) {
            this.i.setMinimumHeight(max);
            z = true;
        }
        boolean s = s();
        if (!z && !s) {
            return;
        }
        this.i.post(new d(2, this));
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        float descent;
        int i5;
        int compoundPaddingTop;
        int compoundPaddingBottom;
        super.onLayout(z, i, i2, i3, i4);
        EditText editText = this.i;
        if (editText != null) {
            Rect rect = this.d0;
            DescendantOffsetUtils.a(this, editText, rect);
            MaterialShapeDrawable materialShapeDrawable = this.O;
            if (materialShapeDrawable != null) {
                int i6 = rect.bottom;
                materialShapeDrawable.setBounds(rect.left, i6 - this.W, rect.right, i6);
            }
            MaterialShapeDrawable materialShapeDrawable2 = this.P;
            if (materialShapeDrawable2 != null) {
                int i7 = rect.bottom;
                materialShapeDrawable2.setBounds(rect.left, i7 - this.a0, rect.right, i7);
            }
            if (this.H) {
                float textSize = this.i.getTextSize();
                CollapsingTextHelper collapsingTextHelper = this.A0;
                float f = collapsingTextHelper.h;
                TextPaint textPaint = collapsingTextHelper.P;
                if (f != textSize) {
                    collapsingTextHelper.h = textSize;
                    collapsingTextHelper.j(false);
                }
                int gravity = this.i.getGravity();
                int i8 = (gravity & (-113)) | 48;
                if (collapsingTextHelper.g != i8) {
                    collapsingTextHelper.g = i8;
                    collapsingTextHelper.j(false);
                }
                if (collapsingTextHelper.f != gravity) {
                    collapsingTextHelper.f = gravity;
                    collapsingTextHelper.j(false);
                }
                Rect d = d(rect);
                int i9 = d.left;
                int i10 = d.top;
                int i11 = d.right;
                int i12 = d.bottom;
                Rect rect2 = collapsingTextHelper.d;
                if (!CollapsingTextHelper.k(rect2, i9, i10, i11, i12)) {
                    rect2.set(i9, i10, i11, i12);
                    collapsingTextHelper.N = true;
                }
                if (this.i != null) {
                    if (getHintMaxLines() == 1) {
                        textPaint.setTextSize(collapsingTextHelper.h);
                        textPaint.setTypeface(collapsingTextHelper.v);
                        textPaint.setLetterSpacing(collapsingTextHelper.X);
                        descent = -textPaint.ascent();
                    } else {
                        textPaint.setTextSize(collapsingTextHelper.h);
                        textPaint.setTypeface(collapsingTextHelper.v);
                        textPaint.setLetterSpacing(collapsingTextHelper.X);
                        descent = collapsingTextHelper.l * (textPaint.descent() + (-textPaint.ascent()));
                    }
                    int compoundPaddingLeft = this.i.getCompoundPaddingLeft() + rect.left;
                    Rect rect3 = this.e0;
                    rect3.left = compoundPaddingLeft;
                    if (this.T == 1 && this.i.getMinLines() <= 1) {
                        compoundPaddingTop = (int) (rect.centerY() - (descent / 2.0f));
                    } else {
                        if (this.T == 0 && getHintMaxLines() != 1) {
                            textPaint.setTextSize(collapsingTextHelper.h);
                            textPaint.setTypeface(collapsingTextHelper.v);
                            textPaint.setLetterSpacing(collapsingTextHelper.X);
                            i5 = (int) ((-textPaint.ascent()) / 2.0f);
                        } else {
                            i5 = 0;
                        }
                        compoundPaddingTop = (this.i.getCompoundPaddingTop() + rect.top) - i5;
                    }
                    rect3.top = compoundPaddingTop;
                    rect3.right = rect.right - this.i.getCompoundPaddingRight();
                    if (this.T == 1 && this.i.getMinLines() <= 1) {
                        compoundPaddingBottom = (int) (rect3.top + descent);
                    } else {
                        compoundPaddingBottom = rect.bottom - this.i.getCompoundPaddingBottom();
                    }
                    rect3.bottom = compoundPaddingBottom;
                    int i13 = rect3.left;
                    int i14 = rect3.top;
                    int i15 = rect3.right;
                    Rect rect4 = collapsingTextHelper.f11808c;
                    if (!CollapsingTextHelper.k(rect4, i13, i14, i15, compoundPaddingBottom) || true != collapsingTextHelper.k0) {
                        rect4.set(i13, i14, i15, compoundPaddingBottom);
                        collapsingTextHelper.N = true;
                        collapsingTextHelper.k0 = true;
                    }
                    collapsingTextHelper.j(false);
                    if (g() && !this.z0) {
                        l();
                        return;
                    }
                    return;
                }
                throw new IllegalStateException();
            }
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        float f;
        boolean z;
        float f2;
        EditText editText;
        super.onMeasure(i, i2);
        boolean z2 = this.G0;
        EndCompoundLayout endCompoundLayout = this.g;
        if (!z2) {
            endCompoundLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);
            this.G0 = true;
        }
        if (this.y != null && (editText = this.i) != null) {
            this.y.setGravity(editText.getGravity());
            this.y.setPadding(this.i.getCompoundPaddingLeft(), this.i.getCompoundPaddingTop(), this.i.getCompoundPaddingRight(), this.i.getCompoundPaddingBottom());
        }
        endCompoundLayout.m();
        if (getHintMaxLines() != 1) {
            int measuredWidth = (this.i.getMeasuredWidth() - this.i.getCompoundPaddingLeft()) - this.i.getCompoundPaddingRight();
            CollapsingTextHelper collapsingTextHelper = this.A0;
            TextPaint textPaint = collapsingTextHelper.P;
            textPaint.setTextSize(collapsingTextHelper.i);
            textPaint.setTypeface(collapsingTextHelper.s);
            textPaint.setLetterSpacing(collapsingTextHelper.W);
            float f3 = measuredWidth;
            collapsingTextHelper.i0 = collapsingTextHelper.e(collapsingTextHelper.f0, textPaint, collapsingTextHelper.B, (collapsingTextHelper.i / collapsingTextHelper.h) * f3, collapsingTextHelper.D).getHeight();
            textPaint.setTextSize(collapsingTextHelper.h);
            textPaint.setTypeface(collapsingTextHelper.v);
            textPaint.setLetterSpacing(collapsingTextHelper.X);
            collapsingTextHelper.j0 = collapsingTextHelper.e(collapsingTextHelper.e0, textPaint, collapsingTextHelper.B, f3, collapsingTextHelper.D).getHeight();
            EditText editText2 = this.i;
            Rect rect = this.d0;
            DescendantOffsetUtils.a(this, editText2, rect);
            Rect d = d(rect);
            int i3 = d.left;
            int i4 = d.top;
            int i5 = d.right;
            int i6 = d.bottom;
            Rect rect2 = collapsingTextHelper.d;
            if (!CollapsingTextHelper.k(rect2, i3, i4, i5, i6)) {
                rect2.set(i3, i4, i5, i6);
                collapsingTextHelper.N = true;
            }
            v();
            a();
            if (this.i != null) {
                int i7 = collapsingTextHelper.j0;
                if (i7 != -1) {
                    f = i7;
                } else {
                    TextPaint textPaint2 = collapsingTextHelper.P;
                    textPaint2.setTextSize(collapsingTextHelper.h);
                    textPaint2.setTypeface(collapsingTextHelper.v);
                    textPaint2.setLetterSpacing(collapsingTextHelper.X);
                    f = -textPaint2.ascent();
                }
                float f4 = 0.0f;
                if (this.w != null) {
                    TextPaint textPaint3 = new TextPaint(129);
                    textPaint3.set(this.y.getPaint());
                    textPaint3.setTextSize(this.y.getTextSize());
                    textPaint3.setTypeface(this.y.getTypeface());
                    textPaint3.setLetterSpacing(this.y.getLetterSpacing());
                    try {
                        StaticLayoutBuilderCompat staticLayoutBuilderCompat = new StaticLayoutBuilderCompat(this.w, textPaint3, measuredWidth);
                        if (getLayoutDirection() == 1) {
                            z = true;
                        } else {
                            z = false;
                        }
                        staticLayoutBuilderCompat.k = z;
                        staticLayoutBuilderCompat.j = true;
                        float lineSpacingExtra = this.y.getLineSpacingExtra();
                        float lineSpacingMultiplier = this.y.getLineSpacingMultiplier();
                        staticLayoutBuilderCompat.g = lineSpacingExtra;
                        staticLayoutBuilderCompat.h = lineSpacingMultiplier;
                        staticLayoutBuilderCompat.m = new h(this);
                        StaticLayout a2 = staticLayoutBuilderCompat.a();
                        if (this.T == 1) {
                            f2 = collapsingTextHelper.f() + this.U + this.h;
                        } else {
                            f2 = 0.0f;
                        }
                        f4 = a2.getHeight() + f2;
                    } catch (StaticLayoutBuilderCompat.StaticLayoutBuilderCompatException e) {
                        Log.e("TextInputLayout", e.getCause().getMessage(), e);
                    }
                }
                float max = Math.max(f, f4);
                if (this.i.getMeasuredHeight() < max) {
                    this.i.setMinimumHeight(Math.round(max));
                }
            }
        }
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.f936c);
        setError(savedState.g);
        if (savedState.h) {
            post(new Runnable() { // from class: com.google.android.material.textfield.TextInputLayout.3
                @Override // java.lang.Runnable
                public final void run() {
                    CheckableImageButton checkableImageButton = TextInputLayout.this.g.k;
                    checkableImageButton.performClick();
                    checkableImageButton.jumpDrawablesToCurrentState();
                }
            });
        }
        requestLayout();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onRtlPropertiesChanged(int i) {
        super.onRtlPropertiesChanged(i);
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        if (z != this.R) {
            CornerSize cornerSize = this.Q.e;
            RectF rectF = this.f0;
            float a2 = cornerSize.a(rectF);
            float a3 = this.Q.f.a(rectF);
            float a4 = this.Q.h.a(rectF);
            float a5 = this.Q.g.a(rectF);
            ShapeAppearanceModel shapeAppearanceModel = this.Q;
            CornerTreatment cornerTreatment = shapeAppearanceModel.f11887a;
            CornerTreatment cornerTreatment2 = shapeAppearanceModel.b;
            CornerTreatment cornerTreatment3 = shapeAppearanceModel.d;
            CornerTreatment cornerTreatment4 = shapeAppearanceModel.f11888c;
            ShapeAppearanceModel.Builder builder = new ShapeAppearanceModel.Builder();
            builder.f11889a = cornerTreatment2;
            builder.b = cornerTreatment;
            builder.d = cornerTreatment4;
            builder.f11890c = cornerTreatment3;
            builder.d(a3);
            builder.e(a2);
            builder.b(a5);
            builder.c(a4);
            ShapeAppearanceModel a6 = builder.a();
            this.R = z;
            setShapeAppearanceModel(a6);
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.material.textfield.TextInputLayout$SavedState, android.os.Parcelable, androidx.customview.view.AbsSavedState] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        boolean z;
        ?? absSavedState = new AbsSavedState(super.onSaveInstanceState());
        if (o()) {
            absSavedState.g = getError();
        }
        EndCompoundLayout endCompoundLayout = this.g;
        if (endCompoundLayout.m != 0 && endCompoundLayout.k.h) {
            z = true;
        } else {
            z = false;
        }
        absSavedState.h = z;
        return absSavedState;
    }

    public final void p(Editable editable) {
        boolean z;
        int i;
        int b = this.s.b(editable);
        boolean z2 = this.r;
        int i2 = this.q;
        String str = null;
        if (i2 == -1) {
            this.t.setText(String.valueOf(b));
            this.t.setContentDescription(null);
            this.r = false;
        } else {
            if (b > i2) {
                z = true;
            } else {
                z = false;
            }
            this.r = z;
            Context context = getContext();
            AppCompatTextView appCompatTextView = this.t;
            int i3 = this.q;
            if (this.r) {
                i = R.string.character_counter_overflowed_content_description;
            } else {
                i = R.string.character_counter_content_description;
            }
            appCompatTextView.setContentDescription(context.getString(i, Integer.valueOf(b), Integer.valueOf(i3)));
            if (z2 != this.r) {
                q();
            }
            BidiFormatter c2 = BidiFormatter.c();
            AppCompatTextView appCompatTextView2 = this.t;
            String string = getContext().getString(R.string.character_counter_pattern, Integer.valueOf(b), Integer.valueOf(this.q));
            c2.getClass();
            TextDirectionHeuristicCompat textDirectionHeuristicCompat = TextDirectionHeuristicsCompat.f750a;
            if (string != null) {
                str = c2.d(string).toString();
            }
            appCompatTextView2.setText(str);
        }
        if (this.i != null && z2 != this.r) {
            w(false, false);
            z();
            t();
        }
    }

    public final void q() {
        int i;
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        AppCompatTextView appCompatTextView = this.t;
        if (appCompatTextView != null) {
            if (this.r) {
                i = this.u;
            } else {
                i = this.v;
            }
            n(appCompatTextView, i);
            if (!this.r && (colorStateList2 = this.D) != null) {
                this.t.setTextColor(colorStateList2);
            }
            if (this.r && (colorStateList = this.E) != null) {
                this.t.setTextColor(colorStateList);
            }
        }
    }

    public final void r() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2 = this.F;
        if (colorStateList2 == null) {
            colorStateList2 = MaterialColors.e(getContext(), androidx.appcompat.R.attr.colorControlActivated);
        }
        EditText editText = this.i;
        if (editText != null && editText.getTextCursorDrawable() != null) {
            Drawable mutate = this.i.getTextCursorDrawable().mutate();
            if ((o() || (this.t != null && this.r)) && (colorStateList = this.G) != null) {
                colorStateList2 = colorStateList;
            }
            mutate.setTintList(colorStateList2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00d4  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00ab  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean s() {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.textfield.TextInputLayout.s():boolean");
    }

    public void setBoxBackgroundColor(@ColorInt int i) {
        if (this.c0 != i) {
            this.c0 = i;
            this.t0 = i;
            this.v0 = i;
            this.w0 = i;
            c();
        }
    }

    public void setBoxBackgroundColorResource(@ColorRes int i) {
        setBoxBackgroundColor(getContext().getColor(i));
    }

    public void setBoxBackgroundColorStateList(@NonNull ColorStateList colorStateList) {
        int defaultColor = colorStateList.getDefaultColor();
        this.t0 = defaultColor;
        this.c0 = defaultColor;
        this.u0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
        this.v0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        this.w0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
        c();
    }

    public void setBoxBackgroundMode(int i) {
        if (i != this.T) {
            this.T = i;
            if (this.i != null) {
                k();
            }
        }
    }

    public void setBoxCollapsedPaddingTop(int i) {
        this.U = i;
    }

    public void setBoxCornerFamily(int i) {
        ShapeAppearanceModel.Builder g = this.Q.g();
        CornerSize cornerSize = this.Q.e;
        g.f11889a = MaterialShapeUtils.a(i);
        g.e = cornerSize;
        CornerSize cornerSize2 = this.Q.f;
        g.b = MaterialShapeUtils.a(i);
        g.f = cornerSize2;
        CornerSize cornerSize3 = this.Q.h;
        g.d = MaterialShapeUtils.a(i);
        g.h = cornerSize3;
        CornerSize cornerSize4 = this.Q.g;
        g.f11890c = MaterialShapeUtils.a(i);
        g.g = cornerSize4;
        this.Q = g.a();
        c();
    }

    public void setBoxStrokeColor(@ColorInt int i) {
        if (this.r0 != i) {
            this.r0 = i;
            z();
        }
    }

    public void setBoxStrokeColorStateList(@NonNull ColorStateList colorStateList) {
        if (colorStateList.isStateful()) {
            this.p0 = colorStateList.getDefaultColor();
            this.x0 = colorStateList.getColorForState(new int[]{-16842910}, -1);
            this.q0 = colorStateList.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, -1);
            this.r0 = colorStateList.getColorForState(new int[]{android.R.attr.state_focused, android.R.attr.state_enabled}, -1);
        } else if (this.r0 != colorStateList.getDefaultColor()) {
            this.r0 = colorStateList.getDefaultColor();
        }
        z();
    }

    public void setBoxStrokeErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.s0 != colorStateList) {
            this.s0 = colorStateList;
            z();
        }
    }

    public void setBoxStrokeWidth(int i) {
        this.W = i;
        z();
    }

    public void setBoxStrokeWidthFocused(int i) {
        this.a0 = i;
        z();
    }

    public void setBoxStrokeWidthFocusedResource(@DimenRes int i) {
        setBoxStrokeWidthFocused(getResources().getDimensionPixelSize(i));
    }

    public void setBoxStrokeWidthResource(@DimenRes int i) {
        setBoxStrokeWidth(getResources().getDimensionPixelSize(i));
    }

    public void setCounterEnabled(boolean z) {
        if (this.p != z) {
            IndicatorViewController indicatorViewController = this.o;
            Editable editable = null;
            if (z) {
                AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
                this.t = appCompatTextView;
                appCompatTextView.setId(R.id.textinput_counter);
                Typeface typeface = this.g0;
                if (typeface != null) {
                    this.t.setTypeface(typeface);
                }
                this.t.setMaxLines(1);
                indicatorViewController.a(this.t, 2);
                ((ViewGroup.MarginLayoutParams) this.t.getLayoutParams()).setMarginStart(getResources().getDimensionPixelOffset(R.dimen.mtrl_textinput_counter_margin_start));
                q();
                if (this.t != null) {
                    EditText editText = this.i;
                    if (editText != null) {
                        editable = editText.getText();
                    }
                    p(editable);
                }
            } else {
                indicatorViewController.g(this.t, 2);
                this.t = null;
            }
            this.p = z;
        }
    }

    public void setCounterMaxLength(int i) {
        Editable text;
        if (this.q != i) {
            if (i > 0) {
                this.q = i;
            } else {
                this.q = -1;
            }
            if (this.p && this.t != null) {
                EditText editText = this.i;
                if (editText == null) {
                    text = null;
                } else {
                    text = editText.getText();
                }
                p(text);
            }
        }
    }

    public void setCounterOverflowTextAppearance(int i) {
        if (this.u != i) {
            this.u = i;
            q();
        }
    }

    public void setCounterOverflowTextColor(@Nullable ColorStateList colorStateList) {
        if (this.E != colorStateList) {
            this.E = colorStateList;
            q();
        }
    }

    public void setCounterTextAppearance(int i) {
        if (this.v != i) {
            this.v = i;
            q();
        }
    }

    public void setCounterTextColor(@Nullable ColorStateList colorStateList) {
        if (this.D != colorStateList) {
            this.D = colorStateList;
            q();
        }
    }

    @RequiresApi
    public void setCursorColor(@Nullable ColorStateList colorStateList) {
        if (this.F != colorStateList) {
            this.F = colorStateList;
            r();
        }
    }

    @RequiresApi
    public void setCursorErrorColor(@Nullable ColorStateList colorStateList) {
        if (this.G != colorStateList) {
            this.G = colorStateList;
            if (!o() && (this.t == null || !this.r)) {
                return;
            }
            r();
        }
    }

    public void setDefaultHintTextColor(@Nullable ColorStateList colorStateList) {
        this.n0 = colorStateList;
        this.o0 = colorStateList;
        if (this.i != null) {
            w(false, false);
        }
    }

    @Override // android.view.View
    public void setEnabled(boolean z) {
        m(this, z);
        super.setEnabled(z);
    }

    public void setEndIconActivated(boolean z) {
        this.g.k.setActivated(z);
    }

    public void setEndIconCheckable(boolean z) {
        this.g.k.setCheckable(z);
    }

    public void setEndIconContentDescription(@StringRes int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        CharSequence text = i != 0 ? endCompoundLayout.getResources().getText(i) : null;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        if (checkableImageButton.getContentDescription() != text) {
            checkableImageButton.setContentDescription(text);
        }
    }

    public void setEndIconDrawable(@DrawableRes int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        Drawable a2 = i != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i) : null;
        TextInputLayout textInputLayout = endCompoundLayout.f11962c;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        checkableImageButton.setImageDrawable(a2);
        if (a2 != null) {
            IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.o, endCompoundLayout.p);
            IconHelper.c(textInputLayout, checkableImageButton, endCompoundLayout.o);
        }
    }

    public void setEndIconMinSize(@IntRange int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (i >= 0) {
            if (i != endCompoundLayout.q) {
                endCompoundLayout.q = i;
                CheckableImageButton checkableImageButton = endCompoundLayout.k;
                checkableImageButton.setMinimumWidth(i);
                checkableImageButton.setMinimumHeight(i);
                CheckableImageButton checkableImageButton2 = endCompoundLayout.g;
                checkableImageButton2.setMinimumWidth(i);
                checkableImageButton2.setMinimumHeight(i);
                return;
            }
            return;
        }
        endCompoundLayout.getClass();
        throw new IllegalArgumentException("endIconSize cannot be less than 0");
    }

    public void setEndIconMode(int i) {
        this.g.g(i);
    }

    public void setEndIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.g;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.s;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setEndIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.s = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setEndIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.r = scaleType;
        endCompoundLayout.k.setScaleType(scaleType);
        endCompoundLayout.g.setScaleType(scaleType);
    }

    public void setEndIconTintList(@Nullable ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (endCompoundLayout.o != colorStateList) {
            endCompoundLayout.o = colorStateList;
            IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.k, colorStateList, endCompoundLayout.p);
        }
    }

    public void setEndIconTintMode(@Nullable PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (endCompoundLayout.p != mode) {
            endCompoundLayout.p = mode;
            IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.k, endCompoundLayout.o, mode);
        }
    }

    public void setEndIconVisible(boolean z) {
        this.g.h(z);
    }

    public void setError(@Nullable CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.o;
        if (!indicatorViewController.q) {
            if (TextUtils.isEmpty(charSequence)) {
                return;
            } else {
                setErrorEnabled(true);
            }
        }
        if (!TextUtils.isEmpty(charSequence)) {
            indicatorViewController.c();
            indicatorViewController.p = charSequence;
            indicatorViewController.r.setText(charSequence);
            int i = indicatorViewController.n;
            if (i != 1) {
                indicatorViewController.o = 1;
            }
            indicatorViewController.i(i, indicatorViewController.o, indicatorViewController.h(indicatorViewController.r, charSequence));
            return;
        }
        indicatorViewController.f();
    }

    public void setErrorAccessibilityLiveRegion(int i) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.t = i;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            appCompatTextView.setAccessibilityLiveRegion(i);
        }
    }

    public void setErrorContentDescription(@Nullable CharSequence charSequence) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.s = charSequence;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            appCompatTextView.setContentDescription(charSequence);
        }
    }

    public void setErrorEnabled(boolean z) {
        IndicatorViewController indicatorViewController = this.o;
        TextInputLayout textInputLayout = indicatorViewController.h;
        if (indicatorViewController.q == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.g, null);
            indicatorViewController.r = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_error);
            indicatorViewController.r.setTextAlignment(5);
            Typeface typeface = indicatorViewController.B;
            if (typeface != null) {
                indicatorViewController.r.setTypeface(typeface);
            }
            int i = indicatorViewController.u;
            indicatorViewController.u = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.r;
            if (appCompatTextView2 != null) {
                indicatorViewController.h.n(appCompatTextView2, i);
            }
            ColorStateList colorStateList = indicatorViewController.v;
            indicatorViewController.v = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.r;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            CharSequence charSequence = indicatorViewController.s;
            indicatorViewController.s = charSequence;
            AppCompatTextView appCompatTextView4 = indicatorViewController.r;
            if (appCompatTextView4 != null) {
                appCompatTextView4.setContentDescription(charSequence);
            }
            int i2 = indicatorViewController.t;
            indicatorViewController.t = i2;
            AppCompatTextView appCompatTextView5 = indicatorViewController.r;
            if (appCompatTextView5 != null) {
                appCompatTextView5.setAccessibilityLiveRegion(i2);
            }
            indicatorViewController.r.setVisibility(4);
            indicatorViewController.a(indicatorViewController.r, 0);
        } else {
            indicatorViewController.f();
            indicatorViewController.g(indicatorViewController.r, 0);
            indicatorViewController.r = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        indicatorViewController.q = z;
    }

    public void setErrorIconDrawable(@DrawableRes int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.i(i != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i) : null);
        IconHelper.c(endCompoundLayout.f11962c, endCompoundLayout.g, endCompoundLayout.h);
    }

    public void setErrorIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        EndCompoundLayout endCompoundLayout = this.g;
        CheckableImageButton checkableImageButton = endCompoundLayout.g;
        View.OnLongClickListener onLongClickListener = endCompoundLayout.j;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.j = onLongClickListener;
        CheckableImageButton checkableImageButton = endCompoundLayout.g;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setErrorIconTintList(@Nullable ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (endCompoundLayout.h != colorStateList) {
            endCompoundLayout.h = colorStateList;
            IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.g, colorStateList, endCompoundLayout.i);
        }
    }

    public void setErrorIconTintMode(@Nullable PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (endCompoundLayout.i != mode) {
            endCompoundLayout.i = mode;
            IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.g, endCompoundLayout.h, mode);
        }
    }

    public void setErrorTextAppearance(@StyleRes int i) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.u = i;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null) {
            indicatorViewController.h.n(appCompatTextView, i);
        }
    }

    public void setErrorTextColor(@Nullable ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.v = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.r;
        if (appCompatTextView != null && colorStateList != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setExpandedHintEnabled(boolean z) {
        if (this.B0 != z) {
            this.B0 = z;
            w(false, false);
        }
    }

    public void setHelperText(@Nullable CharSequence charSequence) {
        boolean isEmpty = TextUtils.isEmpty(charSequence);
        IndicatorViewController indicatorViewController = this.o;
        if (isEmpty) {
            if (indicatorViewController.x) {
                setHelperTextEnabled(false);
                return;
            }
            return;
        }
        if (!indicatorViewController.x) {
            setHelperTextEnabled(true);
        }
        indicatorViewController.c();
        indicatorViewController.w = charSequence;
        indicatorViewController.y.setText(charSequence);
        int i = indicatorViewController.n;
        if (i != 2) {
            indicatorViewController.o = 2;
        }
        indicatorViewController.i(i, indicatorViewController.o, indicatorViewController.h(indicatorViewController.y, charSequence));
    }

    public void setHelperTextColor(@Nullable ColorStateList colorStateList) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.A = colorStateList;
        AppCompatTextView appCompatTextView = indicatorViewController.y;
        if (appCompatTextView != null && colorStateList != null) {
            appCompatTextView.setTextColor(colorStateList);
        }
    }

    public void setHelperTextEnabled(boolean z) {
        final IndicatorViewController indicatorViewController = this.o;
        TextInputLayout textInputLayout = indicatorViewController.h;
        if (indicatorViewController.x == z) {
            return;
        }
        indicatorViewController.c();
        if (z) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(indicatorViewController.g, null);
            indicatorViewController.y = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_helper_text);
            indicatorViewController.y.setTextAlignment(5);
            Typeface typeface = indicatorViewController.B;
            if (typeface != null) {
                indicatorViewController.y.setTypeface(typeface);
            }
            indicatorViewController.y.setVisibility(4);
            indicatorViewController.y.setAccessibilityLiveRegion(1);
            int i = indicatorViewController.z;
            indicatorViewController.z = i;
            AppCompatTextView appCompatTextView2 = indicatorViewController.y;
            if (appCompatTextView2 != null) {
                appCompatTextView2.setTextAppearance(i);
            }
            ColorStateList colorStateList = indicatorViewController.A;
            indicatorViewController.A = colorStateList;
            AppCompatTextView appCompatTextView3 = indicatorViewController.y;
            if (appCompatTextView3 != null && colorStateList != null) {
                appCompatTextView3.setTextColor(colorStateList);
            }
            indicatorViewController.a(indicatorViewController.y, 1);
            indicatorViewController.y.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.textfield.IndicatorViewController.2
                @Override // android.view.View.AccessibilityDelegate
                public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                    super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                    EditText editText = IndicatorViewController.this.h.getEditText();
                    if (editText != null) {
                        accessibilityNodeInfo.setLabeledBy(editText);
                    }
                }
            });
        } else {
            indicatorViewController.c();
            int i2 = indicatorViewController.n;
            if (i2 == 2) {
                indicatorViewController.o = 0;
            }
            indicatorViewController.i(i2, indicatorViewController.o, indicatorViewController.h(indicatorViewController.y, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
            indicatorViewController.g(indicatorViewController.y, 1);
            indicatorViewController.y = null;
            textInputLayout.t();
            textInputLayout.z();
        }
        indicatorViewController.x = z;
    }

    public void setHelperTextTextAppearance(@StyleRes int i) {
        IndicatorViewController indicatorViewController = this.o;
        indicatorViewController.z = i;
        AppCompatTextView appCompatTextView = indicatorViewController.y;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setHint(@Nullable CharSequence charSequence) {
        if (this.H) {
            setHintInternal(charSequence);
            sendAccessibilityEvent(2048);
        }
    }

    public void setHintAnimationEnabled(boolean z) {
        this.C0 = z;
    }

    public void setHintEnabled(boolean z) {
        if (z != this.H) {
            this.H = z;
            if (!z) {
                this.J = false;
                if (!TextUtils.isEmpty(this.I) && TextUtils.isEmpty(this.i.getHint())) {
                    this.i.setHint(this.I);
                }
                setHintInternal(null);
            } else {
                CharSequence hint = this.i.getHint();
                if (!TextUtils.isEmpty(hint)) {
                    if (TextUtils.isEmpty(this.I)) {
                        setHint(hint);
                    }
                    this.i.setHint((CharSequence) null);
                }
                this.J = true;
            }
            if (this.i != null) {
                v();
            }
        }
    }

    public void setHintMaxLines(int i) {
        CollapsingTextHelper collapsingTextHelper = this.A0;
        if (i != collapsingTextHelper.f0) {
            collapsingTextHelper.f0 = i;
            collapsingTextHelper.j(false);
        }
        if (i != collapsingTextHelper.e0) {
            collapsingTextHelper.e0 = i;
            collapsingTextHelper.j(false);
        }
        requestLayout();
    }

    public void setHintTextAppearance(@StyleRes int i) {
        CollapsingTextHelper collapsingTextHelper = this.A0;
        collapsingTextHelper.m(i);
        this.o0 = collapsingTextHelper.k;
        if (this.i != null) {
            w(false, false);
            v();
        }
    }

    public void setHintTextColor(@Nullable ColorStateList colorStateList) {
        if (this.o0 != colorStateList) {
            if (this.n0 == null) {
                CollapsingTextHelper collapsingTextHelper = this.A0;
                if (collapsingTextHelper.k != colorStateList) {
                    collapsingTextHelper.k = colorStateList;
                    collapsingTextHelper.j(false);
                }
            }
            this.o0 = colorStateList;
            if (this.i != null) {
                w(false, false);
            }
        }
    }

    public void setLengthCounter(@NonNull LengthCounter lengthCounter) {
        this.s = lengthCounter;
    }

    public void setMaxEms(int i) {
        this.l = i;
        EditText editText = this.i;
        if (editText != null && i != -1) {
            editText.setMaxEms(i);
        }
    }

    public void setMaxWidth(@Px int i) {
        this.n = i;
        EditText editText = this.i;
        if (editText != null && i != -1) {
            editText.setMaxWidth(i);
        }
    }

    public void setMaxWidthResource(@DimenRes int i) {
        setMaxWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    public void setMinEms(int i) {
        this.k = i;
        EditText editText = this.i;
        if (editText != null && i != -1) {
            editText.setMinEms(i);
        }
    }

    public void setMinWidth(@Px int i) {
        this.m = i;
        EditText editText = this.i;
        if (editText != null && i != -1) {
            editText.setMinWidth(i);
        }
    }

    public void setMinWidthResource(@DimenRes int i) {
        setMinWidth(getContext().getResources().getDimensionPixelSize(i));
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@StringRes int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.k.setContentDescription(i != 0 ? endCompoundLayout.getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@DrawableRes int i) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.k.setImageDrawable(i != 0 ? AppCompatResources.a(endCompoundLayout.getContext(), i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleEnabled(boolean z) {
        EndCompoundLayout endCompoundLayout = this.g;
        if (z && endCompoundLayout.m != 1) {
            endCompoundLayout.g(1);
        } else if (!z) {
            endCompoundLayout.g(0);
        } else {
            endCompoundLayout.getClass();
        }
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintList(@Nullable ColorStateList colorStateList) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.o = colorStateList;
        IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.k, colorStateList, endCompoundLayout.p);
    }

    @Deprecated
    public void setPasswordVisibilityToggleTintMode(@Nullable PorterDuff.Mode mode) {
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.p = mode;
        IconHelper.a(endCompoundLayout.f11962c, endCompoundLayout.k, endCompoundLayout.o, mode);
    }

    public void setPlaceholderText(@Nullable CharSequence charSequence) {
        Editable editable = null;
        if (this.y == null) {
            AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
            this.y = appCompatTextView;
            appCompatTextView.setId(R.id.textinput_placeholder);
            this.y.setImportantForAccessibility(1);
            this.y.setAccessibilityLiveRegion(1);
            Fade f = f();
            this.B = f;
            f.f = 67L;
            this.C = f();
            setPlaceholderTextAppearance(this.A);
            setPlaceholderTextColor(this.z);
            ViewCompat.z(this.y, new AccessibilityDelegateCompat());
        }
        if (TextUtils.isEmpty(charSequence)) {
            setPlaceholderTextEnabled(false);
        } else {
            if (!this.x) {
                setPlaceholderTextEnabled(true);
            }
            this.w = charSequence;
        }
        EditText editText = this.i;
        if (editText != null) {
            editable = editText.getText();
        }
        x(editable);
    }

    public void setPlaceholderTextAppearance(@StyleRes int i) {
        this.A = i;
        AppCompatTextView appCompatTextView = this.y;
        if (appCompatTextView != null) {
            appCompatTextView.setTextAppearance(i);
        }
    }

    public void setPlaceholderTextColor(@Nullable ColorStateList colorStateList) {
        if (this.z != colorStateList) {
            this.z = colorStateList;
            AppCompatTextView appCompatTextView = this.y;
            if (appCompatTextView != null && colorStateList != null) {
                appCompatTextView.setTextColor(colorStateList);
            }
        }
    }

    public void setPrefixText(@Nullable CharSequence charSequence) {
        CharSequence charSequence2;
        StartCompoundLayout startCompoundLayout = this.f;
        startCompoundLayout.getClass();
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        startCompoundLayout.g = charSequence2;
        startCompoundLayout.f.setText(charSequence);
        startCompoundLayout.e();
    }

    public void setPrefixTextAppearance(@StyleRes int i) {
        this.f.f.setTextAppearance(i);
    }

    public void setPrefixTextColor(@NonNull ColorStateList colorStateList) {
        this.f.f.setTextColor(colorStateList);
    }

    public void setShapeAppearanceModel(@NonNull ShapeAppearanceModel shapeAppearanceModel) {
        MaterialShapeDrawable materialShapeDrawable = this.K;
        if (materialShapeDrawable != null && materialShapeDrawable.f.f11880a != shapeAppearanceModel) {
            this.Q = shapeAppearanceModel;
            c();
        }
    }

    public void setStartIconCheckable(boolean z) {
        this.f.h.setCheckable(z);
    }

    public void setStartIconContentDescription(@StringRes int i) {
        setStartIconContentDescription(i != 0 ? getResources().getText(i) : null);
    }

    public void setStartIconDrawable(@DrawableRes int i) {
        setStartIconDrawable(i != 0 ? AppCompatResources.a(getContext(), i) : null);
    }

    public void setStartIconMinSize(@IntRange int i) {
        StartCompoundLayout startCompoundLayout = this.f;
        if (i >= 0) {
            if (i != startCompoundLayout.k) {
                startCompoundLayout.k = i;
                CheckableImageButton checkableImageButton = startCompoundLayout.h;
                checkableImageButton.setMinimumWidth(i);
                checkableImageButton.setMinimumHeight(i);
                return;
            }
            return;
        }
        startCompoundLayout.getClass();
        throw new IllegalArgumentException("startIconSize cannot be less than 0");
    }

    public void setStartIconOnClickListener(@Nullable View.OnClickListener onClickListener) {
        StartCompoundLayout startCompoundLayout = this.f;
        CheckableImageButton checkableImageButton = startCompoundLayout.h;
        View.OnLongClickListener onLongClickListener = startCompoundLayout.m;
        checkableImageButton.setOnClickListener(onClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setStartIconOnLongClickListener(@Nullable View.OnLongClickListener onLongClickListener) {
        StartCompoundLayout startCompoundLayout = this.f;
        startCompoundLayout.m = onLongClickListener;
        CheckableImageButton checkableImageButton = startCompoundLayout.h;
        checkableImageButton.setOnLongClickListener(onLongClickListener);
        IconHelper.d(checkableImageButton, onLongClickListener);
    }

    public void setStartIconScaleType(@NonNull ImageView.ScaleType scaleType) {
        StartCompoundLayout startCompoundLayout = this.f;
        startCompoundLayout.l = scaleType;
        startCompoundLayout.h.setScaleType(scaleType);
    }

    public void setStartIconTintList(@Nullable ColorStateList colorStateList) {
        StartCompoundLayout startCompoundLayout = this.f;
        if (startCompoundLayout.i != colorStateList) {
            startCompoundLayout.i = colorStateList;
            IconHelper.a(startCompoundLayout.f11977c, startCompoundLayout.h, colorStateList, startCompoundLayout.j);
        }
    }

    public void setStartIconTintMode(@Nullable PorterDuff.Mode mode) {
        StartCompoundLayout startCompoundLayout = this.f;
        if (startCompoundLayout.j != mode) {
            startCompoundLayout.j = mode;
            IconHelper.a(startCompoundLayout.f11977c, startCompoundLayout.h, startCompoundLayout.i, mode);
        }
    }

    public void setStartIconVisible(boolean z) {
        this.f.c(z);
    }

    public void setSuffixText(@Nullable CharSequence charSequence) {
        CharSequence charSequence2;
        EndCompoundLayout endCompoundLayout = this.g;
        endCompoundLayout.getClass();
        if (TextUtils.isEmpty(charSequence)) {
            charSequence2 = null;
        } else {
            charSequence2 = charSequence;
        }
        endCompoundLayout.t = charSequence2;
        endCompoundLayout.u.setText(charSequence);
        endCompoundLayout.n();
    }

    public void setSuffixTextAppearance(@StyleRes int i) {
        this.g.u.setTextAppearance(i);
    }

    public void setSuffixTextColor(@NonNull ColorStateList colorStateList) {
        this.g.u.setTextColor(colorStateList);
    }

    public void setTextInputAccessibilityDelegate(@Nullable AccessibilityDelegate accessibilityDelegate) {
        EditText editText = this.i;
        if (editText != null) {
            ViewCompat.z(editText, accessibilityDelegate);
        }
    }

    public void setTypeface(@Nullable Typeface typeface) {
        if (typeface != this.g0) {
            this.g0 = typeface;
            CollapsingTextHelper collapsingTextHelper = this.A0;
            boolean n = collapsingTextHelper.n(typeface);
            boolean o = collapsingTextHelper.o(typeface);
            if (n || o) {
                collapsingTextHelper.j(false);
            }
            IndicatorViewController indicatorViewController = this.o;
            if (typeface != indicatorViewController.B) {
                indicatorViewController.B = typeface;
                AppCompatTextView appCompatTextView = indicatorViewController.r;
                if (appCompatTextView != null) {
                    appCompatTextView.setTypeface(typeface);
                }
                AppCompatTextView appCompatTextView2 = indicatorViewController.y;
                if (appCompatTextView2 != null) {
                    appCompatTextView2.setTypeface(typeface);
                }
            }
            AppCompatTextView appCompatTextView3 = this.t;
            if (appCompatTextView3 != null) {
                appCompatTextView3.setTypeface(typeface);
            }
        }
    }

    public final void t() {
        Drawable background;
        AppCompatTextView appCompatTextView;
        EditText editText = this.i;
        if (editText != null && this.T == 0 && (background = editText.getBackground()) != null) {
            int[] iArr = DrawableUtils.f290a;
            Drawable mutate = background.mutate();
            if (o()) {
                mutate.setColorFilter(AppCompatDrawableManager.c(getErrorCurrentTextColors(), PorterDuff.Mode.SRC_IN));
            } else if (this.r && (appCompatTextView = this.t) != null) {
                mutate.setColorFilter(AppCompatDrawableManager.c(appCompatTextView.getCurrentTextColor(), PorterDuff.Mode.SRC_IN));
            } else {
                mutate.clearColorFilter();
                this.i.refreshDrawableState();
            }
        }
    }

    public final void u() {
        EditText editText = this.i;
        if (editText != null && this.K != null) {
            if ((this.N || editText.getBackground() == null) && this.T != 0) {
                this.i.setBackground(getEditTextBoxBackground());
                this.N = true;
            }
        }
    }

    public final void v() {
        if (this.T != 1) {
            FrameLayout frameLayout = this.f11978c;
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) frameLayout.getLayoutParams();
            int e = e();
            if (e != layoutParams.topMargin) {
                layoutParams.topMargin = e;
                frameLayout.requestLayout();
            }
        }
    }

    public final void w(boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        ColorStateList colorStateList;
        AppCompatTextView appCompatTextView;
        ColorStateList colorStateList2;
        int i;
        boolean isEnabled = isEnabled();
        EditText editText = this.i;
        if (editText != null && !TextUtils.isEmpty(editText.getText())) {
            z3 = true;
        } else {
            z3 = false;
        }
        EditText editText2 = this.i;
        if (editText2 != null && editText2.hasFocus()) {
            z4 = true;
        } else {
            z4 = false;
        }
        ColorStateList colorStateList3 = this.n0;
        CollapsingTextHelper collapsingTextHelper = this.A0;
        if (colorStateList3 != null) {
            collapsingTextHelper.l(colorStateList3);
        }
        Editable editable = null;
        if (!isEnabled) {
            ColorStateList colorStateList4 = this.n0;
            if (colorStateList4 != null) {
                i = colorStateList4.getColorForState(new int[]{-16842910}, this.x0);
            } else {
                i = this.x0;
            }
            collapsingTextHelper.l(ColorStateList.valueOf(i));
        } else if (o()) {
            AppCompatTextView appCompatTextView2 = this.o.r;
            if (appCompatTextView2 != null) {
                colorStateList2 = appCompatTextView2.getTextColors();
            } else {
                colorStateList2 = null;
            }
            collapsingTextHelper.l(colorStateList2);
        } else if (this.r && (appCompatTextView = this.t) != null) {
            collapsingTextHelper.l(appCompatTextView.getTextColors());
        } else if (z4 && (colorStateList = this.o0) != null && collapsingTextHelper.k != colorStateList) {
            collapsingTextHelper.k = colorStateList;
            collapsingTextHelper.j(false);
        }
        EndCompoundLayout endCompoundLayout = this.g;
        StartCompoundLayout startCompoundLayout = this.f;
        if (!z3 && this.B0 && (!isEnabled() || !z4)) {
            if (z2 || !this.z0) {
                ValueAnimator valueAnimator = this.D0;
                if (valueAnimator != null && valueAnimator.isRunning()) {
                    this.D0.cancel();
                }
                if (z && this.C0) {
                    b(0.0f);
                } else {
                    collapsingTextHelper.p(0.0f);
                }
                if (g() && !((CutoutDrawable) this.K).L.s.isEmpty() && g()) {
                    ((CutoutDrawable) this.K).w(0.0f, 0.0f, 0.0f, 0.0f);
                }
                this.z0 = true;
                AppCompatTextView appCompatTextView3 = this.y;
                if (appCompatTextView3 != null && this.x) {
                    appCompatTextView3.setText((CharSequence) null);
                    TransitionManager.a(this.f11978c, this.C);
                    this.y.setVisibility(4);
                }
                startCompoundLayout.n = true;
                startCompoundLayout.e();
                endCompoundLayout.v = true;
                endCompoundLayout.n();
                return;
            }
            return;
        }
        if (!z2 && !this.z0) {
            return;
        }
        ValueAnimator valueAnimator2 = this.D0;
        if (valueAnimator2 != null && valueAnimator2.isRunning()) {
            this.D0.cancel();
        }
        if (z && this.C0) {
            b(1.0f);
        } else {
            collapsingTextHelper.p(1.0f);
        }
        this.z0 = false;
        if (g()) {
            l();
        }
        EditText editText3 = this.i;
        if (editText3 != null) {
            editable = editText3.getText();
        }
        x(editable);
        startCompoundLayout.n = false;
        startCompoundLayout.e();
        endCompoundLayout.v = false;
        endCompoundLayout.n();
    }

    public final void x(Editable editable) {
        int b = this.s.b(editable);
        FrameLayout frameLayout = this.f11978c;
        if (b == 0 && !this.z0) {
            if (this.y != null && this.x && !TextUtils.isEmpty(this.w)) {
                this.y.setText(this.w);
                TransitionManager.a(frameLayout, this.B);
                this.y.setVisibility(0);
                this.y.bringToFront();
                return;
            }
            return;
        }
        AppCompatTextView appCompatTextView = this.y;
        if (appCompatTextView != null && this.x) {
            appCompatTextView.setText((CharSequence) null);
            TransitionManager.a(frameLayout, this.C);
            this.y.setVisibility(4);
        }
    }

    public final void y(boolean z, boolean z2) {
        int defaultColor = this.s0.getDefaultColor();
        int colorForState = this.s0.getColorForState(new int[]{android.R.attr.state_hovered, android.R.attr.state_enabled}, defaultColor);
        int colorForState2 = this.s0.getColorForState(new int[]{android.R.attr.state_activated, android.R.attr.state_enabled}, defaultColor);
        if (z) {
            this.b0 = colorForState2;
        } else if (z2) {
            this.b0 = colorForState;
        } else {
            this.b0 = defaultColor;
        }
    }

    public final void z() {
        boolean z;
        AppCompatTextView appCompatTextView;
        EditText editText;
        EditText editText2;
        if (this.K != null && this.T != 0) {
            boolean z2 = false;
            if (!isFocused() && ((editText2 = this.i) == null || !editText2.hasFocus())) {
                z = false;
            } else {
                z = true;
            }
            if (isHovered() || ((editText = this.i) != null && editText.isHovered())) {
                z2 = true;
            }
            if (!isEnabled()) {
                this.b0 = this.x0;
            } else if (o()) {
                if (this.s0 != null) {
                    y(z, z2);
                } else {
                    this.b0 = getErrorCurrentTextColors();
                }
            } else if (this.r && (appCompatTextView = this.t) != null) {
                if (this.s0 != null) {
                    y(z, z2);
                } else {
                    this.b0 = appCompatTextView.getCurrentTextColor();
                }
            } else if (z) {
                this.b0 = this.r0;
            } else if (z2) {
                this.b0 = this.q0;
            } else {
                this.b0 = this.p0;
            }
            if (Build.VERSION.SDK_INT >= 29) {
                r();
            }
            EndCompoundLayout endCompoundLayout = this.g;
            TextInputLayout textInputLayout = endCompoundLayout.f11962c;
            CheckableImageButton checkableImageButton = endCompoundLayout.k;
            TextInputLayout textInputLayout2 = endCompoundLayout.f11962c;
            endCompoundLayout.l();
            IconHelper.c(textInputLayout2, endCompoundLayout.g, endCompoundLayout.h);
            IconHelper.c(textInputLayout2, checkableImageButton, endCompoundLayout.o);
            if (endCompoundLayout.b() instanceof DropdownMenuEndIconDelegate) {
                if (textInputLayout.o() && checkableImageButton.getDrawable() != null) {
                    Drawable mutate = checkableImageButton.getDrawable().mutate();
                    mutate.setTint(textInputLayout.getErrorCurrentTextColors());
                    checkableImageButton.setImageDrawable(mutate);
                } else {
                    IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.o, endCompoundLayout.p);
                }
            }
            StartCompoundLayout startCompoundLayout = this.f;
            IconHelper.c(startCompoundLayout.f11977c, startCompoundLayout.h, startCompoundLayout.i);
            if (this.T == 2) {
                int i = this.V;
                if (z && isEnabled()) {
                    this.V = this.a0;
                } else {
                    this.V = this.W;
                }
                if (this.V != i && g() && !this.z0) {
                    if (g()) {
                        ((CutoutDrawable) this.K).w(0.0f, 0.0f, 0.0f, 0.0f);
                    }
                    l();
                }
            }
            if (this.T == 1) {
                if (!isEnabled()) {
                    this.c0 = this.u0;
                } else if (z2 && !z) {
                    this.c0 = this.w0;
                } else if (z) {
                    this.c0 = this.v0;
                } else {
                    this.c0 = this.t0;
                }
            }
            c();
        }
    }

    public void setStartIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.f.h;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setStartIconDrawable(@Nullable Drawable drawable) {
        this.f.b(drawable);
    }

    public void setHint(@StringRes int i) {
        setHint(i != 0 ? getResources().getText(i) : null);
    }

    @Deprecated
    public void setPasswordVisibilityToggleContentDescription(@Nullable CharSequence charSequence) {
        this.g.k.setContentDescription(charSequence);
    }

    @Deprecated
    public void setPasswordVisibilityToggleDrawable(@Nullable Drawable drawable) {
        this.g.k.setImageDrawable(drawable);
    }

    public void setErrorIconDrawable(@Nullable Drawable drawable) {
        this.g.i(drawable);
    }

    public void setEndIconContentDescription(@Nullable CharSequence charSequence) {
        CheckableImageButton checkableImageButton = this.g.k;
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
    }

    public void setEndIconDrawable(@Nullable Drawable drawable) {
        EndCompoundLayout endCompoundLayout = this.g;
        TextInputLayout textInputLayout = endCompoundLayout.f11962c;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            IconHelper.a(textInputLayout, checkableImageButton, endCompoundLayout.o, endCompoundLayout.p);
            IconHelper.c(textInputLayout, checkableImageButton, endCompoundLayout.o);
        }
    }
}
