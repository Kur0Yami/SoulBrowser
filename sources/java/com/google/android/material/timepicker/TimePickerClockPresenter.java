package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.text.TextUtils;
import android.view.View;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.R;
import com.google.android.material.chip.Chip;
import com.google.android.material.timepicker.ClockHandView;
import com.google.android.material.timepicker.TimePickerView;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class TimePickerClockPresenter implements ClockHandView.OnRotateListener, TimePickerView.OnSelectionChange, TimePickerView.OnPeriodChangeListener, ClockHandView.OnActionUpListener, TimePickerPresenter {
    public static final String[] j = {"12", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"};
    public static final String[] k = {"00", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23"};
    public static final String[] l = {"00", "5", "10", "15", "20", "25", "30", "35", "40", "45", "50", "55"};

    /* renamed from: c, reason: collision with root package name */
    public final TimePickerView f12001c;
    public final TimeModel f;
    public float g;
    public float h;
    public boolean i = false;

    public TimePickerClockPresenter(TimePickerView timePickerView, TimeModel timeModel) {
        this.f12001c = timePickerView;
        this.f = timeModel;
        if (timeModel.g == 0) {
            timePickerView.A.setVisibility(0);
        }
        timePickerView.y.n.add(this);
        timePickerView.D = this;
        timePickerView.C = this;
        timePickerView.y.v = this;
        f("%d", j);
        f("%d", k);
        f("%02d", l);
        invalidate();
    }

    @Override // com.google.android.material.timepicker.ClockHandView.OnRotateListener
    public final void a(float f, boolean z) {
        if (!this.i && !z) {
            TimeModel timeModel = this.f;
            int i = timeModel.h;
            int i2 = timeModel.i;
            int round = Math.round(f);
            int i3 = timeModel.j;
            TimePickerView timePickerView = this.f12001c;
            if (i3 == 12) {
                timeModel.i = ((round + 3) / 6) % 60;
                this.g = (float) Math.floor(r7 * 6);
            } else {
                int i4 = (round + 15) / 30;
                if (timeModel.g == 1) {
                    i4 %= 12;
                    if (timePickerView.z.z.y == 2) {
                        i4 += 12;
                    }
                }
                timeModel.c(i4);
                this.h = (timeModel.b() * 30) % 360;
            }
            e();
            if (timeModel.i != i2 || timeModel.h != i) {
                timePickerView.performHapticFeedback(4);
            }
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void b() {
        this.f12001c.setVisibility(0);
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void c() {
        this.f12001c.setVisibility(8);
    }

    public final void d(int i, boolean z) {
        boolean z2;
        String[] strArr;
        int i2;
        int i3;
        float f;
        boolean z3;
        int i4;
        int i5 = 0;
        boolean z4 = true;
        if (i == 12) {
            z2 = true;
        } else {
            z2 = false;
        }
        TimePickerView timePickerView = this.f12001c;
        ClockHandView clockHandView = timePickerView.y;
        Chip chip = timePickerView.x;
        Chip chip2 = timePickerView.w;
        ClockFaceView clockFaceView = timePickerView.z;
        clockHandView.h = z2;
        TimeModel timeModel = this.f;
        timeModel.j = i;
        int i6 = timeModel.g;
        if (z2) {
            strArr = l;
        } else if (i6 == 1) {
            strArr = k;
        } else {
            strArr = j;
        }
        if (z2) {
            i2 = R.string.material_minute_suffix;
        } else if (i6 == 1) {
            i2 = R.string.material_hour_24h_suffix;
        } else {
            i2 = R.string.material_hour_suffix;
        }
        clockFaceView.q(strArr, i2);
        if (timeModel.j == 10 && i6 == 1 && timeModel.h >= 12) {
            i3 = 2;
        } else {
            i3 = 1;
        }
        ClockHandView clockHandView2 = clockFaceView.z;
        clockHandView2.y = i3;
        clockHandView2.invalidate();
        if (z2) {
            f = this.g;
        } else {
            f = this.h;
        }
        timePickerView.y.c(f, z);
        if (i == 12) {
            z3 = true;
        } else {
            z3 = false;
        }
        chip2.setChecked(z3);
        if (z3) {
            i4 = 2;
        } else {
            i4 = 0;
        }
        chip2.setAccessibilityLiveRegion(i4);
        if (i != 10) {
            z4 = false;
        }
        chip.setChecked(z4);
        if (z4) {
            i5 = 2;
        }
        chip.setAccessibilityLiveRegion(i5);
        ViewCompat.z(chip, new ClickActionDelegate(timePickerView.getContext(), R.string.material_hour_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.1
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                int i7;
                super.d(view, accessibilityNodeInfoCompat);
                Resources resources = view.getResources();
                TimeModel timeModel2 = TimePickerClockPresenter.this.f;
                if (timeModel2.g == 1) {
                    i7 = R.string.material_hour_24h_suffix;
                } else {
                    i7 = R.string.material_hour_suffix;
                }
                accessibilityNodeInfoCompat.n(resources.getString(i7, String.valueOf(timeModel2.b())));
            }
        });
        ViewCompat.z(chip2, new ClickActionDelegate(timePickerView.getContext(), R.string.material_minute_selection) { // from class: com.google.android.material.timepicker.TimePickerClockPresenter.2
            @Override // com.google.android.material.timepicker.ClickActionDelegate, androidx.core.view.AccessibilityDelegateCompat
            public final void d(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.d(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.n(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(TimePickerClockPresenter.this.f.i)));
            }
        });
    }

    public final void e() {
        int i;
        TimeModel timeModel = this.f;
        int i2 = timeModel.k;
        int b = timeModel.b();
        int i3 = timeModel.i;
        TimePickerView timePickerView = this.f12001c;
        Chip chip = timePickerView.x;
        Chip chip2 = timePickerView.w;
        if (i2 == 1) {
            i = R.id.material_clock_period_pm_button;
        } else {
            i = R.id.material_clock_period_am_button;
        }
        timePickerView.A.f(i, true);
        Locale locale = timePickerView.getResources().getConfiguration().locale;
        String format = String.format(locale, "%02d", Integer.valueOf(i3));
        String format2 = String.format(locale, "%02d", Integer.valueOf(b));
        if (!TextUtils.equals(chip2.getText(), format)) {
            chip2.setText(format);
        }
        if (!TextUtils.equals(chip.getText(), format2)) {
            chip.setText(format2);
        }
    }

    public final void f(String str, String[] strArr) {
        for (int i = 0; i < strArr.length; i++) {
            strArr[i] = TimeModel.a(this.f12001c.getResources(), strArr[i], str);
        }
    }

    @Override // com.google.android.material.timepicker.TimePickerPresenter
    public final void invalidate() {
        TimeModel timeModel = this.f;
        this.h = (timeModel.b() * 30) % 360;
        this.g = timeModel.i * 6;
        d(timeModel.j, false);
        e();
    }
}
