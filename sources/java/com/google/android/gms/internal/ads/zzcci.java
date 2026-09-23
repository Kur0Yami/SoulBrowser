package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class zzcci extends zzbcc implements zzccj {
    public static zzccj zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
        if (queryLocalInterface instanceof zzccj) {
            return (zzccj) queryLocalInterface;
        }
        return new zzcch(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [com.google.android.gms.internal.ads.zzbcb] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        zzccg zzccgVar = null;
        switch (i) {
            case 1:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzccn zzccnVar = (zzccn) zzbcd.b(parcel, zzccn.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    if (queryLocalInterface instanceof zzccg) {
                        zzccgVar = (zzccg) queryLocalInterface;
                    } else {
                        zzccgVar = new zzbcb(readStrongBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
                    }
                }
                zzbcd.f(parcel);
                zze(I1, zzccnVar, zzccgVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzf(I12);
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                parcel2.writeNoException();
                parcel2.writeStrongBinder(null);
                return true;
            case 4:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                parcel2.writeNoException();
                parcel2.writeStrongBinder(null);
                return true;
            case 5:
                ArrayList createTypedArrayList = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbxn c5 = zzbxm.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzg(createTypedArrayList, I13, c5);
                parcel2.writeNoException();
                return true;
            case 6:
                ArrayList createTypedArrayList2 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbxn c52 = zzbxm.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzh(createTypedArrayList2, I14, c52);
                parcel2.writeNoException();
                return true;
            case 7:
                zzbxq zzbxqVar = (zzbxq) zzbcd.b(parcel, zzbxq.CREATOR);
                zzbcd.f(parcel);
                zzi(zzbxqVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzj(I15);
                parcel2.writeNoException();
                return true;
            case 9:
                ArrayList createTypedArrayList3 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbxn c53 = zzbxm.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzk(createTypedArrayList3, I16, c53);
                parcel2.writeNoException();
                return true;
            case 10:
                ArrayList createTypedArrayList4 = parcel.createTypedArrayList(Uri.CREATOR);
                IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbxn c54 = zzbxm.c5(parcel.readStrongBinder());
                zzbcd.f(parcel);
                zzl(createTypedArrayList4, I17, c54);
                parcel2.writeNoException();
                return true;
            case 11:
                IObjectWrapper zzm = zzm(IObjectWrapper.Stub.I1(parcel.readStrongBinder()), IObjectWrapper.Stub.I1(parcel.readStrongBinder()), parcel.readString(), a.g(parcel, parcel));
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzm);
                return true;
            default:
                return false;
        }
    }
}
