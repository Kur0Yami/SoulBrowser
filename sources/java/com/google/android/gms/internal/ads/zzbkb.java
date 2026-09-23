package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbkb extends zzbcc implements zzbkc {
    public zzbkb() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    public static zzbkc zzdF(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
        if (queryLocalInterface instanceof zzbkc) {
            return (zzbkc) queryLocalInterface;
        }
        return new zzbka(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzbjv zzbjtVar;
        switch (i) {
            case 1:
                String readString = parcel.readString();
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzb(readString, I1);
                parcel2.writeNoException();
                return true;
            case 2:
                String readString2 = parcel.readString();
                zzbcd.f(parcel);
                IObjectWrapper zzc = zzc(readString2);
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzc);
                return true;
            case 3:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzd(I12);
                parcel2.writeNoException();
                return true;
            case 4:
                zze();
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readInt();
                zzbcd.f(parcel);
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzg(I13);
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzdC(I14);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbjtVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
                    if (queryLocalInterface instanceof zzbjv) {
                        zzbjtVar = (zzbjv) queryLocalInterface;
                    } else {
                        zzbjtVar = new zzbjt(readStrongBinder);
                    }
                }
                zzbcd.f(parcel);
                zzdD(zzbjtVar);
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzdB(I15);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
