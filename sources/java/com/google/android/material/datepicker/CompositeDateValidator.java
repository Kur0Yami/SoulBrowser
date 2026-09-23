package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.material.datepicker.CalendarConstraints;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class CompositeDateValidator implements CalendarConstraints.DateValidator {

    /* renamed from: c, reason: collision with root package name */
    public final Operator f11753c;
    public final ArrayList f;
    public static final AnonymousClass1 g = new Object();
    public static final AnonymousClass2 h = new Object();
    public static final Parcelable.Creator<CompositeDateValidator> CREATOR = new Object();

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final boolean a(ArrayList arrayList, long j) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) obj;
                if (dateValidator != null && dateValidator.e0(j)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final int getId() {
            return 1;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass2 implements Operator {
        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final boolean a(ArrayList arrayList, long j) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                CalendarConstraints.DateValidator dateValidator = (CalendarConstraints.DateValidator) obj;
                if (dateValidator != null && !dateValidator.e0(j)) {
                    return false;
                }
            }
            return true;
        }

        @Override // com.google.android.material.datepicker.CompositeDateValidator.Operator
        public final int getId() {
            return 2;
        }
    }

    /* renamed from: com.google.android.material.datepicker.CompositeDateValidator$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass3 implements Parcelable.Creator<CompositeDateValidator> {
        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator createFromParcel(Parcel parcel) {
            ArrayList readArrayList = parcel.readArrayList(CalendarConstraints.DateValidator.class.getClassLoader());
            int readInt = parcel.readInt();
            Operator operator = CompositeDateValidator.h;
            if (readInt != 2 && readInt == 1) {
                operator = CompositeDateValidator.g;
            }
            readArrayList.getClass();
            return new CompositeDateValidator(readArrayList, operator);
        }

        @Override // android.os.Parcelable.Creator
        public final CompositeDateValidator[] newArray(int i) {
            return new CompositeDateValidator[i];
        }
    }

    /* loaded from: classes3.dex */
    public interface Operator {
        boolean a(ArrayList arrayList, long j);

        int getId();
    }

    public CompositeDateValidator(ArrayList arrayList, Operator operator) {
        this.f = arrayList;
        this.f11753c = operator;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // com.google.android.material.datepicker.CalendarConstraints.DateValidator
    public final boolean e0(long j) {
        return this.f11753c.a(this.f, j);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof CompositeDateValidator) {
                CompositeDateValidator compositeDateValidator = (CompositeDateValidator) obj;
                if (this.f.equals(compositeDateValidator.f) && this.f11753c.getId() == compositeDateValidator.f11753c.getId()) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.f.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeList(this.f);
        parcel.writeInt(this.f11753c.getId());
    }
}
