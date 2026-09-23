package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AutoCompleteTextView;
import android.widget.EditText;
import android.widget.Spinner;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.animation.AnimationUtils;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.motion.MotionUtils;
import kotlin.jvm.internal.LongCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class DropdownMenuEndIconDelegate extends EndIconDelegate {
    public final int e;
    public final int f;
    public final TimeInterpolator g;
    public AutoCompleteTextView h;
    public final a i;
    public final b j;
    public final g k;
    public boolean l;
    public boolean m;
    public boolean n;
    public long o;
    public AccessibilityManager p;
    public ValueAnimator q;
    public ValueAnimator r;

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.material.textfield.g] */
    public DropdownMenuEndIconDelegate(EndCompoundLayout endCompoundLayout) {
        super(endCompoundLayout);
        int i = 1;
        this.i = new a(this, i);
        this.j = new b(this, i);
        this.k = new AccessibilityManager.TouchExplorationStateChangeListener() { // from class: com.google.android.material.textfield.g
            @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
            public final void onTouchExplorationStateChanged(boolean z) {
                int i2;
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                AutoCompleteTextView autoCompleteTextView = dropdownMenuEndIconDelegate.h;
                if (autoCompleteTextView == null || autoCompleteTextView.getInputType() != 0) {
                    return;
                }
                CheckableImageButton checkableImageButton = dropdownMenuEndIconDelegate.d;
                if (z) {
                    i2 = 2;
                } else {
                    i2 = 1;
                }
                checkableImageButton.setImportantForAccessibility(i2);
            }
        };
        this.o = LongCompanionObject.MAX_VALUE;
        this.f = MotionUtils.c(endCompoundLayout.getContext(), R.attr.motionDurationShort3, 67);
        this.e = MotionUtils.c(endCompoundLayout.getContext(), R.attr.motionDurationShort3, 50);
        this.g = MotionUtils.d(endCompoundLayout.getContext(), R.attr.motionEasingLinearInterpolator, AnimationUtils.f11631a);
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void a() {
        if (this.p.isTouchExplorationEnabled() && this.h.getInputType() != 0 && !this.d.hasFocus()) {
            this.h.dismissDropDown();
        }
        this.h.post(new d(1, this));
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int c() {
        return R.string.exposed_dropdown_menu_content_description;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final int d() {
        return R.drawable.mtrl_dropdown_arrow;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final View.OnFocusChangeListener e() {
        return this.j;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final View.OnClickListener f() {
        return this.i;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final AccessibilityManager.TouchExplorationStateChangeListener h() {
        return this.k;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean i(int i) {
        return i != 0;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final boolean k() {
        return this.n;
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void l(EditText editText) {
        if (editText instanceof AutoCompleteTextView) {
            AutoCompleteTextView autoCompleteTextView = (AutoCompleteTextView) editText;
            this.h = autoCompleteTextView;
            autoCompleteTextView.setOnTouchListener(new View.OnTouchListener() { // from class: com.google.android.material.textfield.e
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        long uptimeMillis = SystemClock.uptimeMillis();
                        DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                        long j = uptimeMillis - dropdownMenuEndIconDelegate.o;
                        if (j < 0 || j > 300) {
                            dropdownMenuEndIconDelegate.m = false;
                        }
                        dropdownMenuEndIconDelegate.t();
                        dropdownMenuEndIconDelegate.m = true;
                        dropdownMenuEndIconDelegate.o = SystemClock.uptimeMillis();
                    }
                    return false;
                }
            });
            this.h.setOnDismissListener(new AutoCompleteTextView.OnDismissListener() { // from class: com.google.android.material.textfield.f
                @Override // android.widget.AutoCompleteTextView.OnDismissListener
                public final void onDismiss() {
                    DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                    dropdownMenuEndIconDelegate.m = true;
                    dropdownMenuEndIconDelegate.o = SystemClock.uptimeMillis();
                    dropdownMenuEndIconDelegate.s(false);
                }
            });
            this.h.setThreshold(0);
            TextInputLayout textInputLayout = this.f11968a;
            textInputLayout.setErrorIconDrawable((Drawable) null);
            if (editText.getInputType() == 0 && this.p.isTouchExplorationEnabled()) {
                this.d.setImportantForAccessibility(2);
            }
            textInputLayout.setEndIconVisible(true);
            return;
        }
        throw new RuntimeException("EditText needs to be an AutoCompleteTextView if an Exposed Dropdown Menu is being used.");
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        if (this.h.getInputType() == 0) {
            accessibilityNodeInfoCompat.k(Spinner.class.getName());
        }
        if (accessibilityNodeInfoCompat.h()) {
            accessibilityNodeInfoCompat.q(null);
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void n(AccessibilityEvent accessibilityEvent) {
        boolean z;
        if (!this.p.isEnabled() || this.h.getInputType() != 0) {
            return;
        }
        if ((accessibilityEvent.getEventType() == 32768 || accessibilityEvent.getEventType() == 8) && this.n && !this.h.isPopupShowing()) {
            z = true;
        } else {
            z = false;
        }
        if (accessibilityEvent.getEventType() == 1 || z) {
            t();
            this.m = true;
            this.o = SystemClock.uptimeMillis();
        }
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void q() {
        int i = 2;
        ValueAnimator ofFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        TimeInterpolator timeInterpolator = this.g;
        ofFloat.setInterpolator(timeInterpolator);
        ofFloat.setDuration(this.f);
        ofFloat.addUpdateListener(new c(this, i));
        this.r = ofFloat;
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(1.0f, 0.0f);
        ofFloat2.setInterpolator(timeInterpolator);
        ofFloat2.setDuration(this.e);
        ofFloat2.addUpdateListener(new c(this, i));
        this.q = ofFloat2;
        ofFloat2.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.textfield.DropdownMenuEndIconDelegate.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public final void onAnimationEnd(Animator animator) {
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = DropdownMenuEndIconDelegate.this;
                dropdownMenuEndIconDelegate.p();
                dropdownMenuEndIconDelegate.r.start();
            }
        });
        this.p = (AccessibilityManager) this.f11969c.getSystemService("accessibility");
    }

    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void r() {
        AutoCompleteTextView autoCompleteTextView = this.h;
        if (autoCompleteTextView != null) {
            autoCompleteTextView.setOnTouchListener(null);
            this.h.setOnDismissListener(null);
        }
    }

    public final void s(boolean z) {
        if (this.n != z) {
            this.n = z;
            this.r.cancel();
            this.q.start();
        }
    }

    public final void t() {
        if (this.h == null) {
            return;
        }
        long uptimeMillis = SystemClock.uptimeMillis() - this.o;
        if (uptimeMillis < 0 || uptimeMillis > 300) {
            this.m = false;
        }
        if (!this.m) {
            s(!this.n);
            if (this.n) {
                this.h.requestFocus();
                this.h.showDropDown();
                return;
            } else {
                this.h.dismissDropDown();
                return;
            }
        }
        this.m = false;
    }
}
