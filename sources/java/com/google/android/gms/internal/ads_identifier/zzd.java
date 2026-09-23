package com.google.android.gms.internal.ads_identifier;

import android.os.Parcel;

/* loaded from: classes.dex */
public final class zzd extends zza implements zzf {
    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final String zzc() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        Parcel I1 = I1(1, obtain);
        String readString = I1.readString();
        I1.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zzd() {
        boolean z;
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        Parcel I1 = I1(6, obtain);
        int i = zzc.f9426a;
        if (I1.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        I1.recycle();
        return z;
    }

    @Override // com.google.android.gms.internal.ads_identifier.zzf
    public final boolean zze() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        int i = zzc.f9426a;
        boolean z = true;
        obtain.writeInt(1);
        Parcel I1 = I1(2, obtain);
        if (I1.readInt() == 0) {
            z = false;
        }
        I1.recycle();
        return z;
    }
}
