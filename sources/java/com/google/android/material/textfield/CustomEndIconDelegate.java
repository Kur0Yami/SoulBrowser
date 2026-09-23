package com.google.android.material.textfield;

import com.google.android.material.internal.CheckableImageButton;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class CustomEndIconDelegate extends EndIconDelegate {
    @Override // com.google.android.material.textfield.EndIconDelegate
    public final void q() {
        EndCompoundLayout endCompoundLayout = this.b;
        endCompoundLayout.s = null;
        CheckableImageButton checkableImageButton = endCompoundLayout.k;
        checkableImageButton.setOnLongClickListener(null);
        IconHelper.d(checkableImageButton, null);
    }
}
