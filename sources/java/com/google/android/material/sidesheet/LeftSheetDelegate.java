package com.google.android.material.sidesheet;

import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes3.dex */
final class LeftSheetDelegate extends SheetDelegate {

    /* renamed from: a, reason: collision with root package name */
    public final SideSheetBehavior f11917a;

    public LeftSheetDelegate(SideSheetBehavior sideSheetBehavior) {
        this.f11917a = sideSheetBehavior;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final float b(int i) {
        float e = e();
        return (i - e) / (d() - e);
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int c(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return marginLayoutParams.leftMargin;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int d() {
        SideSheetBehavior sideSheetBehavior = this.f11917a;
        return Math.max(0, sideSheetBehavior.r + sideSheetBehavior.s);
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int e() {
        SideSheetBehavior sideSheetBehavior = this.f11917a;
        return (-sideSheetBehavior.p) - sideSheetBehavior.s;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int f() {
        return this.f11917a.s;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int g() {
        return -this.f11917a.p;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int h(View view) {
        return view.getRight() + this.f11917a.s;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int i(CoordinatorLayout coordinatorLayout) {
        return coordinatorLayout.getLeft();
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final int j() {
        return 1;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean k(float f) {
        return f > 0.0f;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final boolean l(View view) {
        if (view.getRight() < (d() - e()) / 2) {
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
        float left = view.getLeft();
        SideSheetBehavior sideSheetBehavior = this.f11917a;
        float abs = Math.abs((f * sideSheetBehavior.o) + left);
        sideSheetBehavior.getClass();
        if (abs > 0.5f) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void o(ViewGroup.MarginLayoutParams marginLayoutParams, int i) {
        marginLayoutParams.leftMargin = i;
    }

    @Override // com.google.android.material.sidesheet.SheetDelegate
    public final void p(ViewGroup.MarginLayoutParams marginLayoutParams, int i, int i2) {
        if (i <= this.f11917a.q) {
            marginLayoutParams.leftMargin = i2;
        }
    }
}
