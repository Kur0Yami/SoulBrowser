package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzdz extends zzbcc implements zzea {
    public zzdz() {
        super("com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    public static zzea zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
        if (queryLocalInterface instanceof zzea) {
            return (zzea) queryLocalInterface;
        }
        return new zzdy(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 2:
                String zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeString(zzf);
                return true;
            case 3:
                List zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzg);
                return true;
            case 4:
                zzv zzh = zzh();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzh);
                return true;
            case 5:
                Bundle zzi = zzi();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzi);
                return true;
            case 6:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            default:
                return false;
        }
    }
}
