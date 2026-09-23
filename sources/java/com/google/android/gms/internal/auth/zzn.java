package com.google.android.gms.internal.auth;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzn extends zzb implements zzo {
    @Override // com.google.android.gms.internal.auth.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 2) {
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            Bundle bundle = (Bundle) zzc.a(parcel, Bundle.CREATOR);
            zzc.b(parcel);
            zzab.g(status, bundle, ((zzw) this).f9583c);
            return true;
        }
        return false;
    }
}
