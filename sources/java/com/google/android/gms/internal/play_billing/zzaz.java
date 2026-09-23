package com.google.android.gms.internal.play_billing;

import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzaz extends zzat implements zzba {
    @Override // com.google.android.gms.internal.play_billing.zzat
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            int readInt = parcel.readInt();
            zzat.f2(parcel);
            j(readInt);
            return true;
        }
        return false;
    }
}
