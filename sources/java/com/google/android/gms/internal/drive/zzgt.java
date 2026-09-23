package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* loaded from: classes.dex */
public final class zzgt implements Parcelable.Creator<zzgs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgs createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        DriveId driveId = null;
        int i = 0;
        com.google.android.gms.drive.events.zzt zztVar = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            int fieldId = SafeParcelReader.getFieldId(readHeader);
            if (fieldId != 2) {
                if (fieldId != 3) {
                    if (fieldId != 4) {
                        SafeParcelReader.skipUnknownField(parcel, readHeader);
                    } else {
                        zztVar = (com.google.android.gms.drive.events.zzt) SafeParcelReader.createParcelable(parcel, readHeader, com.google.android.gms.drive.events.zzt.CREATOR);
                    }
                } else {
                    i = SafeParcelReader.readInt(parcel, readHeader);
                }
            } else {
                driveId = (DriveId) SafeParcelReader.createParcelable(parcel, readHeader, DriveId.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        return new zzgs(driveId, i, zztVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzgs[] newArray(int i) {
        return new zzgs[i];
    }
}
