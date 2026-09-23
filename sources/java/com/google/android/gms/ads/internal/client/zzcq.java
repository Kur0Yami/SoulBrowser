package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbkc;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbon;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzccj;

/* loaded from: classes.dex */
public abstract class zzcq extends zzbcc implements zzcr {
    public zzcq() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbon zzbonVar = null;
        switch (i) {
            case 1:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzr zzrVar = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                String readString = parcel.readString();
                zzbsz c5 = zzbsy.c5(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                zzbcd.f(parcel);
                zzbx zzb = zzb(I1, zzrVar, readString, c5, readInt);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzb);
                return true;
            case 2:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzr zzrVar2 = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                String readString2 = parcel.readString();
                zzbsz c52 = zzbsy.c5(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                zzbcd.f(parcel);
                zzbx zzc = zzc(I12, zzrVar2, readString2, c52, readInt2);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzc);
                return true;
            case 3:
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString3 = parcel.readString();
                zzbsz c53 = zzbsy.c5(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                zzbcd.f(parcel);
                zzbt zzd = zzd(I13, readString3, c53, readInt3);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzd);
                return true;
            case 4:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                parcel2.writeNoException();
                parcel2.writeStrongBinder(null);
                return true;
            case 5:
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzbkc zze = zze(I14, I15);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zze);
                return true;
            case 6:
                IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c54 = zzbsy.c5(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                zzbcd.f(parcel);
                zzbzp zzf = zzf(I16, c54, readInt4);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzf);
                return true;
            case 7:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                parcel2.writeNoException();
                parcel2.writeStrongBinder(null);
                return true;
            case 8:
                IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzbwy zzg = zzg(I17);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzg);
                return true;
            case 9:
                IObjectWrapper I18 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt5 = parcel.readInt();
                zzbcd.f(parcel);
                zzdb zzi = zzi(I18, readInt5);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzi);
                return true;
            case 10:
                IObjectWrapper I19 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzr zzrVar3 = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                String readString4 = parcel.readString();
                int readInt6 = parcel.readInt();
                zzbcd.f(parcel);
                zzbx zzj = zzj(I19, zzrVar3, readString4, readInt6);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzj);
                return true;
            case 11:
                IObjectWrapper I110 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I111 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I112 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzbki zzk = zzk(I110, I111, I112);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzk);
                return true;
            case 12:
                IObjectWrapper I113 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString5 = parcel.readString();
                zzbsz c55 = zzbsy.c5(parcel.readStrongBinder());
                int readInt7 = parcel.readInt();
                zzbcd.f(parcel);
                zzcaf zzl = zzl(I113, readString5, c55, readInt7);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzl);
                return true;
            case 13:
                IObjectWrapper I114 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzr zzrVar4 = (zzr) zzbcd.b(parcel, zzr.CREATOR);
                String readString6 = parcel.readString();
                zzbsz c56 = zzbsy.c5(parcel.readStrongBinder());
                int readInt8 = parcel.readInt();
                zzbcd.f(parcel);
                zzbx zzm = zzm(I114, zzrVar4, readString6, c56, readInt8);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzm);
                return true;
            case 14:
                IObjectWrapper I115 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c57 = zzbsy.c5(parcel.readStrongBinder());
                int readInt9 = parcel.readInt();
                zzbcd.f(parcel);
                zzccj zzn = zzn(I115, c57, readInt9);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzn);
                return true;
            case 15:
                IObjectWrapper I116 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c58 = zzbsy.c5(parcel.readStrongBinder());
                int readInt10 = parcel.readInt();
                zzbcd.f(parcel);
                zzbwr zzo = zzo(I116, c58, readInt10);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzo);
                return true;
            case 16:
                IObjectWrapper I117 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c59 = zzbsy.c5(parcel.readStrongBinder());
                int readInt11 = parcel.readInt();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
                    if (queryLocalInterface instanceof zzbon) {
                        zzbonVar = (zzbon) queryLocalInterface;
                    } else {
                        zzbonVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.h5.client.IH5AdsEventListener");
                    }
                }
                zzbcd.f(parcel);
                zzboq zzp = zzp(I117, c59, readInt11, zzbonVar);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzp);
                return true;
            case 17:
                IObjectWrapper I118 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c510 = zzbsy.c5(parcel.readStrongBinder());
                int readInt12 = parcel.readInt();
                zzbcd.f(parcel);
                zzdw zzq = zzq(I118, c510, readInt12);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzq);
                return true;
            case 18:
                IObjectWrapper I119 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbsz c511 = zzbsy.c5(parcel.readStrongBinder());
                int readInt13 = parcel.readInt();
                zzbcd.f(parcel);
                zzck zzh = zzh(I119, c511, readInt13);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzh);
                return true;
            default:
                return false;
        }
    }
}
