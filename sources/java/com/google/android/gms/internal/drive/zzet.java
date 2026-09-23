package com.google.android.gms.internal.drive;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzet extends zzb implements zzes {
    @Override // com.google.android.gms.internal.drive.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            u1((zzfp) zzc.a(parcel, zzfp.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
