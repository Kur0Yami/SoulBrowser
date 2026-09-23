package com.google.android.material.bottomsheet;

import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import androidx.appcompat.app.AppCompatDialog;
import androidx.appcompat.app.AppCompatDialogFragment;
import com.google.android.material.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes3.dex */
public class BottomSheetDialogFragment extends AppCompatDialogFragment {
    @Override // androidx.fragment.app.DialogFragment
    public final void dismiss() {
        Dialog dialog = getDialog();
        if (dialog instanceof BottomSheetDialog) {
            boolean z = ((BottomSheetDialog) dialog).f().M;
        }
        super.dismiss();
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void dismissAllowingStateLoss() {
        Dialog dialog = getDialog();
        if (dialog instanceof BottomSheetDialog) {
            boolean z = ((BottomSheetDialog) dialog).f().M;
        }
        super.dismissAllowingStateLoss();
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.material.bottomsheet.BottomSheetDialog, android.app.Dialog, androidx.appcompat.app.AppCompatDialog] */
    @Override // androidx.appcompat.app.AppCompatDialogFragment, androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context context = getContext();
        int theme = getTheme();
        if (theme == 0) {
            TypedValue typedValue = new TypedValue();
            if (context.getTheme().resolveAttribute(R.attr.bottomSheetDialogTheme, typedValue, true)) {
                theme = typedValue.resourceId;
            } else {
                theme = R.style.Theme_Design_Light_BottomSheetDialog;
            }
        }
        ?? appCompatDialog = new AppCompatDialog(context, theme);
        appCompatDialog.n = true;
        appCompatDialog.o = true;
        appCompatDialog.t = new BottomSheetBehavior.BottomSheetCallback() { // from class: com.google.android.material.bottomsheet.BottomSheetDialog.5
            public AnonymousClass5() {
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void c(View view, int i) {
                if (i == 5) {
                    BottomSheetDialog.this.cancel();
                }
            }

            @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
            public final void b(View view) {
            }
        };
        appCompatDialog.c().y(1);
        TypedArray obtainStyledAttributes = appCompatDialog.getContext().getTheme().obtainStyledAttributes(new int[]{R.attr.enableEdgeToEdge});
        appCompatDialog.r = obtainStyledAttributes.getBoolean(0, false);
        obtainStyledAttributes.recycle();
        return appCompatDialog;
    }

    /* loaded from: classes3.dex */
    public class BottomSheetDismissCallback extends BottomSheetBehavior.BottomSheetCallback {
        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void c(View view, int i) {
            if (i != 5) {
            } else {
                throw null;
            }
        }

        @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.BottomSheetCallback
        public final void b(View view) {
        }
    }
}
