package com.google.android.material.textfield;

import android.text.Editable;
import android.text.method.PasswordTransformationMethod;
import android.view.View;
import android.widget.EditText;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11982c;
    public final /* synthetic */ EndIconDelegate f;

    public /* synthetic */ a(EndIconDelegate endIconDelegate, int i) {
        this.f11982c = i;
        this.f = endIconDelegate;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f11982c) {
            case 0:
                ClearTextEndIconDelegate clearTextEndIconDelegate = (ClearTextEndIconDelegate) this.f;
                EditText editText = clearTextEndIconDelegate.i;
                if (editText != null) {
                    Editable text = editText.getText();
                    if (text != null) {
                        text.clear();
                    }
                    clearTextEndIconDelegate.p();
                    return;
                }
                return;
            case 1:
                ((DropdownMenuEndIconDelegate) this.f).t();
                return;
            default:
                PasswordToggleEndIconDelegate passwordToggleEndIconDelegate = (PasswordToggleEndIconDelegate) this.f;
                EditText editText2 = passwordToggleEndIconDelegate.f;
                if (editText2 != null) {
                    int selectionEnd = editText2.getSelectionEnd();
                    EditText editText3 = passwordToggleEndIconDelegate.f;
                    if (editText3 != null && (editText3.getTransformationMethod() instanceof PasswordTransformationMethod)) {
                        passwordToggleEndIconDelegate.f.setTransformationMethod(null);
                    } else {
                        passwordToggleEndIconDelegate.f.setTransformationMethod(PasswordTransformationMethod.getInstance());
                    }
                    if (selectionEnd >= 0) {
                        passwordToggleEndIconDelegate.f.setSelection(selectionEnd);
                    }
                    passwordToggleEndIconDelegate.p();
                    return;
                }
                return;
        }
    }
}
