package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes3.dex */
public abstract class zzce extends zzbn implements zzcf {
    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            Bundle bundle = (Bundle) zzbo.a(parcel, Bundle.CREATOR);
            zzbo.b(parcel);
            zzbz zzbzVar = (zzbz) this;
            synchronized (zzbzVar.f10368c) {
                try {
                    zzbzVar.f10368c.set(bundle);
                } finally {
                    zzbzVar.f10368c.notify();
                }
            }
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
