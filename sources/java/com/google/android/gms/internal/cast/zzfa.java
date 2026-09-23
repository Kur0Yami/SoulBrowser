package com.google.android.gms.internal.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* loaded from: classes.dex */
public abstract class zzfa extends zzb implements zzfb {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            int readInt = parcel.readInt();
            ApiMetadata apiMetadata = (ApiMetadata) zzc.a(parcel, ApiMetadata.CREATOR);
            zzc.d(parcel);
            D2(readInt, apiMetadata);
            return true;
        }
        return false;
    }
}
