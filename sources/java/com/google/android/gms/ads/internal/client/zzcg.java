package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzcg extends zzbcc implements zzch {
    public zzcg() {
        super("com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzea zzdyVar;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                String readString = parcel.readString();
                zze zzeVar = (zze) zzbcd.b(parcel, zze.CREATOR);
                zzbcd.f(parcel);
                zzg(readString, zzeVar);
            } else {
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzf(readString2);
            }
        } else {
            String readString3 = parcel.readString();
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzdyVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IResponseInfo");
                if (queryLocalInterface instanceof zzea) {
                    zzdyVar = (zzea) queryLocalInterface;
                } else {
                    zzdyVar = new zzdy(readStrongBinder);
                }
            }
            zzbcd.f(parcel);
            zze(readString3, zzdyVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
