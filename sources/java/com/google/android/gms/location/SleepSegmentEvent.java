package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "SleepSegmentEventCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class SleepSegmentEvent extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SleepSegmentEvent> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final long f11576c;
    public final long f;
    public final int g;
    public final int h;
    public final int i;

    public SleepSegmentEvent(int i, int i2, int i3, long j, long j2) {
        boolean z;
        if (j <= j2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "endTimeMillis must be greater than or equal to startTimeMillis");
        this.f11576c = j;
        this.f = j2;
        this.g = i;
        this.h = i2;
        this.i = i3;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SleepSegmentEvent) {
            SleepSegmentEvent sleepSegmentEvent = (SleepSegmentEvent) obj;
            if (this.f11576c == sleepSegmentEvent.f11576c && this.f == sleepSegmentEvent.f && this.g == sleepSegmentEvent.g && this.h == sleepSegmentEvent.h && this.i == sleepSegmentEvent.i) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f11576c), Long.valueOf(this.f), Integer.valueOf(this.g));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(84);
        sb.append("startMillis=");
        sb.append(this.f11576c);
        sb.append(", endMillis=");
        sb.append(this.f);
        sb.append(", status=");
        sb.append(this.g);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 1, this.f11576c);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
