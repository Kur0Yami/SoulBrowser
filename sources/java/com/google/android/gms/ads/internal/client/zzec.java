package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcc;
import com.google.android.gms.internal.ads.zzbcd;

/* loaded from: classes.dex */
public abstract class zzec extends zzbcc implements zzed {
    public zzec() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    public static zzed zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        if (queryLocalInterface instanceof zzed) {
            return (zzed) queryLocalInterface;
        }
        return new zzeb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzeg zzeeVar;
        switch (i) {
            case 1:
                zze();
                parcel2.writeNoException();
                return true;
            case 2:
                zzf();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                zzg(a2);
                parcel2.writeNoException();
                return true;
            case 4:
                boolean zzh = zzh();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzh ? 1 : 0);
                return true;
            case 5:
                int zzi = zzi();
                parcel2.writeNoException();
                parcel2.writeInt(zzi);
                return true;
            case 6:
                float zzj = zzj();
                parcel2.writeNoException();
                parcel2.writeFloat(zzj);
                return true;
            case 7:
                float zzk = zzk();
                parcel2.writeNoException();
                parcel2.writeFloat(zzk);
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzeeVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    if (queryLocalInterface instanceof zzeg) {
                        zzeeVar = (zzeg) queryLocalInterface;
                    } else {
                        zzeeVar = new zzee(readStrongBinder);
                    }
                }
                zzbcd.f(parcel);
                zzl(zzeeVar);
                parcel2.writeNoException();
                return true;
            case 9:
                float zzm = zzm();
                parcel2.writeNoException();
                parcel2.writeFloat(zzm);
                return true;
            case 10:
                boolean zzn = zzn();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(zzn ? 1 : 0);
                return true;
            case 11:
                zzeg zzo = zzo();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzo);
                return true;
            case 12:
                boolean zzp = zzp();
                parcel2.writeNoException();
                ClassLoader classLoader3 = zzbcd.f4538a;
                parcel2.writeInt(zzp ? 1 : 0);
                return true;
            case 13:
                zzq();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
