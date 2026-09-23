package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbju extends zzbcc implements zzbjv {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzblg zzbcbVar;
        switch (i) {
            case 2:
                float zze = ((zzdmu) this).zze();
                parcel2.writeNoException();
                parcel2.writeFloat(zze);
                return true;
            case 3:
                ((zzdmu) this).f = a.g(parcel, parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper zzg = ((zzdmu) this).zzg();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzg);
                return true;
            case 5:
                float zzh = ((zzdmu) this).zzh();
                parcel2.writeNoException();
                parcel2.writeFloat(zzh);
                return true;
            case 6:
                float zzi = ((zzdmu) this).zzi();
                parcel2.writeNoException();
                parcel2.writeFloat(zzi);
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzed U = ((zzdmu) this).f5921c.U();
                parcel2.writeNoException();
                zzbcd.e(parcel2, U);
                return true;
            case 8:
                boolean zzk = ((zzdmu) this).zzk();
                parcel2.writeNoException();
                ClassLoader classLoader = zzbcd.f4538a;
                parcel2.writeInt(zzk ? 1 : 0);
                return true;
            case 9:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbcbVar = 0;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    if (queryLocalInterface instanceof zzblg) {
                        zzbcbVar = (zzblg) queryLocalInterface;
                    } else {
                        zzbcbVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.formats.client.IOnMediaContentChangedListener");
                    }
                }
                zzbcd.f(parcel);
                zzdnm zzdnmVar = ((zzdmu) this).f5921c;
                if (zzdnmVar.U() instanceof zzcjx) {
                    zzcjx zzcjxVar = (zzcjx) zzdnmVar.U();
                    synchronized (zzcjxVar.f) {
                        zzcjxVar.r = zzbcbVar;
                    }
                }
                parcel2.writeNoException();
                return true;
            case 10:
                boolean zzl = ((zzdmu) this).zzl();
                parcel2.writeNoException();
                ClassLoader classLoader2 = zzbcd.f4538a;
                parcel2.writeInt(zzl ? 1 : 0);
                return true;
            default:
                return false;
        }
    }
}
