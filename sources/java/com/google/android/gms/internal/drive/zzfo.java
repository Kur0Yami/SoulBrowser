package com.google.android.gms.internal.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.drive.DriveId;

/* loaded from: classes.dex */
public final class zzfo implements Parcelable.Creator<zzfn> {
    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable, com.google.android.gms.internal.drive.zzfn] */
    @Override // android.os.Parcelable.Creator
    public final zzfn createFromParcel(Parcel parcel) {
        int validateObjectHeader = SafeParcelReader.validateObjectHeader(parcel);
        DriveId driveId = null;
        while (parcel.dataPosition() < validateObjectHeader) {
            int readHeader = SafeParcelReader.readHeader(parcel);
            if (SafeParcelReader.getFieldId(readHeader) != 2) {
                SafeParcelReader.skipUnknownField(parcel, readHeader);
            } else {
                driveId = (DriveId) SafeParcelReader.createParcelable(parcel, readHeader, DriveId.CREATOR);
            }
        }
        SafeParcelReader.ensureAtEnd(parcel, validateObjectHeader);
        ?? abstractSafeParcelable = new AbstractSafeParcelable();
        abstractSafeParcelable.f10169c = driveId;
        return abstractSafeParcelable;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfn[] newArray(int i) {
        return new zzfn[i];
    }
}
