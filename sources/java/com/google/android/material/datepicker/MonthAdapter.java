package com.google.android.material.datepicker;

import android.content.Context;
import android.widget.BaseAdapter;
import android.widget.TextView;
import androidx.core.util.Pair;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MonthAdapter extends BaseAdapter {
    public static final int k = UtcDates.i(null).getMaximum(4);
    public static final int l = (UtcDates.i(null).getMaximum(7) + UtcDates.i(null).getMaximum(5)) - 1;

    /* renamed from: c, reason: collision with root package name */
    public final Month f11774c;
    public final DateSelector f;
    public Collection g;
    public CalendarStyle h;
    public final CalendarConstraints i;
    public final DayViewDecorator j;

    public MonthAdapter(Month month, DateSelector dateSelector, CalendarConstraints calendarConstraints, DayViewDecorator dayViewDecorator) {
        this.f11774c = month;
        this.f = dateSelector;
        this.i = calendarConstraints;
        this.j = dayViewDecorator;
        this.g = dateSelector.n0();
    }

    public final int a() {
        int i = this.i.i;
        Month month = this.f11774c;
        Calendar calendar = month.f11773c;
        int i2 = calendar.get(7);
        if (i <= 0) {
            i = calendar.getFirstDayOfWeek();
        }
        int i3 = i2 - i;
        if (i3 < 0) {
            return i3 + month.h;
        }
        return i3;
    }

    @Override // android.widget.Adapter
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final Long getItem(int i) {
        if (i >= a() && i <= d()) {
            int a2 = (i - a()) + 1;
            Calendar d = UtcDates.d(this.f11774c.f11773c);
            d.set(5, a2);
            return Long.valueOf(d.getTimeInMillis());
        }
        return null;
    }

    public final int d() {
        return (a() + this.f11774c.i) - 1;
    }

    public final void e(TextView textView, long j, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        CalendarItemStyle calendarItemStyle;
        if (textView == null) {
            return;
        }
        Context context = textView.getContext();
        boolean z4 = true;
        if (UtcDates.h().getTimeInMillis() == j) {
            z = true;
        } else {
            z = false;
        }
        DateSelector dateSelector = this.f;
        ArrayList v = dateSelector.v();
        int size = v.size();
        int i2 = 0;
        while (true) {
            if (i2 < size) {
                Object obj = v.get(i2);
                i2++;
                Object obj2 = ((Pair) obj).f755a;
                if (obj2 != null && ((Long) obj2).longValue() == j) {
                    z2 = true;
                    break;
                }
            } else {
                z2 = false;
                break;
            }
        }
        ArrayList v2 = dateSelector.v();
        int size2 = v2.size();
        int i3 = 0;
        while (true) {
            if (i3 < size2) {
                Object obj3 = v2.get(i3);
                i3++;
                Object obj4 = ((Pair) obj3).b;
                if (obj4 != null && ((Long) obj4).longValue() == j) {
                    z3 = true;
                    break;
                }
            } else {
                z3 = false;
                break;
            }
        }
        String c2 = DateStrings.c(context, j, z, z2, z3);
        textView.setContentDescription(c2);
        if (this.i.g.e0(j)) {
            textView.setEnabled(true);
            ArrayList n0 = dateSelector.n0();
            int size3 = n0.size();
            int i4 = 0;
            while (true) {
                if (i4 < size3) {
                    Object obj5 = n0.get(i4);
                    i4++;
                    if (UtcDates.a(j) == UtcDates.a(((Long) obj5).longValue())) {
                        break;
                    }
                } else {
                    z4 = false;
                    break;
                }
            }
            textView.setSelected(z4);
            if (z4) {
                calendarItemStyle = this.h.b;
            } else if (UtcDates.h().getTimeInMillis() == j) {
                calendarItemStyle = this.h.f11752c;
            } else {
                calendarItemStyle = this.h.f11751a;
            }
        } else {
            textView.setEnabled(false);
            calendarItemStyle = this.h.g;
        }
        if (this.j != null && i != -1) {
            int i5 = this.f11774c.g;
            calendarItemStyle.b(textView);
            textView.setCompoundDrawables(null, null, null, null);
            textView.setContentDescription(c2);
            return;
        }
        calendarItemStyle.b(textView);
    }

    public final void f(MaterialCalendarGridView materialCalendarGridView, long j) {
        Month b = Month.b(j);
        Month month = this.f11774c;
        if (b.equals(month)) {
            Calendar d = UtcDates.d(month.f11773c);
            d.setTimeInMillis(j);
            int i = d.get(5);
            e((TextView) materialCalendarGridView.getChildAt((materialCalendarGridView.a().a() + (i - 1)) - materialCalendarGridView.getFirstVisiblePosition()), j, i);
        }
    }

    @Override // android.widget.Adapter
    public final int getCount() {
        return l;
    }

    @Override // android.widget.Adapter
    public final long getItemId(int i) {
        return i / this.f11774c.h;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x006b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:16:0x006c  */
    @Override // android.widget.Adapter
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View getView(int r6, android.view.View r7, android.view.ViewGroup r8) {
        /*
            r5 = this;
            android.content.Context r0 = r8.getContext()
            com.google.android.material.datepicker.CalendarStyle r1 = r5.h
            if (r1 != 0) goto Lf
            com.google.android.material.datepicker.CalendarStyle r1 = new com.google.android.material.datepicker.CalendarStyle
            r1.<init>(r0)
            r5.h = r1
        Lf:
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
            r1 = 0
            if (r7 != 0) goto L26
            android.content.Context r7 = r8.getContext()
            android.view.LayoutInflater r7 = android.view.LayoutInflater.from(r7)
            int r0 = com.google.android.material.R.layout.mtrl_calendar_day
            android.view.View r7 = r7.inflate(r0, r8, r1)
            r0 = r7
            android.widget.TextView r0 = (android.widget.TextView) r0
        L26:
            int r7 = r5.a()
            int r7 = r6 - r7
            if (r7 < 0) goto L5c
            com.google.android.material.datepicker.Month r8 = r5.f11774c
            int r2 = r8.i
            if (r7 < r2) goto L35
            goto L5c
        L35:
            r2 = 1
            int r7 = r7 + r2
            r0.setTag(r8)
            android.content.res.Resources r8 = r0.getResources()
            android.content.res.Configuration r8 = r8.getConfiguration()
            java.util.Locale r8 = r8.locale
            java.lang.Integer r3 = java.lang.Integer.valueOf(r7)
            java.lang.Object[] r4 = new java.lang.Object[r2]
            r4[r1] = r3
            java.lang.String r3 = "%d"
            java.lang.String r8 = java.lang.String.format(r8, r3, r4)
            r0.setText(r8)
            r0.setVisibility(r1)
            r0.setEnabled(r2)
            goto L65
        L5c:
            r7 = 8
            r0.setVisibility(r7)
            r0.setEnabled(r1)
            r7 = -1
        L65:
            java.lang.Long r6 = r5.getItem(r6)
            if (r6 != 0) goto L6c
            return r0
        L6c:
            long r1 = r6.longValue()
            r5.e(r0, r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.datepicker.MonthAdapter.getView(int, android.view.View, android.view.ViewGroup):android.view.View");
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public final boolean hasStableIds() {
        return true;
    }
}
