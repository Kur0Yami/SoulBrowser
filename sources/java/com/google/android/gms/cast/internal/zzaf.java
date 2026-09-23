package com.google.android.gms.cast.internal;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzaf extends com.google.android.gms.internal.cast.zzb implements zzag {
    public zzaf() {
        super("com.google.android.gms.cast.internal.IBundleCallback");
    }

    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
            com.google.android.gms.internal.cast.zzc.d(parcel);
            j3(bundle);
            return true;
        }
        return false;
    }
}
