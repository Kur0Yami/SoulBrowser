package com.google.android.gms.internal.cast;

import android.os.Parcel;
import j$.util.Objects;

/* loaded from: classes.dex */
public abstract class zzag extends zzb implements zzah {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            zzc.d(parcel);
            Objects.requireNonNull((zzam) this);
            throw null;
        }
        zzc.d(parcel);
        Objects.requireNonNull((zzam) this);
        throw null;
    }
}
