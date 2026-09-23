package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbpt;
import com.google.android.gms.internal.ads.zzbsy;
import com.google.android.gms.internal.ads.zzbsz;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zzda extends zzbcc implements zzdb {
    public zzda() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzbcb] */
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbpt zzbptVar = null;
        zzdn zzdnVar = null;
        switch (i) {
            case 1:
                zze();
                parcel2.writeNoException();
                return true;
            case 2:
                float readFloat = parcel.readFloat();
                zzbcd.f(parcel);
                zzf(readFloat);
                parcel2.writeNoException();
                return true;
            case 3:
                String readString = parcel.readString();
                zzbcd.f(parcel);
                zzg(readString);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzh(a2);
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                zzi(I1, readString2);
                parcel2.writeNoException();
                return true;
            case 6:
                String readString3 = parcel.readString();
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzj(readString3, I12);
                parcel2.writeNoException();
                return true;
            case 7:
                float zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeFloat(zzk);
                return true;
            case 8:
                boolean zzl = zzl();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            case 9:
                String zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeString(zzm);
                return true;
            case 10:
                String readString4 = parcel.readString();
                zzbcd.f(parcel);
                zzn(readString4);
                parcel2.writeNoException();
                return true;
            case 11:
                zzbsz c5 = zzbsy.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzo(c5);
                parcel2.writeNoException();
                return true;
            case 12:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    if (queryLocalInterface instanceof zzbpt) {
                        zzbptVar = (zzbpt) queryLocalInterface;
                    } else {
                        zzbptVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
                    }
                }
                zzbcd.f(parcel);
                zzp(zzbptVar);
                parcel2.writeNoException();
                return true;
            case 13:
                List zzq = zzq();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzq);
                return true;
            case 14:
                zzfv zzfvVar = (zzfv) zzbcd.b(parcel, zzfv.CREATOR);
                zzbcd.f(parcel);
                zzr(zzfvVar);
                parcel2.writeNoException();
                return true;
            case 15:
                zzs();
                parcel2.writeNoException();
                return true;
            case 16:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    if (queryLocalInterface2 instanceof zzdn) {
                        zzdnVar = (zzdn) queryLocalInterface2;
                    } else {
                        zzdnVar = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.client.IOnAdInspectorClosedListener");
                    }
                }
                zzbcd.f(parcel);
                zzt(zzdnVar);
                parcel2.writeNoException();
                return true;
            case 17:
                boolean a3 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzu(a3);
                parcel2.writeNoException();
                return true;
            case 18:
                String readString5 = parcel.readString();
                zzbcd.f(parcel);
                zzv(readString5);
                parcel2.writeNoException();
                return true;
            case 19:
                zzw();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
