package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Checkable;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes3.dex */
class ChipTextInputComboView extends FrameLayout implements Checkable {
    public static final /* synthetic */ int i = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Chip f11991c;
    public final TextInputLayout f;
    public final EditText g;
    public final TextWatcher h;

    /* loaded from: classes3.dex */
    public class TextFormatter extends TextWatcherAdapter {
        public TextFormatter() {
        }

        @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
        public final void afterTextChanged(Editable editable) {
            ChipTextInputComboView chipTextInputComboView = ChipTextInputComboView.this;
            Chip chip = chipTextInputComboView.f11991c;
            if (TextUtils.isEmpty(editable)) {
                chip.setText(TimeModel.a(chipTextInputComboView.getResources(), "00", "%02d"));
                return;
            }
            int i = ChipTextInputComboView.i;
            String a2 = TimeModel.a(chipTextInputComboView.getResources(), editable, "%02d");
            if (TextUtils.isEmpty(a2)) {
                a2 = TimeModel.a(chipTextInputComboView.getResources(), "00", "%02d");
            }
            chip.setText(a2);
        }
    }

    public ChipTextInputComboView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        LayoutInflater from = LayoutInflater.from(context);
        Chip chip = (Chip) from.inflate(R.layout.material_time_chip, (ViewGroup) this, false);
        this.f11991c = chip;
        chip.setAccessibilityClassName("android.view.View");
        TextInputLayout textInputLayout = (TextInputLayout) from.inflate(R.layout.material_time_input, (ViewGroup) this, false);
        this.f = textInputLayout;
        EditText editText = textInputLayout.getEditText();
        this.g = editText;
        editText.setVisibility(4);
        TextFormatter textFormatter = new TextFormatter();
        this.h = textFormatter;
        editText.addTextChangedListener(textFormatter);
        if (Build.VERSION.SDK_INT >= 24) {
            editText.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
        addView(chip);
        addView(textInputLayout);
        TextView textView = (TextView) findViewById(R.id.material_label);
        editText.setId(View.generateViewId());
        textView.setLabelFor(editText.getId());
        editText.setSaveEnabled(false);
        editText.setLongClickable(false);
    }

    @Override // android.widget.Checkable
    public final boolean isChecked() {
        return this.f11991c.isChecked();
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (Build.VERSION.SDK_INT >= 24) {
            this.g.setImeHintLocales(getContext().getResources().getConfiguration().getLocales());
        }
    }

    @Override // android.widget.Checkable
    public final void setChecked(boolean z) {
        int i2;
        Chip chip = this.f11991c;
        chip.setChecked(z);
        int i3 = 0;
        if (z) {
            i2 = 0;
        } else {
            i2 = 4;
        }
        EditText editText = this.g;
        editText.setVisibility(i2);
        if (z) {
            i3 = 8;
        }
        chip.setVisibility(i3);
        if (chip.isChecked()) {
            editText.requestFocus();
            editText.post(new androidx.core.view.c(editText, 2));
        }
    }

    @Override // android.view.View
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.f11991c.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public final void setTag(int i2, Object obj) {
        this.f11991c.setTag(i2, obj);
    }

    @Override // android.widget.Checkable
    public final void toggle() {
        this.f11991c.toggle();
    }
}
