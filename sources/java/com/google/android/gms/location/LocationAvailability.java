package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

@SafeParcelable.Class(creator = "LocationAvailabilityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int f11569c;
    public int f;
    public long g;
    public int h;
    public zzbo[] i;

    public final boolean equals(Object obj) {
        if (obj instanceof LocationAvailability) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            if (this.f11569c == locationAvailability.f11569c && this.f == locationAvailability.f && this.g == locationAvailability.g && this.h == locationAvailability.h && Arrays.equals(this.i, locationAvailability.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.h), Integer.valueOf(this.f11569c), Integer.valueOf(this.f), Long.valueOf(this.g), this.i);
    }

    public final String toString() {
        boolean z;
        if (this.h < 1000) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(z);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11569c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeLong(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeTypedArray(parcel, 5, this.i, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
