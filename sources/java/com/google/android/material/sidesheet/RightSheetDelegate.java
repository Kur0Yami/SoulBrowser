package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes3.dex */
final class RightSheetDelegate extends SheetDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final SideSheetBehavior f11918a;

    public RightSheetDelegate(SideSheetBehavior sideSheetBehavior) {
        this.f11918a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final float b(int i) {
        float f = this.f11918a.q;
        return (f - i) / (f - d());
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.rightMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int d() {
        SideSheetBehavior sideSheetBehavior = this.f11918a;
        return Math.max(0, (sideSheetBehavior.q - sideSheetBehavior.p) - sideSheetBehavior.s);
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int e() {
        return this.f11918a.q;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int f() {
        return this.f11918a.q;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int g() {
        return d();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int h(View view) {
        return view.getLeft() - this.f11918a.s;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getRight();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int j() {
        return 0;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean k(float f) {
        return f < 0.0f;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean l(View view) {
        if (view.getLeft() > (this.f11918a.q + d()) / 2) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean m(float f, float f2) {
        if (Math.abs(f) > Math.abs(f2) && Math.abs(f) > 500) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean n(View view, float f) {
        float right = view.getRight();
        SideSheetBehavior sideSheetBehavior = this.f11918a;
        float abs = Math.abs((f * sideSheetBehavior.o) + right);
        sideSheetBehavior.getClass();
        if (abs > 0.5f) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.rightMargin = i;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        int i3 = this.f11918a.q;
        if (i <= i3) {
            marginLayoutParams.rightMargin = i3 - i;
        }
    }
}
