package com.google.android.material.textfield;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public abstract class EndIconDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final TextInputLayout f11968a;
    public final EndCompoundLayout b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f11969c;
    public final CheckableImageButton d;

    public EndIconDelegate(EndCompoundLayout endCompoundLayout) {
        this.f11968a = endCompoundLayout.f11962c;
        this.b = endCompoundLayout;
        this.f11969c = endCompoundLayout.getContext();
        this.d = endCompoundLayout.k;
    }

    public int c() {
        return 0;
    }

    public int d() {
        return 0;
    }

    public View.OnFocusChangeListener e() {
        return null;
    }

    public View.OnClickListener f() {
        return null;
    }

    public View.OnFocusChangeListener g() {
        return null;
    }

    public AccessibilityManager.TouchExplorationStateChangeListener h() {
        return null;
    }

    public boolean i(int i) {
        return true;
    }

    public boolean j() {
        return this instanceof DropdownMenuEndIconDelegate;
    }

    public boolean k() {
        return false;
    }

    public void l(EditText editText) {
    }

    public void o(boolean z) {
    }

    public final void p() {
        this.b.f(false);
    }

    public void q() {
    }

    public void r() {
    }

    public void m(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void n(AccessibilityEvent accessibilityEvent) {
    }

    public void a() {
    }

    public void b() {
    }
}
