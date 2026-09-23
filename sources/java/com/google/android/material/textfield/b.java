package com.google.android.material.textfield;

import android.view.View;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements View.OnFocusChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11983c;
    public final /* synthetic */ EndIconDelegate f;

    public /* synthetic */ b(EndIconDelegate endIconDelegate, int i) {
        this.f11983c = i;
        this.f = endIconDelegate;
    }

    @Override // android.view.View.OnFocusChangeListener
    public final void onFocusChange(View view, boolean z) {
        switch (this.f11983c) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) this.f;
                clearTextEndIconDelegate.s(clearTextEndIconDelegate.t());
                return;
            default:
                DropdownMenuEndIconDelegate dropdownMenuEndIconDelegate = (DropdownMenuEndIconDelegate) this.f;
                dropdownMenuEndIconDelegate.l = z;
                dropdownMenuEndIconDelegate.p();
                if (!z) {
                    dropdownMenuEndIconDelegate.s(false);
                    dropdownMenuEndIconDelegate.m = false;
                    return;
                }
                return;
        }
    }
}
