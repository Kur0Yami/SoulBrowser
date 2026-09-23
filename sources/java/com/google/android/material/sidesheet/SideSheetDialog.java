package com.google.android.material.sidesheet;

import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.R;

/* loaded from: classes3.dex */
public class SideSheetDialog extends SheetDialog<SideSheetCallback> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.material.sidesheet.SideSheetDialog$1] */
    @Override // com.google.android.material.sidesheet.SheetDialog
    public final void e(Sheet sheet) {
        sheet.a(new SideSheetCallback() { // from class: com.google.android.material.sidesheet.SideSheetDialog.1
            @Override // com.google.android.material.sidesheet.SheetCallback
            public final void b(int i) {
                if (i == 5) {
                    SideSheetDialog.this.cancel();
                }
            }
        });
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public final Sheet g() {
        Sheet g = super.g();
        if (g instanceof SideSheetBehavior) {
            return (SideSheetBehavior) g;
        }
        throw new IllegalStateException("The view is not associated with SideSheetBehavior");
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public final SideSheetBehavior h(FrameLayout frameLayout) {
        int i = SideSheetBehavior.B;
        ViewGroup.LayoutParams layoutParams = frameLayout.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).f610a;
            if (behavior instanceof SideSheetBehavior) {
                return (SideSheetBehavior) behavior;
            }
            throw new IllegalArgumentException("The view is not associated with SideSheetBehavior");
        }
        throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public final int i() {
        return R.id.m3_side_sheet;
    }

    @Override // com.google.android.material.sidesheet.SheetDialog
    public final int j() {
        return R.layout.m3_side_sheet_dialog;
    }
}
