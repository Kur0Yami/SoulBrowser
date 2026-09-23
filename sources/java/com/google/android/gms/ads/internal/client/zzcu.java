package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzcu extends zzbcc implements zzcv {
    public zzcu() {
        super("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
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
                        zzf();
                    } else {
                        zze();
                    }
                } else {
                    zzd();
                }
            } else {
                zzc();
            }
        } else {
            zze zzeVar = (zze) zzbcd.b(parcel, zze.CREATOR);
            zzbcd.f(parcel);
            zzb(zzeVar);
        }
        parcel2.writeNoException();
        return true;
    }
}
