package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzcae extends zzbcc implements zzcaf {
    public zzcae() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzcaf zzt(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (queryLocalInterface instanceof zzcaf) {
            return (zzcaf) queryLocalInterface;
        }
        return new zzcad(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v13, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r3v8, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        boolean z = false;
        zzcam zzcamVar = null;
        zzcam zzcamVar2 = null;
        zzcan zzcanVar = null;
        zzcai zzcaiVar = null;
        switch (i) {
            case 1:
                com.google.android.gms.ads.internal.client.zzm zzmVar = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface instanceof zzcam) {
                        zzcamVar = (zzcam) queryLocalInterface;
                    } else {
                        zzcamVar = new zzcak(readStrongBinder);
                    }
                }
                zzbcd.f(parcel);
                zzc(zzmVar, zzcamVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (queryLocalInterface2 instanceof zzcai) {
                        zzcaiVar = (zzcai) queryLocalInterface2;
                    } else {
                        zzcaiVar = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    }
                }
                zzbcd.f(parcel);
                zze(zzcaiVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzi = zzi();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzi ? 1 : 0);
                return true;
            case 4:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 5:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzb(I1);
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (queryLocalInterface3 instanceof zzcan) {
                        zzcanVar = (zzcan) queryLocalInterface3;
                    } else {
                        zzcanVar = new zzbcb(readStrongBinder3, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    }
                }
                zzbcd.f(parcel);
                zzs(zzcanVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zzcat zzcatVar = (zzcat) zzbcd.b(parcel, zzcat.CREATOR);
                zzbcd.f(parcel);
                zzh(zzcatVar);
                parcel2.writeNoException();
                return true;
            case 8:
                com.google.android.gms.ads.internal.client.zzdq zzb = com.google.android.gms.ads.internal.client.zzdp.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzf(zzb);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle zzg = zzg();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzg);
                return true;
            case 10:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                ClassLoader classLoader2 = zzbcd.f4538a;
                if (parcel.readInt() != 0) {
                    z = true;
                }
                zzbcd.f(parcel);
                zzk(I12, z);
                parcel2.writeNoException();
                return true;
            case 11:
                zzcac zzl = zzl();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzl);
                return true;
            case 12:
                com.google.android.gms.ads.internal.client.zzea zzm = zzm();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzm);
                return true;
            case 13:
                com.google.android.gms.ads.internal.client.zzdt zzb2 = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzo(zzb2);
                parcel2.writeNoException();
                return true;
            case 14:
                com.google.android.gms.ads.internal.client.zzm zzmVar2 = (com.google.android.gms.ads.internal.client.zzm) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zzm.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface4 instanceof zzcam) {
                        zzcamVar2 = (zzcam) queryLocalInterface4;
                    } else {
                        zzcamVar2 = new zzcak(readStrongBinder4);
                    }
                }
                zzbcd.f(parcel);
                zzd(zzmVar2, zzcamVar2);
                parcel2.writeNoException();
                return true;
            case 15:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzp(a2);
                parcel2.writeNoException();
                return true;
            case 16:
                String zzn = zzn();
                parcel2.writeNoException();
                parcel2.writeString(zzn);
                return true;
            case 17:
                long zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeLong(zzq);
                return true;
            case 18:
                long readLong = parcel.readLong();
                zzbcd.f(parcel);
                zzr(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
