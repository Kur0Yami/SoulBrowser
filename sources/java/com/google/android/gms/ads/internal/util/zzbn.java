package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzbn extends zzbcc implements zzbo {
    public zzbn() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.ads.internal.offline.buffering.zza zzaVar = (com.google.android.gms.ads.internal.offline.buffering.zza) zzbcd.b(parcel, com.google.android.gms.ads.internal.offline.buffering.zza.CREATOR);
                zzbcd.f(parcel);
                boolean zzg = zzg(I1, zzaVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzg ? 1 : 0);
                return true;
            }
            IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
            zzbcd.f(parcel);
            zzf(I12);
            parcel2.writeNoException();
            return true;
        }
        IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
        String readString = parcel.readString();
        String readString2 = parcel.readString();
        zzbcd.f(parcel);
        boolean zze = zze(I13, readString, readString2);
        parcel2.writeNoException();
        parcel2.writeInt(zze ? 1 : 0);
        return true;
    }
}
