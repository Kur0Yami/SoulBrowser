package com.google.android.gms.internal.measurement;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzch extends zzbn implements zzci {
    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int zzd = zzd();
            parcel2.writeNoException();
            parcel2.writeInt(zzd);
            return true;
        }
        parcel.readString();
        parcel.readString();
        parcel.readLong();
        zzbo.b(parcel);
        zze();
        throw null;
    }
}
