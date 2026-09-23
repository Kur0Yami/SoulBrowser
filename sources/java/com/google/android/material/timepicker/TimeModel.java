package com.google.android.material.timepicker;

import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* loaded from: classes3.dex */
class TimeModel implements Parcelable {
    public static final Parcelable.Creator<TimeModel> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final MaxInputValidator f12000c;
    public final MaxInputValidator f;
    public final int g;
    public int h;
    public int i;
    public int j;
    public int k;

    /* renamed from: com.google.android.material.timepicker.TimeModel$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Parcelable.Creator<TimeModel> {
        @Override // android.os.Parcelable.Creator
        public final TimeModel createFromParcel(Parcel parcel) {
            return new TimeModel(parcel.readInt(), parcel.readInt(), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final TimeModel[] newArray(int i) {
            return new TimeModel[i];
        }
    }

    public TimeModel(int i, int i2, int i3, int i4) {
        int i5;
        this.h = i;
        this.i = i2;
        this.j = i3;
        this.g = i4;
        if (i >= 12) {
            i5 = 1;
        } else {
            i5 = 0;
        }
        this.k = i5;
        this.f12000c = new MaxInputValidator(59);
        this.f = new MaxInputValidator(i4 == 1 ? 23 : 12);
    }

    public static String a(Resources resources, CharSequence charSequence, String str) {
        try {
            return String.format(resources.getConfiguration().locale, str, Integer.valueOf(Integer.parseInt(String.valueOf(charSequence))));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public final int b() {
        if (this.g == 1) {
            return this.h % 24;
        }
        int i = this.h;
        if (i % 12 == 0) {
            return 12;
        }
        if (this.k == 1) {
            return i - 12;
        }
        return i;
    }

    public final void c(int i) {
        if (this.g == 1) {
            this.h = i;
            return;
        }
        int i2 = 12;
        int i3 = i % 12;
        if (this.k != 1) {
            i2 = 0;
        }
        this.h = i3 + i2;
    }

    public final void d(int i) {
        if (i != this.k) {
            this.k = i;
            int i2 = this.h;
            if (i2 < 12 && i == 1) {
                this.h = i2 + 12;
            } else if (i2 >= 12 && i == 0) {
                this.h = i2 - 12;
            }
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimeModel)) {
            return false;
        }
        TimeModel timeModel = (TimeModel) obj;
        if (this.h == timeModel.h && this.i == timeModel.i && this.g == timeModel.g && this.j == timeModel.j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeInt(this.j);
        parcel.writeInt(this.g);
    }
}
