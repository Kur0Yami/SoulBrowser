package com.google.android.gms.internal.location;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzah extends zzb implements zzai {
    public zzah() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzc();
            return true;
        }
        G4((zzaa) zzc.a(parcel, zzaa.CREATOR));
        return true;
    }
}
