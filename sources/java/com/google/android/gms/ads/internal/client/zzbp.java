package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzbp extends zzbcc implements zzbq {
    public zzbp() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        zzm zzmVar = (zzm) zzbcd.b(parcel, zzm.CREATOR);
                        int readInt = parcel.readInt();
                        zzbcd.f(parcel);
                        zzi(zzmVar, readInt);
                        parcel2.writeNoException();
                        return true;
                    }
                    String zzh = zzh();
                    parcel2.writeNoException();
                    parcel2.writeString(zzh);
                    return true;
                }
                boolean zzg = zzg();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzg ? 1 : 0);
                return true;
            }
            String zzf = zzf();
            parcel2.writeNoException();
            parcel2.writeString(zzf);
            return true;
        }
        zzm zzmVar2 = (zzm) zzbcd.b(parcel, zzm.CREATOR);
        zzbcd.f(parcel);
        zze(zzmVar2);
        parcel2.writeNoException();
        return true;
    }
}
