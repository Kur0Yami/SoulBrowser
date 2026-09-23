package com.google.android.gms.internal.location;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzaj extends zzb implements zzak {
    public zzaj() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    public final boolean I1(int i, Parcel parcel) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                int readInt = parcel.readInt();
                f(readInt);
                return true;
            }
            int readInt2 = parcel.readInt();
            parcel.createStringArray();
            zzc(readInt2);
            return true;
        }
        int readInt3 = parcel.readInt();
        parcel.createStringArray();
        zzb(readInt3);
        return true;
    }
}
