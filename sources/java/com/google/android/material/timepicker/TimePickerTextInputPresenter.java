package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;
import com.google.android.material.internal.TextWatcherAdapter;
import com.google.android.material.textfield.TextInputLayout;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class TimePickerTextInputPresenter implements TimePickerView.OnSelectionChange, TimePickerPresenter {

    /* renamed from: c, reason: collision with root package name */
    public final LinearLayout f12003c;
    public final TimeModel f;
    public final TextWatcher g;
    public final TextWatcher h;
    public final ChipTextInputComboView i;
    public final ChipTextInputComboView j;
    public final EditText k;
    public final EditText l;
    public final MaterialButtonToggleGroup m;

    public TimePickerTextInputPresenter(LinearLayout linearLayout, final TimeModel timeModel) {
        TextWatcherAdapter textWatcherAdapter = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.1
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                TimeModel timeModel2 = TimePickerTextInputPresenter.this.f;
                try {
                    if (TextUtils.isEmpty(editable)) {
                        timeModel2.i = 0;
                    } else {
                        timeModel2.i = Integer.parseInt(editable.toString()) % 60;
                    }
                } catch (NumberFormatException unused) {
                }
            }
        };
        this.g = textWatcherAdapter;
        TextWatcherAdapter textWatcherAdapter2 = new TextWatcherAdapter() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.2
            @Override // com.google.android.material.internal.TextWatcherAdapter, android.text.TextWatcher
            public final void afterTextChanged(Editable editable) {
                try {
                    boolean isEmpty = TextUtils.isEmpty(editable);
                    TimePickerTextInputPresenter timePickerTextInputPresenter = TimePickerTextInputPresenter.this;
                    if (isEmpty) {
                        timePickerTextInputPresenter.f.c(0);
                    } else {
                        timePickerTextInputPresenter.f.c(Integer.parseInt(editable.toString()));
                    }
                } catch (NumberFormatException unused) {
                }
            }
        };
        this.h = textWatcherAdapter2;
        this.f12003c = linearLayout;
        this.f = timeModel;
        final Resources resources = linearLayout.getResources();
        ChipTextInputComboView chipTextInputComboView = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_minute_text_input);
        this.i = chipTextInputComboView;
        ChipTextInputComboView chipTextInputComboView2 = (ChipTextInputComboView) linearLayout.findViewById(R.id.material_hour_text_input);
        this.j = chipTextInputComboView2;
        View findViewById = chipTextInputComboView.findViewById(R.id.material_label);
        TextInputLayout textInputLayout = chipTextInputComboView.f;
        TextView textView = (TextView) findViewById;
        View findViewById2 = chipTextInputComboView2.findViewById(R.id.material_label);
        TextInputLayout textInputLayout2 = chipTextInputComboView2.f;
        TextView textView2 = (TextView) findViewById2;
        textView.setText(resources.getString(R.string.material_timepicker_minute));
        textView.setImportantForAccessibility(2);
        textView2.setText(resources.getString(R.string.material_timepicker_hour));
        textView2.setImportantForAccessibility(2);
        chipTextInputComboView.setTag(R.id.selection_type, 12);
        chipTextInputComboView2.setTag(R.id.selection_type, 10);
        if (timeModel.g == 0) {
            MaterialButtonToggleGroup materialButtonToggleGroup = (MaterialButtonToggleGroup) linearLayout.findViewById(R.id.material_clock_period_toggle);
            this.m = materialButtonToggleGroup;
            materialButtonToggleGroup.p.add(new c(0, this));
            this.m.setVisibility(0);
            f();
        }
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                TimePickerTextInputPresenter.this.a(((Integer) view.getTag(R.id.selection_type)).intValue());
            }
        };
        chipTextInputComboView2.setOnClickListener(onClickListener);
        chipTextInputComboView.setOnClickListener(onClickListener);
        MaxInputValidator maxInputValidator = timeModel.f;
        EditText editText = chipTextInputComboView2.g;
        InputFilter[] filters = editText.getFilters();
        InputFilter[] inputFilterArr = (InputFilter[]) Arrays.copyOf(filters, filters.length + 1);
        inputFilterArr[filters.length] = maxInputValidator;
        editText.setFilters(inputFilterArr);
        MaxInputValidator maxInputValidator2 = timeModel.f12000c;
        EditText editText2 = chipTextInputComboView.g;
        InputFilter[] filters2 = editText2.getFilters();
        InputFilter[] inputFilterArr2 = (InputFilter[]) Arrays.copyOf(filters2, filters2.length + 1);
        inputFilterArr2[filters2.length] = maxInputValidator2;
        editText2.setFilters(inputFilterArr2);
        EditText editText3 = textInputLayout2.getEditText();
        this.k = editText3;
        final Resources resources2 = linearLayout.getResources();
        final int i = R.string.material_timepicker_hour;
        editText3.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.6
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setText(resources2.getString(i));
            }
        });
        EditText editText4 = textInputLayout.getEditText();
        this.l = editText4;
        final Resources resources3 = linearLayout.getResources();
        final int i2 = R.string.material_timepicker_minute;
        editText4.setAccessibilityDelegate(new View.AccessibilityDelegate() { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.6
            @Override // android.view.View.AccessibilityDelegate
            public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfo);
                accessibilityNodeInfo.setText(resources3.getString(i2));
            }
        });
        TimePickerTextInputKeyController timePickerTextInputKeyController = new TimePickerTextInputKeyController(chipTextInputComboView2, chipTextInputComboView, timeModel);
        ViewCompat.z(chipTextInputComboView2.f11991c, new ClickActionDelegate(linearLayout.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.4
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                int i3;
                super.d(view, accessibilityNodeInfoCompat);
                StringBuilder sb = new StringBuilder();
                sb.append(resources.getString(R.string.material_timepicker_hour));
                sb.append(" ");
                Resources resources4 = view.getResources();
                TimeModel timeModel2 = timeModel;
                if (timeModel2.g == 1) {
                    i3 = R.string.material_hour_24h_suffix;
                } else {
                    i3 = R.string.material_hour_suffix;
                }
                sb.append(resources4.getString(i3, String.valueOf(timeModel2.b())));
                accessibilityNodeInfoCompat.n(sb.toString());
            }
        });
        ViewCompat.z(chipTextInputComboView.f11991c, new ClickActionDelegate(linearLayout.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerTextInputPresenter.5
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.d(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.n(resources.getString(R.string.material_timepicker_minute) + " " + view.getResources().getString(R.string.material_minute_suffix, String.valueOf(timeModel.i)));
            }
        });
        editText3.addTextChangedListener(textWatcherAdapter2);
        editText4.addTextChangedListener(textWatcherAdapter);
        e(timeModel);
        EditText editText5 = textInputLayout2.getEditText();
        EditText editText6 = textInputLayout.getEditText();
        editText5.setImeOptions(268435461);
        editText6.setImeOptions(268435462);
        editText5.setOnEditorActionListener(timePickerTextInputKeyController);
        editText5.setOnKeyListener(timePickerTextInputKeyController);
        editText6.setOnKeyListener(timePickerTextInputKeyController);
    }

    public final void a(int i) {
        boolean z;
        this.f.j = i;
        boolean z2 = false;
        if (i == 12) {
            z = true;
        } else {
            z = false;
        }
        this.i.setChecked(z);
        if (i == 10) {
            z2 = true;
        }
        this.j.setChecked(z2);
        f();
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void b() {
        this.f12003c.setVisibility(0);
        a(this.f.j);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void c() {
        InputMethodManager inputMethodManager;
        LinearLayout linearLayout = this.f12003c;
        View focusedChild = linearLayout.getFocusedChild();
        if (focusedChild != null && (inputMethodManager = (InputMethodManager) focusedChild.getContext().getSystemService(InputMethodManager.class)) != null) {
            inputMethodManager.hideSoftInputFromWindow(focusedChild.getWindowToken(), 0);
        }
        linearLayout.setVisibility(8);
    }

    public final void d() {
        boolean z;
        TimeModel timeModel = this.f;
        boolean z2 = false;
        if (timeModel.j == 12) {
            z = true;
        } else {
            z = false;
        }
        this.i.setChecked(z);
        if (timeModel.j == 10) {
            z2 = true;
        }
        this.j.setChecked(z2);
    }

    public final void e(TimeModel timeModel) {
        EditText editText = this.k;
        TextWatcher textWatcher = this.h;
        editText.removeTextChangedListener(textWatcher);
        EditText editText2 = this.l;
        TextWatcher textWatcher2 = this.g;
        editText2.removeTextChangedListener(textWatcher2);
        Locale locale = this.f12003c.getResources().getConfiguration().locale;
        String format = String.format(locale, "%02d", Integer.valueOf(timeModel.i));
        String format2 = String.format(locale, "%02d", Integer.valueOf(timeModel.b()));
        ChipTextInputComboView chipTextInputComboView = this.i;
        TextWatcher textWatcher3 = chipTextInputComboView.h;
        EditText editText3 = chipTextInputComboView.g;
        String a2 = TimeModel.a(chipTextInputComboView.getResources(), format, "%02d");
        chipTextInputComboView.f11991c.setText(a2);
        if (!TextUtils.isEmpty(a2)) {
            editText3.removeTextChangedListener(textWatcher3);
            editText3.setText(a2);
            editText3.addTextChangedListener(textWatcher3);
        }
        ChipTextInputComboView chipTextInputComboView2 = this.j;
        TextWatcher textWatcher4 = chipTextInputComboView2.h;
        EditText editText4 = chipTextInputComboView2.g;
        String a3 = TimeModel.a(chipTextInputComboView2.getResources(), format2, "%02d");
        chipTextInputComboView2.f11991c.setText(a3);
        if (!TextUtils.isEmpty(a3)) {
            editText4.removeTextChangedListener(textWatcher4);
            editText4.setText(a3);
            editText4.addTextChangedListener(textWatcher4);
        }
        editText.addTextChangedListener(textWatcher);
        editText2.addTextChangedListener(textWatcher2);
        f();
    }

    public final void f() {
        int i;
        MaterialButtonToggleGroup materialButtonToggleGroup = this.m;
        if (materialButtonToggleGroup == null) {
            return;
        }
        if (this.f.k == 0) {
            i = R.id.material_clock_period_am_button;
        } else {
            i = R.id.material_clock_period_pm_button;
        }
        materialButtonToggleGroup.f(i, true);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void invalidate() {
        e(this.f);
    }
}
