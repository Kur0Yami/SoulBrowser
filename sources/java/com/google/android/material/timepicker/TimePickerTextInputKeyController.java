package com.google.android.material.timepicker;

import android.text.Editable;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

/* loaded from: classes3.dex */
class TimePickerTextInputKeyController implements TextView.OnEditorActionListener, View.OnKeyListener {

    /* renamed from: c, reason: collision with root package name */
    public final ChipTextInputComboView f12002c;
    public final ChipTextInputComboView f;
    public final TimeModel g;
    public boolean h = false;

    public TimePickerTextInputKeyController(ChipTextInputComboView chipTextInputComboView, ChipTextInputComboView chipTextInputComboView2, TimeModel timeModel) {
        this.f12002c = chipTextInputComboView;
        this.f = chipTextInputComboView2;
        this.g = timeModel;
    }

    public final void a(int i) {
        boolean z;
        boolean z2 = false;
        if (i == 12) {
            z = true;
        } else {
            z = false;
        }
        this.f.setChecked(z);
        if (i == 10) {
            z2 = true;
        }
        this.f12002c.setChecked(z2);
        this.g.j = i;
    }

    @Override // android.widget.TextView.OnEditorActionListener
    public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
        boolean z;
        if (i == 5) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            a(12);
        }
        return z;
    }

    @Override // android.view.View.OnKeyListener
    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (this.h) {
            return false;
        }
        boolean z = true;
        this.h = true;
        EditText editText = (EditText) view;
        if (this.g.j == 12) {
            if (i == 67 && keyEvent.getAction() == 0 && TextUtils.isEmpty(editText.getText())) {
                a(10);
            } else {
                if (i >= 7 && i <= 16 && editText.getSelectionStart() == 0 && editText.length() == 2) {
                    editText.getText().clear();
                }
                z = false;
            }
        } else {
            Editable text = editText.getText();
            if (text != null) {
                if (i >= 7 && i <= 16 && keyEvent.getAction() == 1 && editText.getSelectionStart() == 2 && text.length() == 2) {
                    a(12);
                } else if (i >= 7 && i <= 16 && editText.getSelectionStart() == 0 && editText.length() == 2) {
                    editText.getText().clear();
                }
            }
            z = false;
        }
        this.h = false;
        return z;
    }
}
