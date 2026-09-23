package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class StartCompoundLayout extends LinearLayout {

    /* renamed from: c, reason: collision with root package name */
    public final TextInputLayout f11977c;
    public final AppCompatTextView f;
    public CharSequence g;
    public final CheckableImageButton h;
    public ColorStateList i;
    public PorterDuff.Mode j;
    public int k;
    public ImageView.ScaleType l;
    public View.OnLongClickListener m;
    public boolean n;

    public StartCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        CharSequence text;
        this.f11977c = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(R.layout.design_text_input_start_icon, (ViewGroup) this, false);
        this.h = checkableImageButton;
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.f = appCompatTextView;
        if (MaterialResources.e(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginEnd(0);
        }
        View.OnLongClickListener onLongClickListener = this.m;
        checkableImageButton.setOnClickListener(null);
        IconHelper.d(checkableImageButton, onLongClickListener);
        this.m = null;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
        int i = R.styleable.TextInputLayout_startIconTint;
        TypedArray typedArray = tintTypedArray.b;
        if (typedArray.hasValue(i)) {
            this.i = MaterialResources.b(getContext(), tintTypedArray, R.styleable.TextInputLayout_startIconTint);
        }
        if (typedArray.hasValue(R.styleable.TextInputLayout_startIconTintMode)) {
            this.j = ViewUtils.c(typedArray.getInt(R.styleable.TextInputLayout_startIconTintMode, -1), null);
        }
        if (typedArray.hasValue(R.styleable.TextInputLayout_startIconDrawable)) {
            b(tintTypedArray.b(R.styleable.TextInputLayout_startIconDrawable));
            if (typedArray.hasValue(R.styleable.TextInputLayout_startIconContentDescription) && checkableImageButton.getContentDescription() != (text = typedArray.getText(R.styleable.TextInputLayout_startIconContentDescription))) {
                checkableImageButton.setContentDescription(text);
            }
            checkableImageButton.setCheckable(typedArray.getBoolean(R.styleable.TextInputLayout_startIconCheckable, true));
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.TextInputLayout_startIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize >= 0) {
            if (dimensionPixelSize != this.k) {
                this.k = dimensionPixelSize;
                checkableImageButton.setMinimumWidth(dimensionPixelSize);
                checkableImageButton.setMinimumHeight(dimensionPixelSize);
            }
            if (typedArray.hasValue(R.styleable.TextInputLayout_startIconScaleType)) {
                ImageView.ScaleType b = IconHelper.b(typedArray.getInt(R.styleable.TextInputLayout_startIconScaleType, -1));
                this.l = b;
                checkableImageButton.setScaleType(b);
            }
            appCompatTextView.setVisibility(8);
            appCompatTextView.setId(R.id.textinput_prefix_text);
            appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
            appCompatTextView.setAccessibilityLiveRegion(1);
            appCompatTextView.setTextAppearance(typedArray.getResourceId(R.styleable.TextInputLayout_prefixTextAppearance, 0));
            if (typedArray.hasValue(R.styleable.TextInputLayout_prefixTextColor)) {
                appCompatTextView.setTextColor(tintTypedArray.a(R.styleable.TextInputLayout_prefixTextColor));
            }
            CharSequence text2 = typedArray.getText(R.styleable.TextInputLayout_prefixText);
            this.g = TextUtils.isEmpty(text2) ? null : text2;
            appCompatTextView.setText(text2);
            e();
            addView(checkableImageButton);
            addView(appCompatTextView);
            return;
        }
        throw new IllegalArgumentException("startIconSize cannot be less than 0");
    }

    public final int a() {
        int i;
        CheckableImageButton checkableImageButton = this.h;
        if (checkableImageButton.getVisibility() == 0) {
            i = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginEnd() + checkableImageButton.getMeasuredWidth();
        } else {
            i = 0;
        }
        return this.f.getPaddingStart() + getPaddingStart() + i;
    }

    public final void b(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.h;
        checkableImageButton.setImageDrawable(drawable);
        if (drawable != null) {
            ColorStateList colorStateList = this.i;
            PorterDuff.Mode mode = this.j;
            TextInputLayout textInputLayout = this.f11977c;
            IconHelper.a(textInputLayout, checkableImageButton, colorStateList, mode);
            c(true);
            IconHelper.c(textInputLayout, checkableImageButton, this.i);
            return;
        }
        c(false);
        View.OnLongClickListener onLongClickListener = this.m;
        checkableImageButton.setOnClickListener(null);
        IconHelper.d(checkableImageButton, onLongClickListener);
        this.m = null;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
        if (checkableImageButton.getContentDescription() != null) {
            checkableImageButton.setContentDescription(null);
        }
    }

    public final void c(boolean z) {
        boolean z2;
        CheckableImageButton checkableImageButton = this.h;
        int i = 0;
        if (checkableImageButton.getVisibility() == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 != z) {
            if (!z) {
                i = 8;
            }
            checkableImageButton.setVisibility(i);
            d();
            e();
        }
    }

    public final void d() {
        int paddingStart;
        EditText editText = this.f11977c.i;
        if (editText == null) {
            return;
        }
        if (this.h.getVisibility() == 0) {
            paddingStart = 0;
        } else {
            paddingStart = editText.getPaddingStart();
        }
        this.f.setPaddingRelative(paddingStart, editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), editText.getCompoundPaddingBottom());
    }

    public final void e() {
        int i;
        int i2 = 8;
        if (this.g != null && !this.n) {
            i = 0;
        } else {
            i = 8;
        }
        if (this.h.getVisibility() == 0 || i == 0) {
            i2 = 0;
        }
        setVisibility(i2);
        this.f.setVisibility(i);
        this.f11977c.s();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        d();
    }
}
