package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;

/* loaded from: classes3.dex */
public final class zzbe implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARN: Type inference failed for: r12v1, types: [com.google.android.gms.location.LocationAvailability, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // android.os.Parcelable.Creator
    public final LocationAvailability createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        int i = 1000;
        long j = 0;
        zzbo[] zzboVarArr = null;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 1) {
                if (fieldId != 2) {
                    if (fieldId != 3) {
                        if (fieldId != 4) {
                            if (fieldId != 5) {
                                SafeParcelReader.skipUnknownField(parcel, readHeader);
                            } else {
                                zzboVarArr = (zzbo[]) SafeParcelReader.createTypedArray(parcel, readHeader, zzbo.CREATOR);
                            }
                        } else {
                            i = SafeParcelReader.readInt(parcel, readHeader);
                        }
                    } else {
                        j = SafeParcelReader.readLong(parcel, readHeader);
                    }
                } else {
                    i3 = SafeParcelReader.readInt(parcel, readHeader);
                }
            } else {
                i2 = SafeParcelReader.readInt(parcel, readHeader);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        ?? abstractSafeParcelable = new AbstractSafeParcelable();
        abstractSafeParcelable.h = i;
        abstractSafeParcelable.f11569c = i2;
        abstractSafeParcelable.f = i3;
        abstractSafeParcelable.g = j;
        abstractSafeParcelable.i = zzboVarArr;
        return abstractSafeParcelable;
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
