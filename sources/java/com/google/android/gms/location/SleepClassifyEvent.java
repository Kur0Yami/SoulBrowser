package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "SleepClassifyEventCreator")
/* loaded from: classes3.dex */
public class SleepClassifyEvent extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SleepClassifyEvent> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11575c;
    public final int f;
    public final int g;
    public final int h;
    public final int i;
    public final int j;
    public final int k;
    public final boolean l;
    public final int m;

    public SleepClassifyEvent(int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8) {
        this.f11575c = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
        this.i = i5;
        this.j = i6;
        this.k = i7;
        this.l = z;
        this.m = i8;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SleepClassifyEvent)) {
            return false;
        }
        SleepClassifyEvent sleepClassifyEvent = (SleepClassifyEvent) obj;
        if (this.f11575c == sleepClassifyEvent.f11575c && this.f == sleepClassifyEvent.f) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f11575c), Integer.valueOf(this.f));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(65);
        sb.append(this.f11575c);
        sb.append(" Conf:");
        sb.append(this.f);
        sb.append(" Motion:");
        sb.append(this.g);
        sb.append(" Light:");
        sb.append(this.h);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11575c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeInt(parcel, 6, this.j);
        SafeParcelWriter.writeInt(parcel, 7, this.k);
        SafeParcelWriter.writeBoolean(parcel, 8, this.l);
        SafeParcelWriter.writeInt(parcel, 9, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
