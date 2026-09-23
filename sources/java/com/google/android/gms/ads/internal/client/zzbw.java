package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbeg;
import com.google.android.gms.internal.ads.zzbhf;
import com.google.android.gms.internal.ads.zzbxh;
import com.google.android.gms.internal.ads.zzbxk;
import com.google.android.gms.internal.ads.zzbzq;
import com.google.android.gms.internal.ads.zzbzs;

/* loaded from: classes.dex */
public abstract class zzbw extends zzbcc implements zzbx {
    public zzbw() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbx zzZ(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        if (queryLocalInterface instanceof zzbx) {
            return (zzbx) queryLocalInterface;
        }
        return new zzbv(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v14, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v18, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v5, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v7, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v9, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r2v6, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbk zzbkVar = null;
        zzcv zzcvVar = null;
        zzbn zzbnVar = null;
        zzdt zzdtVar = null;
        zzbeg zzbegVar = null;
        zzcb zzcbVar = null;
        zzbzs zzbzsVar = null;
        zzcs zzcsVar = null;
        zzbh zzbhVar = null;
        zzbhf zzbhfVar = null;
        zzbxk zzbxkVar = null;
        zzbxh zzbxhVar = null;
        zzco zzcoVar = null;
        switch (i) {
            case 1:
                IObjectWrapper zzb = zzb();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzb);
                return true;
            case 2:
                zzc();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzd = zzd();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzd ? 1 : 0);
                return true;
            case 4:
                zzm zzmVar = (zzm) zzbcd.b(parcel, zzm.CREATOR);
                zzbcd.f(parcel);
                boolean zze = zze(zzmVar);
                parcel2.writeNoException();
                parcel2.writeInt(zze ? 1 : 0);
                return true;
            case 5:
                zzf();
                parcel2.writeNoException();
                return true;
            case 6:
                zzg();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzbk) {
                        zzbkVar = (zzbk) queryLocalInterface;
                    } else {
                        zzbkVar = new zzbi(readStrongBinder);
                    }
                }
                zzbcd.f(parcel);
                zzdR(zzbkVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    if (queryLocalInterface2 instanceof zzco) {
                        zzcoVar = (zzco) queryLocalInterface2;
                    } else {
                        zzcoVar = new zzcm(readStrongBinder2);
                    }
                }
                zzbcd.f(parcel);
                zzi(zzcoVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzl();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzm();
                parcel2.writeNoException();
                return true;
            case 12:
                zzr zzn = zzn();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzn);
                return true;
            case 13:
                zzr zzrVar = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                zzbcd.f(parcel);
                zzo(zzrVar);
                parcel2.writeNoException();
                return true;
            case 14:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    if (queryLocalInterface3 instanceof zzbxh) {
                        zzbxhVar = (zzbxh) queryLocalInterface3;
                    } else {
                        zzbxhVar = new zzbcb(readStrongBinder3, "com.google.android.gms.ads.internal.purchase.client.IInAppPurchaseListener");
                    }
                }
                zzbcd.f(parcel);
                zzp(zzbxhVar);
                parcel2.writeNoException();
                return true;
            case 15:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    if (queryLocalInterface4 instanceof zzbxk) {
                        zzbxkVar = (zzbxk) queryLocalInterface4;
                    } else {
                        zzbxkVar = new zzbcb(readStrongBinder4, "com.google.android.gms.ads.internal.purchase.client.IPlayStorePurchaseListener");
                    }
                }
                String readString = parcel.readString();
                zzbcd.f(parcel);
                zzq(zzbxkVar, readString);
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzr = zzr();
                parcel2.writeNoException();
                parcel2.writeString(zzr);
                return true;
            case 19:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    if (queryLocalInterface5 instanceof zzbhf) {
                        zzbhfVar = (zzbhf) queryLocalInterface5;
                    } else {
                        zzbhfVar = new zzbcb(readStrongBinder5, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
                    }
                }
                zzbcd.f(parcel);
                zzx(zzbhfVar);
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    if (queryLocalInterface6 instanceof zzbh) {
                        zzbhVar = (zzbh) queryLocalInterface6;
                    } else {
                        zzbhVar = new zzbcb(readStrongBinder6, "com.google.android.gms.ads.internal.client.IAdClickListener");
                    }
                }
                zzbcd.f(parcel);
                zzy(zzbhVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface7 instanceof zzcs) {
                        zzcsVar = (zzcs) queryLocalInterface7;
                    } else {
                        zzcsVar = new zzcs(readStrongBinder7);
                    }
                }
                zzbcd.f(parcel);
                zzY(zzcsVar);
                parcel2.writeNoException();
                return true;
            case 22:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzz(a2);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                boolean zzB = zzB();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(zzB ? 1 : 0);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    if (queryLocalInterface8 instanceof zzbzs) {
                        zzbzsVar = (zzbzs) queryLocalInterface8;
                    } else {
                        zzbzsVar = new zzbzq(readStrongBinder8);
                    }
                }
                zzbcd.f(parcel);
                zzC(zzbzsVar);
                parcel2.writeNoException();
                return true;
            case 25:
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzD(readString2);
                parcel2.writeNoException();
                return true;
            case 26:
                zzed zzF = zzF();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzF);
                return true;
            case 29:
                zzga zzgaVar = (zzga) zzbcd.b(parcel, zzga.CREATOR);
                zzbcd.f(parcel);
                zzG(zzgaVar);
                parcel2.writeNoException();
                return true;
            case 30:
                zzeh zzehVar = (zzeh) zzbcd.b(parcel, zzeh.CREATOR);
                zzbcd.f(parcel);
                zzH(zzehVar);
                parcel2.writeNoException();
                return true;
            case 31:
                String zzu = zzu();
                parcel2.writeNoException();
                parcel2.writeString(zzu);
                return true;
            case 32:
                zzco zzv = zzv();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzv);
                return true;
            case 33:
                zzbk zzw = zzw();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzw);
                return true;
            case 34:
                boolean a3 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzK(a3);
                parcel2.writeNoException();
                return true;
            case 35:
                String zzs = zzs();
                parcel2.writeNoException();
                parcel2.writeString(zzs);
                return true;
            case 36:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    if (queryLocalInterface9 instanceof zzcb) {
                        zzcbVar = (zzcb) queryLocalInterface9;
                    } else {
                        zzcbVar = new zzbz(readStrongBinder9);
                    }
                }
                zzbcd.f(parcel);
                zzj(zzcbVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzk = zzk();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzk);
                return true;
            case 38:
                String readString3 = parcel.readString();
                zzbcd.f(parcel);
                zzE(readString3);
                parcel2.writeNoException();
                return true;
            case 39:
                zzx zzxVar = (zzx) zzbcd.b(parcel, zzx.CREATOR);
                zzbcd.f(parcel);
                zzI(zzxVar);
                parcel2.writeNoException();
                return true;
            case 40:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    if (queryLocalInterface10 instanceof zzbeg) {
                        zzbegVar = (zzbeg) queryLocalInterface10;
                    } else {
                        zzbegVar = new zzbcb(readStrongBinder10, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
                    }
                }
                zzbcd.f(parcel);
                zzJ(zzbegVar);
                parcel2.writeNoException();
                return true;
            case 41:
                zzea zzt = zzt();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzt);
                return true;
            case 42:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    if (queryLocalInterface11 instanceof zzdt) {
                        zzdtVar = (zzdt) queryLocalInterface11;
                    } else {
                        zzdtVar = new zzdr(readStrongBinder11);
                    }
                }
                zzbcd.f(parcel);
                zzP(zzdtVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzm zzmVar2 = (zzm) zzbcd.b(parcel, zzm.CREATOR);
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    if (queryLocalInterface12 instanceof zzbn) {
                        zzbnVar = (zzbn) queryLocalInterface12;
                    } else {
                        zzbnVar = new zzbcb(readStrongBinder12, "com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    }
                }
                zzbcd.f(parcel);
                zzQ(zzmVar2, zzbnVar);
                parcel2.writeNoException();
                return true;
            case 44:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzR(I1);
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    if (queryLocalInterface13 instanceof zzcv) {
                        zzcvVar = (zzcv) queryLocalInterface13;
                    } else {
                        zzcvVar = new zzbcb(readStrongBinder13, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    }
                }
                zzbcd.f(parcel);
                zzS(zzcvVar);
                parcel2.writeNoException();
                return true;
            case 46:
                boolean zzA = zzA();
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzbcd.f4538a;
                parcel2.writeInt(zzA ? 1 : 0);
                return true;
            case 47:
                long zzU = zzU();
                parcel2.writeNoException();
                parcel2.writeLong(zzU);
                return true;
            case 48:
                long readLong = parcel.readLong();
                zzbcd.f(parcel);
                zzT(readLong);
                parcel2.writeNoException();
                return true;
        }
    }
}
