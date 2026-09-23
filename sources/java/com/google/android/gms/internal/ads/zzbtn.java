package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzbtn extends zzbcc implements zzbto {
    public zzbtn() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 2:
                String zze = zze();
                parcel2.writeNoException();
                parcel2.writeString(zze);
                return true;
            case 3:
                List zzf = zzf();
                parcel2.writeNoException();
                parcel2.writeList(zzf);
                return true;
            case 4:
                String zzg = zzg();
                parcel2.writeNoException();
                parcel2.writeString(zzg);
                return true;
            case 5:
                zzbjy zzh = zzh();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzh);
                return true;
            case 6:
                String zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeString(zzi);
                return true;
            case 7:
                String zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 8:
                double zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeDouble(zzk);
                return true;
            case 9:
                String zzl = zzl();
                parcel2.writeNoException();
                parcel2.writeString(zzl);
                return true;
            case 10:
                String zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeString(zzm);
                return true;
            case 11:
                com.google.android.gms.ads.internal.client.zzed zzn = zzn();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzn);
                return true;
            case 12:
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeStrongBinder(null);
                return true;
            case 13:
                IObjectWrapper zzp = zzp();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzp);
                return true;
            case 14:
                IObjectWrapper zzq = zzq();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzq);
                return true;
            case 15:
                IObjectWrapper zzr = zzr();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzr);
                return true;
            case 16:
                Bundle zzs = zzs();
                parcel2.writeNoException();
                zzbcd.d(parcel2, zzs);
                return true;
            case 17:
                boolean zzt = zzt();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(zzt ? 1 : 0);
                return true;
            case 18:
                boolean zzu = zzu();
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzbcd.f4538a;
                parcel2.writeInt(zzu ? 1 : 0);
                return true;
            case 19:
                zzv();
                parcel2.writeNoException();
                return true;
            case 20:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                t(I1);
                parcel2.writeNoException();
                return true;
            case 21:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                t0(I12, I13, I14);
                parcel2.writeNoException();
                return true;
            case 22:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                q1(I15);
                parcel2.writeNoException();
                return true;
            case ConnectionResult.API_DISABLED /* 23 */:
                float zzz = zzz();
                parcel2.writeNoException();
                parcel2.writeFloat(zzz);
                return true;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                float zzA = zzA();
                parcel2.writeNoException();
                parcel2.writeFloat(zzA);
                return true;
            case 25:
                float zzB = zzB();
                parcel2.writeNoException();
                parcel2.writeFloat(zzB);
                return true;
            case 26:
                zzC();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
