package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* loaded from: classes3.dex */
final class Month implements Comparable<Month>, Parcelable {
    public static final Parcelable.Creator<Month> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Calendar f11773c;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final long j;
    public String k;

    /* renamed from: com.google.android.material.datepicker.Month$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Parcelable.Creator<Month> {
        @Override // android.os.Parcelable.Creator
        public final Month createFromParcel(Parcel parcel) {
            return Month.a(parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final Month[] newArray(int i) {
            return new Month[i];
        }
    }

    public Month(Calendar calendar) {
        calendar.set(5, 1);
        Calendar d = UtcDates.d(calendar);
        this.f11773c = d;
        this.f = d.get(2);
        this.g = d.get(1);
        this.h = d.getMaximum(7);
        this.i = d.getActualMaximum(5);
        this.j = d.getTimeInMillis();
    }

    public static Month a(int i, int i2) {
        Calendar i3 = UtcDates.i(null);
        i3.set(1, i);
        i3.set(2, i2);
        return new Month(i3);
    }

    public static Month b(long j) {
        Calendar i = UtcDates.i(null);
        i.setTimeInMillis(j);
        return new Month(i);
    }

    public final String c() {
        if (this.k == null) {
            this.k = DateStrings.e(this.f11773c.getTimeInMillis());
        }
        return this.k;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Month month) {
        return this.f11773c.compareTo(month.f11773c);
    }

    public final int d(Month month) {
        if (this.f11773c instanceof GregorianCalendar) {
            return (month.f - this.f) + ((month.g - this.g) * 12);
        }
        throw new IllegalArgumentException("Only Gregorian calendars are supported.");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Month)) {
            return false;
        }
        Month month = (Month) obj;
        if (this.f == month.f && this.g == month.g) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f), Integer.valueOf(this.g)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.g);
        parcel.writeInt(this.f);
    }
}
