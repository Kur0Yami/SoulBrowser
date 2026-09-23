package com.google.android.material.datepicker;

import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.material.R;
import java.util.Calendar;
import java.util.Locale;

/* loaded from: classes3.dex */
class DaysOfWeekAdapter extends BaseAdapter {
    public static final int h;

    /* renamed from: c, reason: collision with root package name */
    public final Calendar f11757c;
    public final int f;
    public final int g;

    static {
        int i;
        if (Build.VERSION.SDK_INT >= 26) {
            i = 4;
        } else {
            i = 1;
        }
        h = i;
    }

    public DaysOfWeekAdapter() {
        Calendar i = UtcDates.i(null);
        this.f11757c = i;
        this.f = i.getMaximum(7);
        this.g = i.getFirstDayOfWeek();
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return this.f;
    }

    @Override // android.widget.Adapter
    public final Object getItem(int i) {
        int i2 = this.f;
        if (i >= i2) {
            return null;
        }
        int i3 = i + this.g;
        if (i3 > i2) {
            i3 -= i2;
        }
        return Integer.valueOf(i3);
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return 0L;
    }

    @Override // android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        TextView textView = (TextView) view;
        if (view == null) {
            textView = (TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_day_of_week, viewGroup, false);
        }
        int i2 = i + this.g;
        int i3 = this.f;
        if (i2 > i3) {
            i2 -= i3;
        }
        Calendar calendar = this.f11757c;
        calendar.set(7, i2);
        textView.setText(calendar.getDisplayName(7, h, textView.getResources().getConfiguration().locale));
        textView.setContentDescription(String.format(viewGroup.getContext().getString(R.string.mtrl_picker_day_of_week_column_header), calendar.getDisplayName(7, 2, Locale.getDefault())));
        return textView;
    }

    public DaysOfWeekAdapter(int i) {
        Calendar i2 = UtcDates.i(null);
        this.f11757c = i2;
        this.f = i2.getMaximum(7);
        this.g = i;
    }
}
