package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzbsy extends zzbcc implements zzbsz {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbcb, com.google.android.gms.internal.ads.zzbsz] */
    public static zzbsz c5(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (queryLocalInterface instanceof zzbsz) {
            return (zzbsz) queryLocalInterface;
        }
        return new zzbcb(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    String readString = parcel.readString();
                    zzbcd.f(parcel);
                    boolean i2 = ((zzbsv) this).i(readString);
                    parcel2.writeNoException();
                    parcel2.writeInt(i2 ? 1 : 0);
                    return true;
                }
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzbuy zze = ((zzbsv) this).zze(readString2);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zze);
                return true;
            }
            String readString3 = parcel.readString();
            zzbcd.f(parcel);
            boolean zzc = ((zzbsv) this).zzc(readString3);
            parcel2.writeNoException();
            parcel2.writeInt(zzc ? 1 : 0);
            return true;
        }
        String readString4 = parcel.readString();
        zzbcd.f(parcel);
        zzbtc a2 = ((zzbsv) this).a(readString4);
        parcel2.writeNoException();
        zzbcd.e(parcel2, a2);
        return true;
    }
}
