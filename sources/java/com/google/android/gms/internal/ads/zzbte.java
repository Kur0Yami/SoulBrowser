package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public abstract class zzbte extends zzbcc implements zzbtf {
    public zzbte() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzbtf c5(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if (queryLocalInterface instanceof zzbtf) {
            return (zzbtf) queryLocalInterface;
        }
        return new zzbtd(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzcac zzcaaVar;
        switch (i) {
            case 1:
                zze();
                break;
            case 2:
                zzf();
                break;
            case 3:
                int readInt = parcel.readInt();
                zzbcd.f(parcel);
                p(readInt);
                break;
            case 4:
                zzh();
                break;
            case 5:
                zzi();
                break;
            case 6:
                zzj();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                }
                zzbcd.f(parcel);
                break;
            case 8:
                zzk();
                break;
            case 9:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                k4(readString, readString2);
                break;
            case 10:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                }
                parcel.readString();
                zzbcd.f(parcel);
                break;
            case 11:
                A();
                break;
            case 12:
                parcel.readString();
                zzbcd.f(parcel);
                break;
            case 13:
                zzo();
                break;
            case 14:
                zzbzy zzbzyVar = (zzbzy) zzbcd.b(parcel, zzbzy.CREATOR);
                zzbcd.f(parcel);
                v1(zzbzyVar);
                break;
            case 15:
                zzq();
                break;
            case 16:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzcaaVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    if (queryLocalInterface instanceof zzcac) {
                        zzcaaVar = (zzcac) queryLocalInterface;
                    } else {
                        zzcaaVar = new zzcaa(readStrongBinder3);
                    }
                }
                zzbcd.f(parcel);
                t4(zzcaaVar);
                break;
            case 17:
                int readInt2 = parcel.readInt();
                zzbcd.f(parcel);
                zzs(readInt2);
                break;
            case 18:
                J2();
                break;
            case 19:
                zzbcd.f(parcel);
                break;
            case 20:
                p1();
                break;
            case 21:
                String readString3 = parcel.readString();
                zzbcd.f(parcel);
                zzv(readString3);
                break;
            case 22:
                int readInt3 = parcel.readInt();
                String readString4 = parcel.readString();
                zzbcd.f(parcel);
                U4(readInt3, readString4);
                break;
            case ConnectionResult.API_DISABLED /* 23 */:
                com.google.android.gms.ads.internal.client.zze zzeVar = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                Q(zzeVar);
                break;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                com.google.android.gms.ads.internal.client.zze zzeVar2 = (com.google.android.gms.ads.internal.client.zze) zzbcd.b(parcel, com.google.android.gms.ads.internal.client.zze.CREATOR);
                zzbcd.f(parcel);
                y0(zzeVar2);
                break;
            case 25:
                zzz();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
