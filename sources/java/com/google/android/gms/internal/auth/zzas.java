package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzas extends zzb implements zzat {
    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                zzc.b(parcel);
                throw new UnsupportedOperationException();
            case 2:
                zzc.b(parcel);
                throw new UnsupportedOperationException();
            case 3:
                zzc.b(parcel);
                throw new UnsupportedOperationException();
            case 4:
                zze();
                throw null;
            case 5:
                Status status = (Status) zzc.a(parcel, Status.CREATOR);
                zzc.b(parcel);
                P(status);
                return true;
            case 6:
                byte[] createByteArray = parcel.createByteArray();
                zzc.b(parcel);
                W1(createByteArray);
                return true;
            case 7:
                DeviceMetaData deviceMetaData = (DeviceMetaData) zzc.a(parcel, DeviceMetaData.CREATOR);
                zzc.b(parcel);
                W(deviceMetaData);
                return true;
            default:
                return false;
        }
    }
}
