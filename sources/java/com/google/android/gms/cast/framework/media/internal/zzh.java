package com.google.android.gms.cast.framework.media.internal;

import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;

/* loaded from: classes.dex */
public abstract class zzh extends com.google.android.gms.internal.cast.zzb implements zzi {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            parcel2.writeNoException();
            parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
            return true;
        }
        long readLong = parcel.readLong();
        long readLong2 = parcel.readLong();
        com.google.android.gms.internal.cast.zzc.d(parcel);
        ((zzc) this).f3511c.publishProgress(Long.valueOf(readLong), Long.valueOf(readLong2));
        parcel2.writeNoException();
        return true;
    }
}
