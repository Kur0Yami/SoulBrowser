package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbed;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzcaf;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzcj extends zzbcc implements zzck {
    public zzcj() {
        super("com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r3v2, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzce zzceVar = null;
        zzch zzchVar = null;
        switch (i) {
            case 1:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(zzft.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    if (queryLocalInterface instanceof zzce) {
                        zzceVar = (zzce) queryLocalInterface;
                    } else {
                        zzceVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.client.IAdPreloadCallback");
                    }
                }
                zzbcd.f(parcel);
                zze(createTypedArrayList, zzceVar);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString = parcel.readString();
                zzbcd.f(parcel);
                boolean zzf = zzf(readString);
                parcel2.writeNoException();
                parcel2.writeInt(zzf ? 1 : 0);
                return true;
            case 3:
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzcaf zzg = zzg(readString2);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzg);
                return true;
            case 4:
                String readString3 = parcel.readString();
                zzbcd.f(parcel);
                boolean zzh = zzh(readString3);
                parcel2.writeNoException();
                parcel2.writeInt(zzh ? 1 : 0);
                return true;
            case 5:
                String readString4 = parcel.readString();
                zzbcd.f(parcel);
                zzbed zzi = zzi(readString4);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzi);
                return true;
            case 6:
                String readString5 = parcel.readString();
                zzbcd.f(parcel);
                boolean zzj = zzj(readString5);
                parcel2.writeNoException();
                parcel2.writeInt(zzj ? 1 : 0);
                return true;
            case 7:
                String readString6 = parcel.readString();
                zzbcd.f(parcel);
                zzbx zzk = zzk(readString6);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzk);
                return true;
            case 8:
                zzbsy.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                parcel2.writeNoException();
                return true;
            case 9:
                String readString7 = parcel.readString();
                zzft zzftVar = (zzft) zzbcd.b(parcel, zzft.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2");
                    if (queryLocalInterface2 instanceof zzch) {
                        zzchVar = (zzch) queryLocalInterface2;
                    } else {
                        zzchVar = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.client.IAdPreloadCallbackV2");
                    }
                }
                zzbcd.f(parcel);
                boolean zzm = zzm(readString7, zzftVar, zzchVar);
                parcel2.writeNoException();
                parcel2.writeInt(zzm ? 1 : 0);
                return true;
            case 10:
                int readInt = parcel.readInt();
                String readString8 = parcel.readString();
                zzbcd.f(parcel);
                boolean zzn = zzn(readInt, readString8);
                parcel2.writeNoException();
                parcel2.writeInt(zzn ? 1 : 0);
                return true;
            case 11:
                String readString9 = parcel.readString();
                zzbcd.f(parcel);
                zzbx zzo = zzo(readString9);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzo);
                return true;
            case 12:
                String readString10 = parcel.readString();
                zzbcd.f(parcel);
                zzbed zzp = zzp(readString10);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzp);
                return true;
            case 13:
                String readString11 = parcel.readString();
                zzbcd.f(parcel);
                zzcaf zzq = zzq(readString11);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzq);
                return true;
            case 14:
                int readInt2 = parcel.readInt();
                String readString12 = parcel.readString();
                zzbcd.f(parcel);
                zzft zzr = zzr(readInt2, readString12);
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzr);
                return true;
            case 15:
                int readInt3 = parcel.readInt();
                zzbcd.f(parcel);
                Bundle zzs = zzs(readInt3);
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzs);
                return true;
            case 16:
                int readInt4 = parcel.readInt();
                String readString13 = parcel.readString();
                zzbcd.f(parcel);
                int zzt = zzt(readInt4, readString13);
                parcel2.writeNoException();
                parcel2.writeInt(zzt);
                return true;
            case 17:
                int readInt5 = parcel.readInt();
                String readString14 = parcel.readString();
                zzbcd.f(parcel);
                boolean zzu = zzu(readInt5, readString14);
                parcel2.writeNoException();
                parcel2.writeInt(zzu ? 1 : 0);
                return true;
            case 18:
                int readInt6 = parcel.readInt();
                zzbcd.f(parcel);
                zzv(readInt6);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
