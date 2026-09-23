package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class CalendarConstraints implements Parcelable {
    public static final Parcelable.Creator<CalendarConstraints> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Month f11746c;
    public final Month f;
    public final DateValidator g;
    public final Month h;
    public final int i;
    public final int j;
    public final int k;

    /* renamed from: com.google.android.material.datepicker.CalendarConstraints$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Parcelable.Creator<CalendarConstraints> {
        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints createFromParcel(Parcel parcel) {
            return new CalendarConstraints((Month) parcel.readParcelable(Month.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), (DateValidator) parcel.readParcelable(DateValidator.class.getClassLoader()), (Month) parcel.readParcelable(Month.class.getClassLoader()), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final CalendarConstraints[] newArray(int i) {
            return new CalendarConstraints[i];
        }
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f11747c = 0;

        /* renamed from: a, reason: collision with root package name */
        public Long f11748a;
        public DateValidator b;

        static {
            UtcDates.a(Month.a(1900, 0).j);
            UtcDates.a(Month.a(2100, 11).j);
        }
    }

    /* loaded from: classes3.dex */
    public interface DateValidator extends Parcelable {
        boolean e0(long j);
    }

    public CalendarConstraints(Month month, Month month2, DateValidator dateValidator, Month month3, int i) {
        Objects.requireNonNull(month, "start cannot be null");
        Objects.requireNonNull(month2, "end cannot be null");
        Objects.requireNonNull(dateValidator, "validator cannot be null");
        this.f11746c = month;
        this.f = month2;
        this.h = month3;
        this.i = i;
        this.g = dateValidator;
        if (month3 != null && month.f11773c.compareTo(month3.f11773c) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (month3 != null && month3.f11773c.compareTo(month2.f11773c) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i >= 0 && i <= UtcDates.i(null).getMaximum(7)) {
            this.k = month.d(month2) + 1;
            this.j = (month2.g - month.g) + 1;
            return;
        }
        throw new IllegalArgumentException("firstDayOfWeek is not valid");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof CalendarConstraints)) {
            return false;
        }
        CalendarConstraints calendarConstraints = (CalendarConstraints) obj;
        if (this.f11746c.equals(calendarConstraints.f11746c) && this.f.equals(calendarConstraints.f) && Objects.equals(this.h, calendarConstraints.h) && this.i == calendarConstraints.i && this.g.equals(calendarConstraints.g)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f11746c, this.f, this.h, Integer.valueOf(this.i), this.g});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f11746c, 0);
        parcel.writeParcelable(this.f, 0);
        parcel.writeParcelable(this.h, 0);
        parcel.writeParcelable(this.g, 0);
        parcel.writeInt(this.i);
    }
}
