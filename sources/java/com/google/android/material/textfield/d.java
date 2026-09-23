package com.google.android.material.textfield;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11985c;
    public final /* synthetic */ Object f;

    public /* synthetic */ d(int i, Object obj) {
        this.f11985c = i;
        this.f = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f11985c) {
            case 0:
                ((ClearTextEndIconDelegate) this.f).s(true);
                return;
            case 1:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) this.f;
                boolean isPopupShowing = dropdownMenuEndIconDelegate.h.isPopupShowing();
                dropdownMenuEndIconDelegate.s(isPopupShowing);
                dropdownMenuEndIconDelegate.m = isPopupShowing;
                return;
            default:
                ((TextInputLayout) this.f).i.requestLayout();
                return;
        }
    }
}
