package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R;
import com.google.android.material.resources.MaterialAttributes;
import com.google.android.material.resources.MaterialResources;

/* loaded from: classes3.dex */
final class CalendarStyle {

    /* renamed from: a, reason: collision with root package name */
    public final CalendarItemStyle f11751a;
    public final CalendarItemStyle b;

    /* renamed from: c, reason: collision with root package name */
    public final CalendarItemStyle f11752c;
    public final CalendarItemStyle d;
    public final CalendarItemStyle e;
    public final CalendarItemStyle f;
    public final CalendarItemStyle g;
    public final Paint h;

    public CalendarStyle(Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(MaterialAttributes.c(context, R.attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()).data, R.styleable.MaterialCalendar);
        this.f11751a = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayStyle, 0));
        this.g = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.b = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f11752c = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList a2 = MaterialResources.a(context, obtainStyledAttributes, R.styleable.MaterialCalendar_rangeFillColor);
        this.d = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearStyle, 0));
        this.e = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f = CalendarItemStyle.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.h = paint;
        paint.setColor(a2.getDefaultColor());
        obtainStyledAttributes.recycle();
    }
}
