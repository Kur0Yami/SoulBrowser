package com.google.android.material.datepicker;

import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.R;
import com.google.android.material.datepicker.MaterialCalendar;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;

/* loaded from: classes3.dex */
class MonthsPagerAdapter extends RecyclerView.Adapter<ViewHolder> {
    public final CalendarConstraints d;
    public final DateSelector e;
    public final DayViewDecorator f;
    public final MaterialCalendar.AnonymousClass3 g;
    public final int h;

    /* loaded from: classes3.dex */
    public static class ViewHolder extends RecyclerView.ViewHolder {
        public final TextView u;
        public final MaterialCalendarGridView v;

        public ViewHolder(LinearLayout linearLayout, boolean z) {
            super(linearLayout);
            TextView textView = (TextView) linearLayout.findViewById(R.id.month_title);
            this.u = textView;
            ViewCompat.A(textView, true);
            this.v = (MaterialCalendarGridView) linearLayout.findViewById(R.id.month_grid);
            if (!z) {
                textView.setVisibility(8);
            }
        }
    }

    public MonthsPagerAdapter(ContextThemeWrapper contextThemeWrapper, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator, MaterialCalendar.AnonymousClass3 anonymousClass3) {
        int i;
        Month month = calendarConstraints.f11746c;
        Month month2 = calendarConstraints.f;
        Month month3 = calendarConstraints.h;
        if (month.f11773c.compareTo(month3.f11773c) <= 0) {
            if (month3.f11773c.compareTo(month2.f11773c) <= 0) {
                int dimensionPixelSize = contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height) * MonthAdapter.k;
                if (MaterialDatePicker.i(contextThemeWrapper, android.R.attr.windowFullscreen)) {
                    i = contextThemeWrapper.getResources().getDimensionPixelSize(R.dimen.mtrl_calendar_day_height);
                } else {
                    i = 0;
                }
                this.h = dimensionPixelSize + i;
                this.d = calendarConstraints;
                this.e = dateSelector;
                this.f = dayViewDecorator;
                this.g = anonymousClass3;
                u();
                return;
            }
            throw new IllegalArgumentException("currentPage cannot be after lastPage");
        }
        throw new IllegalArgumentException("firstPage cannot be after currentPage");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int d() {
        return this.d.k;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final long e(int i) {
        Calendar d = UtcDates.d(this.d.f11746c.f11773c);
        d.add(2, i);
        return new Month(d).f11773c.getTimeInMillis();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final void n(RecyclerView.ViewHolder viewHolder, int i) {
        ViewHolder viewHolder2 = (ViewHolder) viewHolder;
        CalendarConstraints calendarConstraints = this.d;
        Calendar d = UtcDates.d(calendarConstraints.f11746c.f11773c);
        d.add(2, i);
        Month month = new Month(d);
        viewHolder2.u.setText(month.c());
        final MaterialCalendarGridView materialCalendarGridView = (MaterialCalendarGridView) viewHolder2.v.findViewById(R.id.month_grid);
        if (materialCalendarGridView.a() != null && month.equals(materialCalendarGridView.a().f11774c)) {
            materialCalendarGridView.invalidate();
            MonthAdapter a2 = materialCalendarGridView.a();
            DateSelector dateSelector = a2.f;
            Iterator it = a2.g.iterator();
            while (it.hasNext()) {
                a2.f(materialCalendarGridView, ((Long) it.next()).longValue());
            }
            if (dateSelector != null) {
                ArrayList n0 = dateSelector.n0();
                int size = n0.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = n0.get(i2);
                    i2++;
                    a2.f(materialCalendarGridView, ((Long) obj).longValue());
                }
                a2.g = dateSelector.n0();
            }
        } else {
            MonthAdapter monthAdapter = new MonthAdapter(month, this.e, calendarConstraints, this.f);
            materialCalendarGridView.setNumColumns(month.h);
            materialCalendarGridView.setAdapter((ListAdapter) monthAdapter);
        }
        materialCalendarGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: com.google.android.material.datepicker.MonthsPagerAdapter.1
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i3, long j) {
                MaterialCalendarGridView materialCalendarGridView2 = materialCalendarGridView;
                MonthAdapter a3 = materialCalendarGridView2.a();
                if (i3 >= a3.a() && i3 <= a3.d()) {
                    MaterialCalendar.AnonymousClass3 anonymousClass3 = MonthsPagerAdapter.this.g;
                    long longValue = materialCalendarGridView2.a().getItem(i3).longValue();
                    MaterialCalendar materialCalendar = MaterialCalendar.this;
                    if (materialCalendar.h.g.e0(longValue)) {
                        materialCalendar.g.B0(longValue);
                        Iterator it2 = materialCalendar.f11776c.iterator();
                        while (it2.hasNext()) {
                            ((OnSelectionChangedListener) it2.next()).b(materialCalendar.g.s0());
                        }
                        materialCalendar.n.getAdapter().g();
                        RecyclerView recyclerView = materialCalendar.m;
                        if (recyclerView != null) {
                            recyclerView.getAdapter().g();
                        }
                    }
                }
            }
        });
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final RecyclerView.ViewHolder o(ViewGroup viewGroup, int i) {
        LinearLayout linearLayout = (LinearLayout) LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mtrl_calendar_month_labeled, viewGroup, false);
        if (MaterialDatePicker.i(viewGroup.getContext(), android.R.attr.windowFullscreen)) {
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, this.h));
            return new ViewHolder(linearLayout, true);
        }
        return new ViewHolder(linearLayout, false);
    }
}
