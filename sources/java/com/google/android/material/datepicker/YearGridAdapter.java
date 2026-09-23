package com.google.android.material.datepicker;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class YearGridAdapter extends RecyclerView.Adapter<ViewHolder> {
    public final MaterialCalendar d;

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public final TextView u;

        public ViewHolder(TextView textView) {
            super(textView);
            this.u = textView;
        }
    }

    public YearGridAdapter(MaterialCalendar materialCalendar) {
        this.d = materialCalendar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        return this.d.h.j;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        String format;
        CalendarItemStyle calendarItemStyle;
        MaterialCalendar materialCalendar = this.d;
        final int i2 = materialCalendar.h.f11746c.g + i;
        TextView textView = ((ViewHolder) viewHolder).u;
        boolean z = true;
        textView.setText(String.format(Locale.getDefault(), "%d", Integer.valueOf(i2)));
        Context context = textView.getContext();
        if (UtcDates.h().get(1) == i2) {
            format = String.format(context.getString(R.string.mtrl_picker_navigate_to_current_year_description), Integer.valueOf(i2));
        } else {
            format = String.format(context.getString(R.string.mtrl_picker_navigate_to_year_description), Integer.valueOf(i2));
        }
        textView.setContentDescription(format);
        CalendarStyle calendarStyle = materialCalendar.l;
        Calendar h = UtcDates.h();
        if (h.get(1) == i2) {
            calendarItemStyle = calendarStyle.f;
        } else {
            calendarItemStyle = calendarStyle.d;
        }
        ArrayList n0 = materialCalendar.g.n0();
        int size = n0.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = n0.get(i3);
            i3++;
            h.setTimeInMillis(((Long) obj).longValue());
            if (h.get(1) == i2) {
                calendarItemStyle = calendarStyle.e;
            }
        }
        calendarItemStyle.b(textView);
        if (calendarItemStyle != calendarStyle.e) {
            z = false;
        }
        textView.setSelected(z);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.google.android.material.datepicker.YearGridAdapter.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                MaterialCalendar materialCalendar2 = YearGridAdapter.this.d;
                Month a2 = Month.a(i2, materialCalendar2.j.f);
                CalendarConstraints calendarConstraints = materialCalendar2.h;
                Month month = calendarConstraints.f;
                Month month2 = calendarConstraints.f11746c;
                Calendar calendar = a2.f11773c;
                if (calendar.compareTo(month2.f11773c) < 0) {
                    a2 = month2;
                } else if (calendar.compareTo(month.f11773c) > 0) {
                    a2 = month;
                }
                materialCalendar2.g(a2);
                materialCalendar2.h(MaterialCalendar.CalendarSelector.f11766c);
                MaterialButton materialButton = materialCalendar2.s;
                if (materialButton != null) {
                    materialButton.sendAccessibilityEvent(8);
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        return new ViewHolder((TextView) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_year, viewGroup, false));
    }
}
