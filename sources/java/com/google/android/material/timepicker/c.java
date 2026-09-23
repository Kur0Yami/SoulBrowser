package com.google.android.material.timepicker;

import com.google.android.material.R;
import com.google.android.material.button.MaterialButtonToggleGroup;

/* loaded from: classes3.dex */
public final /* synthetic */ class c implements MaterialButtonToggleGroup.OnButtonCheckedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12013a;
    public final /* synthetic */ Object b;

    public /* synthetic */ c(int i, Object obj) {
        this.f12013a = i;
        this.b = obj;
    }

    @Override // com.google.android.material.button.MaterialButtonToggleGroup.OnButtonCheckedListener
    public final void a(int i, boolean z) {
        int i2 = this.f12013a;
        int i3 = 0;
        Object obj = this.b;
        switch (i2) {
            case 0:
                TimePickerTextInputPresenter timePickerTextInputPresenter = (TimePickerTextInputPresenter) obj;
                if (z) {
                    if (i == R.id.material_clock_period_pm_button) {
                        i3 = 1;
                    }
                    timePickerTextInputPresenter.f.d(i3);
                    return;
                }
                return;
            default:
                TimePickerView timePickerView = (TimePickerView) obj;
                if (!z) {
                    int i4 = TimePickerView.F;
                    return;
                }
                TimePickerClockPresenter timePickerClockPresenter = timePickerView.C;
                if (timePickerClockPresenter != null) {
                    if (i == R.id.material_clock_period_pm_button) {
                        i3 = 1;
                    }
                    timePickerClockPresenter.f.d(i3);
                    return;
                }
                return;
        }
    }
}
