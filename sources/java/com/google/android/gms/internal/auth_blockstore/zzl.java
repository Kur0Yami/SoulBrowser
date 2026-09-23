package com.google.android.gms.internal.auth_blockstore;

import android.os.Parcel;
import com.google.android.gms.auth.blockstore.RetrieveBytesResponse;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzl extends zzb implements zzm {
    @Override // com.google.android.gms.internal.auth_blockstore.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            RetrieveBytesResponse retrieveBytesResponse = (RetrieveBytesResponse) zzc.a(parcel, RetrieveBytesResponse.CREATOR);
            zzb.f2(parcel);
            k1(status, retrieveBytesResponse);
            return true;
        }
        Status status2 = (Status) zzc.a(parcel, Status.CREATOR);
        byte[] createByteArray = parcel.createByteArray();
        zzb.f2(parcel);
        O3(status2, createByteArray);
        return true;
    }
}
