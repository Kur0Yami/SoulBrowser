package com.google.android.gms.internal.fido;

import android.os.Parcel;
import com.google.android.gms.common.api.Status;

/* loaded from: classes3.dex */
public abstract class zzd extends zzb implements zze {
    public zzd() {
        super("com.google.android.gms.fido.fido2.api.IBooleanCallback");
    }

    @Override // com.google.android.gms.internal.fido.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        boolean z = false;
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            Status status = (Status) zzc.a(parcel, Status.CREATOR);
            zzc.b(parcel);
            E(status);
        } else {
            ClassLoader classLoader = zzc.f10284a;
            if (parcel.readInt() != 0) {
                z = true;
            }
            zzc.b(parcel);
            zzb(z);
        }
        parcel2.writeNoException();
        return true;
    }
}
