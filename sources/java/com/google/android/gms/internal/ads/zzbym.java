package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public abstract class zzbym extends zzbcc implements zzbyn {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v23, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbyr zzbyrVar = null;
        zzbys zzbysVar = null;
        zzbyr zzbyrVar2 = null;
        zzbyr zzbyrVar3 = null;
        zzbyr zzbyrVar4 = null;
        switch (i) {
            case 1:
                zzbcd.f(parcel);
                parcel2.writeNoException();
                parcel2.writeInt(0);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                }
                zzbcd.f(parcel);
                parcel2.writeNoException();
                return true;
            case 3:
            default:
                return false;
            case 4:
                zzbza zzbzaVar = (zzbza) zzbcd.b(parcel, zzbza.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface instanceof zzbyr) {
                        zzbyrVar = (zzbyr) queryLocalInterface;
                    } else {
                        zzbyrVar = new zzbyp(readStrongBinder2);
                    }
                }
                zzbcd.f(parcel);
                ((zzefw) this).J1(zzbzaVar, zzbyrVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbza zzbzaVar2 = (zzbza) zzbcd.b(parcel, zzbza.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface2 instanceof zzbyr) {
                        zzbyrVar4 = (zzbyr) queryLocalInterface2;
                    } else {
                        zzbyrVar4 = new zzbyp(readStrongBinder3);
                    }
                }
                zzbcd.f(parcel);
                ((zzefw) this).M3(zzbzaVar2, zzbyrVar4);
                parcel2.writeNoException();
                return true;
            case 6:
                zzbza zzbzaVar3 = (zzbza) zzbcd.b(parcel, zzbza.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface3 instanceof zzbyr) {
                        zzbyrVar3 = (zzbyr) queryLocalInterface3;
                    } else {
                        zzbyrVar3 = new zzbyp(readStrongBinder4);
                    }
                }
                zzbcd.f(parcel);
                ((zzefw) this).L2(zzbzaVar3, zzbyrVar3);
                parcel2.writeNoException();
                return true;
            case 7:
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface4 instanceof zzbyr) {
                        zzbyrVar2 = (zzbyr) queryLocalInterface4;
                    } else {
                        zzbyrVar2 = new zzbyp(readStrongBinder5);
                    }
                }
                zzbcd.f(parcel);
                ((zzefw) this).a5(readString, zzbyrVar2);
                parcel2.writeNoException();
                return true;
            case 8:
                zzbyj zzbyjVar = (zzbyj) zzbcd.b(parcel, zzbyj.CREATOR);
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    if (queryLocalInterface5 instanceof zzbys) {
                        zzbysVar = (zzbys) queryLocalInterface5;
                    } else {
                        zzbysVar = new zzbcb(readStrongBinder6, "com.google.android.gms.ads.internal.request.ITrustlessTokenListener");
                    }
                }
                zzbcd.f(parcel);
                zzefw zzefwVar = (zzefw) this;
                if (!((Boolean) zzbiz.f4735a.c()).booleanValue()) {
                    try {
                        Parcel I1 = zzbysVar.I1();
                        I1.writeString(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                        zzbcd.c(I1, zzbyjVar);
                        zzbysVar.r2(1, I1);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("Service can't call client", e);
                    }
                } else {
                    zzefwVar.h.getClass();
                    String str = zzbyjVar.f4972c;
                    ListenableFuture listenableFuture = zzgyq.f;
                    zzeff zzeffVar = new zzeff(zzefwVar, zzbysVar, zzbyjVar);
                    zzgyw zzgywVar = zzcdo.g;
                    ((zzgyq) listenableFuture).k(new zzgyk(listenableFuture, zzeffVar), zzgywVar);
                }
                parcel2.writeNoException();
                return true;
            case 9:
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                ((zzefw) this).zzi(readString2);
                parcel2.writeNoException();
                return true;
        }
    }
}
