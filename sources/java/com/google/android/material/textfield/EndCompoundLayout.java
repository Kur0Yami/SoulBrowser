package com.google.android.material.textfield;

import android.annotation.SuppressLint;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.internal.ViewUtils;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"ViewConstructor"})
/* loaded from: classes3.dex */
public class EndCompoundLayout extends LinearLayout {
    public static final /* synthetic */ int B = 0;
    public final TextInputLayout.OnEditTextAttachedListener A;

    /* renamed from: c, reason: collision with root package name */
    public final TextInputLayout f11962c;
    public final FrameLayout f;
    public final CheckableImageButton g;
    public ColorStateList h;
    public PorterDuff.Mode i;
    public View.OnLongClickListener j;
    public final CheckableImageButton k;
    public final EndIconDelegates l;
    public int m;
    public final LinkedHashSet n;
    public ColorStateList o;
    public PorterDuff.Mode p;
    public int q;
    public ImageView.ScaleType r;
    public View.OnLongClickListener s;
    public CharSequence t;
    public final AppCompatTextView u;
    public boolean v;
    public EditText w;
    public final AccessibilityManager x;
    public AccessibilityManager.TouchExplorationStateChangeListener y;
    public final TextWatcher z;

    /* loaded from: classes3.dex */
    public static class EndIconDelegates {

        /* renamed from: a, reason: collision with root package name */
        public final SparseArray f11966a = new SparseArray();
        public final EndCompoundLayout b;

        /* renamed from: c, reason: collision with root package name */
        public final int f11967c;
        public final int d;

        public EndIconDelegates(EndCompoundLayout endCompoundLayout, TintTypedArray tintTypedArray) {
            this.b = endCompoundLayout;
            int i = R.styleable.TextInputLayout_endIconDrawable;
            TypedArray typedArray = tintTypedArray.b;
            this.f11967c = typedArray.getResourceId(i, 0);
            this.d = typedArray.getResourceId(R.styleable.TextInputLayout_passwordToggleDrawable, 0);
        }
    }

