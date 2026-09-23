package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public abstract class zzbzo extends zzbcc implements zzbzp {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        Bundle bundle;
        zzcir zzcirVar;
        if (i != 1) {
            if (i != 2) {
                IInterface iInterface = null;
                if (i != 3) {
                    if (i != 34) {
                        int i2 = 0;
                        switch (i) {
                            case 5:
                                Preconditions.checkMainThread("isLoaded must be called on the main UI thread.");
                                boolean g5 = ((zzfho) this).g5();
                                parcel2.writeNoException();
                                ClassLoader classLoader = zzbcd.f4538a;
                                parcel2.writeInt(g5 ? 1 : 0);
                                return true;
                            case 6:
                                ((zzfho) this).q3(null);
                                parcel2.writeNoException();
                                return true;
                            case 7:
                                ((zzfho) this).zzj(null);
                                parcel2.writeNoException();
                                return true;
                            case 8:
                                ((zzfho) this).d5(null);
                                parcel2.writeNoException();
                                return true;
                            case 9:
                                ((zzfho) this).q3(a.g(parcel, parcel));
                                parcel2.writeNoException();
                                return true;
                            case 10:
                                ((zzfho) this).zzj(a.g(parcel, parcel));
                                parcel2.writeNoException();
                                return true;
                            case 11:
                                ((zzfho) this).d5(a.g(parcel, parcel));
                                parcel2.writeNoException();
                                return true;
                            case 12:
                                String zzl = ((zzfho) this).zzl();
                                parcel2.writeNoException();
                                parcel2.writeString(zzl);
                                return true;
                            case 13:
                                String readString = parcel.readString();
                                zzbcd.f(parcel);
                                ((zzfho) this).e5(readString);
                                parcel2.writeNoException();
                                return true;
                            case 14:
                                com.google.android.gms.ads.internal.client.zzcb zzb = com.google.android.gms.ads.internal.client.zzca.zzb(parcel.readStrongBinder());
                                zzbcd.f(parcel);
                                zzfho zzfhoVar = (zzfho) this;
                                zzfgv zzfgvVar = zzfhoVar.f;
                                Preconditions.checkMainThread("setAdMetadataListener can only be called from the UI thread.");
                                if (zzb == null) {
                                    zzfgvVar.f.set(null);
                                } else {
                                    zzfgvVar.f.set(new zzfhn(zzfhoVar, zzb));
                                }
                                parcel2.writeNoException();
                                return true;
                            case 15:
                                Preconditions.checkMainThread("getAdMetadata can only be called from the UI thread.");
                                zzdte zzdteVar = ((zzfho) this).h;
                                if (zzdteVar != null) {
                                    bundle = zzdteVar.d();
                                } else {
                                    bundle = new Bundle();
                                }
                                parcel2.writeNoException();
                                zzbcd.d(parcel2, bundle);
                                return true;
                            case 16:
                                IBinder readStrongBinder = parcel.readStrongBinder();
                                if (readStrongBinder != null) {
                                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                                    if (queryLocalInterface instanceof zzbzn) {
                                        iInterface = (zzbzn) queryLocalInterface;
                                    } else {
                                        iInterface = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                                    }
                                }
                                zzbcd.f(parcel);
                                Preconditions.checkMainThread("#008 Must be called on the main UI thread.: setRewardedAdSkuListener");
                                ((zzfho) this).f.k.set(iInterface);
                                parcel2.writeNoException();
                                return true;
                            case 17:
                                parcel.readString();
                                zzbcd.f(parcel);
                                parcel2.writeNoException();
                                return true;
                            case 18:
                                ((zzfho) this).s2(a.g(parcel, parcel));
                                parcel2.writeNoException();
                                return true;
                            case 19:
                                String readString2 = parcel.readString();
                                zzbcd.f(parcel);
                                ((zzfho) this).f5(readString2);
                                parcel2.writeNoException();
                                return true;
                            case 20:
                                zzdte zzdteVar2 = ((zzfho) this).h;
                                if (zzdteVar2 != null && (zzcirVar = (zzcir) zzdteVar2.m.get()) != null && !zzcirVar.W()) {
                                    i2 = 1;
                                }
                                parcel2.writeNoException();
                                ClassLoader classLoader2 = zzbcd.f4538a;
                                parcel2.writeInt(i2);
                                return true;
                            case 21:
                                com.google.android.gms.ads.internal.client.zzea zzt = ((zzfho) this).zzt();
                                parcel2.writeNoException();
                                zzbcd.e(parcel2, zzt);
                                return true;
                            default:
                                return false;
                        }
                    }
                    boolean a2 = zzbcd.a(parcel);
                    zzbcd.f(parcel);
                    zzfho zzfhoVar2 = (zzfho) this;
                    synchronized (zzfhoVar2) {
                        Preconditions.checkMainThread("setImmersiveMode must be called on the main UI thread.");
                        zzfhoVar2.i = a2;
                    }
                    parcel2.writeNoException();
                    return true;
                }
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    if (queryLocalInterface2 instanceof zzbzs) {
                        iInterface = (zzbzs) queryLocalInterface2;
                    } else {
                        iInterface = new zzbzq(readStrongBinder2);
                    }
                }
                zzbcd.f(parcel);
                Preconditions.checkMainThread("setRewardedVideoAdListener can only be called from the UI thread.");
                ((zzfho) this).f.i.set(iInterface);
                parcel2.writeNoException();
                return true;
            }
            ((zzfho) this).zzc();
            parcel2.writeNoException();
            return true;
        }
        zzbzt zzbztVar = (zzbzt) zzbcd.b(parcel, zzbzt.CREATOR);
        zzbcd.f(parcel);
        ((zzfho) this).c5(zzbztVar);
        parcel2.writeNoException();
        return true;
    }
}
