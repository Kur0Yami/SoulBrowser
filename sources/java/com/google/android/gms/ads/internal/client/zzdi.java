package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;

/* loaded from: classes.dex */
public abstract class zzdi extends zzbcc implements zzdj {
    public zzdi() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbcb, com.google.android.gms.ads.internal.client.zzdj] */
    public static zzdj zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdReason");
        if (queryLocalInterface instanceof zzdj) {
            return (zzdj) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        }
        String zze = zze();
        parcel2.writeNoException();
        parcel2.writeString(zze);
        return true;
    }
}