    public EndCompoundLayout(TextInputLayout textInputLayout, TintTypedArray tintTypedArray) {
        super(textInputLayout.getContext());
        CharSequence charSequence;
        CharSequence text;
        this.m = 0;
        this.n = new LinkedHashSet();
        this.z = new TextWatcherAdapter() { // from class: com.google.android.material.textfield.EndCompoundLayout.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                EndCompoundLayout.this.b().a();
            }

            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void beforeTextChanged(CharSequence charSequence2, int i, int i2, int i3) {
                EndCompoundLayout.this.b().b();
            }
        };
        TextInputLayout.OnEditTextAttachedListener onEditTextAttachedListener = new TextInputLayout.OnEditTextAttachedListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.2
            @Override // com.google.android.material.textfield.TextInputLayout.OnEditTextAttachedListener
            public final void a(TextInputLayout textInputLayout2) {
                EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                TextWatcher textWatcher = endCompoundLayout.z;
                if (endCompoundLayout.w == textInputLayout2.getEditText()) {
                    return;
                }
                EditText editText = endCompoundLayout.w;
                if (editText != null) {
                    editText.removeTextChangedListener(textWatcher);
                    if (endCompoundLayout.w.getOnFocusChangeListener() == endCompoundLayout.b().e()) {
                        endCompoundLayout.w.setOnFocusChangeListener(null);
                    }
                }
                EditText editText2 = textInputLayout2.getEditText();
                endCompoundLayout.w = editText2;
                if (editText2 != null) {
                    editText2.addTextChangedListener(textWatcher);
                }
                endCompoundLayout.b().l(endCompoundLayout.w);
                endCompoundLayout.j(endCompoundLayout.b());
            }
        };
        this.A = onEditTextAttachedListener;
        this.x = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.f11962c = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.f = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton a2 = a(this, from, R.id.text_input_error_icon);
        this.g = a2;
        CheckableImageButton a3 = a(frameLayout, from, R.id.text_input_end_icon);
        this.k = a3;
        this.l = new EndIconDelegates(this, tintTypedArray);
        AppCompatTextView appCompatTextView = new AppCompatTextView(getContext(), null);
        this.u = appCompatTextView;
        int i = R.styleable.TextInputLayout_errorIconTint;
        TypedArray typedArray = tintTypedArray.b;
        if (typedArray.hasValue(i)) {
            this.h = MaterialResources.b(getContext(), tintTypedArray, R.styleable.TextInputLayout_errorIconTint);
        }
        if (typedArray.hasValue(R.styleable.TextInputLayout_errorIconTintMode)) {
            this.i = ViewUtils.c(typedArray.getInt(R.styleable.TextInputLayout_errorIconTintMode, -1), null);
        }
        if (typedArray.hasValue(R.styleable.TextInputLayout_errorIconDrawable)) {
            i(tintTypedArray.b(R.styleable.TextInputLayout_errorIconDrawable));
        }
        a2.setContentDescription(getResources().getText(R.string.error_icon_content_description));
        a2.setImportantForAccessibility(2);
        a2.setClickable(false);
        a2.setPressable(false);
        a2.setCheckable(false);
        a2.setFocusable(false);
        if (!typedArray.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (typedArray.hasValue(R.styleable.TextInputLayout_endIconTint)) {
                this.o = MaterialResources.b(getContext(), tintTypedArray, R.styleable.TextInputLayout_endIconTint);
            }
            if (typedArray.hasValue(R.styleable.TextInputLayout_endIconTintMode)) {
                this.p = ViewUtils.c(typedArray.getInt(R.styleable.TextInputLayout_endIconTintMode, -1), null);
            }
        }
        if (typedArray.hasValue(R.styleable.TextInputLayout_endIconMode)) {
            g(typedArray.getInt(R.styleable.TextInputLayout_endIconMode, 0));
            if (typedArray.hasValue(R.styleable.TextInputLayout_endIconContentDescription) && a3.getContentDescription() != (text = typedArray.getText(R.styleable.TextInputLayout_endIconContentDescription))) {
                a3.setContentDescription(text);
            }
            a3.setCheckable(typedArray.getBoolean(R.styleable.TextInputLayout_endIconCheckable, true));
        } else if (typedArray.hasValue(R.styleable.TextInputLayout_passwordToggleEnabled)) {
            if (typedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTint)) {
                this.o = MaterialResources.b(getContext(), tintTypedArray, R.styleable.TextInputLayout_passwordToggleTint);
            }
            if (typedArray.hasValue(R.styleable.TextInputLayout_passwordToggleTintMode)) {
                this.p = ViewUtils.c(typedArray.getInt(R.styleable.TextInputLayout_passwordToggleTintMode, -1), null);
            }
            g(typedArray.getBoolean(R.styleable.TextInputLayout_passwordToggleEnabled, false) ? 1 : 0);
            CharSequence text2 = typedArray.getText(R.styleable.TextInputLayout_passwordToggleContentDescription);
            if (a3.getContentDescription() != text2) {
                a3.setContentDescription(text2);
            }
        }
        int dimensionPixelSize = typedArray.getDimensionPixelSize(R.styleable.TextInputLayout_endIconMinSize, getResources().getDimensionPixelSize(R.dimen.mtrl_min_touch_target_size));
        if (dimensionPixelSize >= 0) {
            if (dimensionPixelSize != this.q) {
                this.q = dimensionPixelSize;
                a3.setMinimumWidth(dimensionPixelSize);
                a3.setMinimumHeight(dimensionPixelSize);
                a2.setMinimumWidth(dimensionPixelSize);
                a2.setMinimumHeight(dimensionPixelSize);
            }
            if (typedArray.hasValue(R.styleable.TextInputLayout_endIconScaleType)) {
                ImageView.ScaleType b = IconHelper.b(typedArray.getInt(R.styleable.TextInputLayout_endIconScaleType, -1));
                this.r = b;
                a3.setScaleType(b);
                a2.setScaleType(b);
            }
            appCompatTextView.setVisibility(8);
            appCompatTextView.setId(R.id.textinput_suffix_text);
            appCompatTextView.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
            appCompatTextView.setAccessibilityLiveRegion(1);
            appCompatTextView.setTextAppearance(typedArray.getResourceId(R.styleable.TextInputLayout_suffixTextAppearance, 0));
            if (typedArray.hasValue(R.styleable.TextInputLayout_suffixTextColor)) {
                appCompatTextView.setTextColor(tintTypedArray.a(R.styleable.TextInputLayout_suffixTextColor));
            }
            CharSequence text3 = typedArray.getText(R.styleable.TextInputLayout_suffixText);
            if (TextUtils.isEmpty(text3)) {
                charSequence = null;
            } else {
                charSequence = text3;
            }
            this.t = charSequence;
            appCompatTextView.setText(text3);
            n();
            frameLayout.addView(a3);
            addView(appCompatTextView);
            addView(frameLayout);
            addView(a2);
            textInputLayout.j0.add(onEditTextAttachedListener);
            if (textInputLayout.i != null) {
                onEditTextAttachedListener.a(textInputLayout);
            }
            addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.google.android.material.textfield.EndCompoundLayout.3
                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewAttachedToWindow(View view) {
                    int i2 = EndCompoundLayout.B;
                    EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                    AccessibilityManager accessibilityManager = endCompoundLayout.x;
                    if (endCompoundLayout.y != null && accessibilityManager != null && endCompoundLayout.isAttachedToWindow()) {
                        accessibilityManager.addTouchExplorationStateChangeListener(endCompoundLayout.y);
                    }
                }

                @Override // android.view.View.OnAttachStateChangeListener
                public final void onViewDetachedFromWindow(View view) {
                    AccessibilityManager accessibilityManager;
                    int i2 = EndCompoundLayout.B;
                    EndCompoundLayout endCompoundLayout = EndCompoundLayout.this;
                    AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = endCompoundLayout.y;
                    if (touchExplorationStateChangeListener != null && (accessibilityManager = endCompoundLayout.x) != null) {
                        accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("endIconSize cannot be less than 0");
    }

    public final CheckableImageButton a(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(R.layout.design_text_input_end_icon, viewGroup, false);
        checkableImageButton.setId(i);
        if (MaterialResources.e(getContext())) {
            ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).setMarginStart(0);
        }
        return checkableImageButton;
    }

    public final EndIconDelegate b() {
        EndIconDelegate endIconDelegate;
        int i = this.m;
        EndIconDelegates endIconDelegates = this.l;
        SparseArray sparseArray = endIconDelegates.f11966a;
        EndIconDelegate endIconDelegate2 = (EndIconDelegate) sparseArray.get(i);
        if (endIconDelegate2 == null) {
            EndCompoundLayout endCompoundLayout = endIconDelegates.b;
            if (i != -1) {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                endIconDelegate = new DropdownMenuEndIconDelegate(endCompoundLayout);
                            } else {
                                throw new IllegalArgumentException(android.support.v4.media.a.e(i, "Invalid end icon mode: "));
                            }
                        } else {
                            endIconDelegate = new ClearTextEndIconDelegate(endCompoundLayout);
                        }
                    } else {
                        endIconDelegate = new PasswordToggleEndIconDelegate(endCompoundLayout, endIconDelegates.d);
                    }
                } else {
                    endIconDelegate = new EndIconDelegate(endCompoundLayout);
                }
            } else {
                endIconDelegate = new EndIconDelegate(endCompoundLayout);
            }
            sparseArray.append(i, endIconDelegate);
            return endIconDelegate;
        }
        return endIconDelegate2;
    }

    public final int c() {
        int marginStart;
        if (!d() && !e()) {
            marginStart = 0;
        } else {
            CheckableImageButton checkableImageButton = this.k;
            marginStart = ((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams()).getMarginStart() + checkableImageButton.getMeasuredWidth();
        }
        return this.u.getPaddingEnd() + getPaddingEnd() + marginStart;
    }

    public final boolean d() {
        if (this.f.getVisibility() == 0 && this.k.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final boolean e() {
        if (this.g.getVisibility() == 0) {
            return true;
        }
        return false;
    }

    public final void f(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean z3;
        EndIconDelegate b = b();
        boolean j = b.j();
        CheckableImageButton checkableImageButton = this.k;
        boolean z4 = true;
        if (j && (z3 = checkableImageButton.h) != b.k()) {
            checkableImageButton.setChecked(!z3);
            z2 = true;
        } else {
            z2 = false;
        }
        if ((b instanceof DropdownMenuEndIconDelegate) && (isActivated = checkableImageButton.isActivated()) != ((DropdownMenuEndIconDelegate) b).l) {
            checkableImageButton.setActivated(!isActivated);
        } else {
            z4 = z2;
        }
        if (!z && !z4) {
            return;
        }
        IconHelper.c(this.f11962c, checkableImageButton, this.o);
    }

    public final void g(int i) {
        boolean z;
        Drawable drawable;
        if (this.m == i) {
            return;
        }
        EndIconDelegate b = b();
        AccessibilityManager.TouchExplorationStateChangeListener touchExplorationStateChangeListener = this.y;
        AccessibilityManager accessibilityManager = this.x;
        if (touchExplorationStateChangeListener != null && accessibilityManager != null) {
            accessibilityManager.removeTouchExplorationStateChangeListener(touchExplorationStateChangeListener);
        }
        CharSequence charSequence = null;
        this.y = null;
        b.r();
        this.m = i;
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((TextInputLayout.OnEndIconChangedListener) it.next()).a();
        }
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        h(z);
        EndIconDelegate b2 = b();
        int i2 = this.l.f11967c;
        if (i2 == 0) {
            i2 = b2.d();
        }
        if (i2 != 0) {
            drawable = AppCompatResources.a(getContext(), i2);
        } else {
            drawable = null;
        }
        CheckableImageButton checkableImageButton = this.k;
        checkableImageButton.setImageDrawable(drawable);
        TextInputLayout textInputLayout = this.f11962c;
        if (drawable != null) {
            IconHelper.a(textInputLayout, checkableImageButton, this.o, this.p);
            IconHelper.c(textInputLayout, checkableImageButton, this.o);
        }
        int c2 = b2.c();
        if (c2 != 0) {
            charSequence = getResources().getText(c2);
        }
        if (checkableImageButton.getContentDescription() != charSequence) {
            checkableImageButton.setContentDescription(charSequence);
        }
        checkableImageButton.setCheckable(b2.j());
        if (b2.i(textInputLayout.getBoxBackgroundMode())) {
            b2.q();
            AccessibilityManager.TouchExplorationStateChangeListener h = b2.h();
            this.y = h;
            if (h != null && accessibilityManager != null && isAttachedToWindow()) {
                accessibilityManager.addTouchExplorationStateChangeListener(this.y);
            }
            View.OnClickListener f = b2.f();
            View.OnLongClickListener onLongClickListener = this.s;
            checkableImageButton.setOnClickListener(f);
            IconHelper.d(checkableImageButton, onLongClickListener);
            EditText editText = this.w;
            if (editText != null) {
                b2.l(editText);
                j(b2);
            }
            IconHelper.a(textInputLayout, checkableImageButton, this.o, this.p);
            f(true);
            return;
        }
        throw new IllegalStateException("The current box background mode " + textInputLayout.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
    }

    public final void h(boolean z) {
        int i;
        if (d() != z) {
            if (z) {
                i = 0;
            } else {
                i = 8;
            }
            this.k.setVisibility(i);
            k();
            m();
            this.f11962c.s();
        }
    }

    public final void i(Drawable drawable) {
        CheckableImageButton checkableImageButton = this.g;
        checkableImageButton.setImageDrawable(drawable);
        l();
        IconHelper.a(this.f11962c, checkableImageButton, this.h, this.i);
    }

    public final void j(EndIconDelegate endIconDelegate) {
        if (this.w != null) {
            if (endIconDelegate.e() != null) {
                this.w.setOnFocusChangeListener(endIconDelegate.e());
            }
            if (endIconDelegate.g() != null) {
                this.k.setOnFocusChangeListener(endIconDelegate.g());
            }
        }
    }

    public final void k() {
        int i;
        boolean z;
        int i2 = 8;
        if (this.k.getVisibility() == 0 && !e()) {
            i = 0;
        } else {
            i = 8;
        }
        this.f.setVisibility(i);
        if (this.t != null && !this.v) {
            z = false;
        } else {
            z = 8;
        }
        if (d() || e() || !z) {
            i2 = 0;
        }
        setVisibility(i2);
    }

    public final void l() {
        int i;
        CheckableImageButton checkableImageButton = this.g;
        Drawable drawable = checkableImageButton.getDrawable();
        TextInputLayout textInputLayout = this.f11962c;
        if (drawable != null && textInputLayout.o.q && textInputLayout.o()) {
            i = 0;
        } else {
            i = 8;
        }
        checkableImageButton.setVisibility(i);
        k();
        m();
        if (this.m != 0) {
            return;
        }
        textInputLayout.s();
    }

    public final void m() {
        int i;
        TextInputLayout textInputLayout = this.f11962c;
        if (textInputLayout.i == null) {
            return;
        }
        if (!d() && !e()) {
            i = textInputLayout.i.getPaddingEnd();
        } else {
            i = 0;
        }
        this.u.setPaddingRelative(getContext().getResources().getDimensionPixelSize(R.dimen.material_input_text_to_prefix_suffix_padding), textInputLayout.i.getPaddingTop(), i, textInputLayout.i.getPaddingBottom());
    }

    public final void n() {
        int i;
        AppCompatTextView appCompatTextView = this.u;
        int visibility = appCompatTextView.getVisibility();
        boolean z = false;
        if (this.t != null && !this.v) {
            i = 0;
        } else {
            i = 8;
        }
        if (visibility != i) {
            EndIconDelegate b = b();
            if (i == 0) {
                z = true;
            }
            b.o(z);
        }
        k();
        appCompatTextView.setVisibility(i);
        this.f11962c.s();
    }
}
