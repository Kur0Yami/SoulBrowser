package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzef extends zzbcc implements zzeg {
    public zzef() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
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
                        boolean a2 = zzbcd.a(parcel);
                        zzbcd.f(parcel);
                        zzi(a2);
                    } else {
                        zzh();
                    }
                } else {
                    zzg();
                }
            } else {
                zzf();
            }
        } else {
            zze();
        }
        parcel2.writeNoException();
        return true;
    }
}
