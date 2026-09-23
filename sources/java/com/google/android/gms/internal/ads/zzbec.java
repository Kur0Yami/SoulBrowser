package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbec extends zzbcc implements zzbed {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f4590c = 0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzbek] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r6v2, types: [com.google.android.gms.internal.ads.zzcsx] */
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        ?? zzbcbVar;
        switch (i) {
            case 2:
                parcel2.writeNoException();
                zzbcd.e(parcel2, ((zzcsx) this).g);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                }
                zzbcd.f(parcel);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbcbVar = 0;
                } else {
                    IInterface queryLocalInterface = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    if (queryLocalInterface instanceof zzbek) {
                        zzbcbVar = (zzbek) queryLocalInterface;
                    } else {
                        zzbcbVar = new zzbcb(readStrongBinder2, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    }
                }
                zzbcd.f(parcel);
                ((zzcsx) this).b4(I1, zzbcbVar);
                parcel2.writeNoException();
                return true;
            case 5:
                com.google.android.gms.ads.internal.client.zzea zzg = ((zzcsx) this).zzg();
                parcel2.writeNoException();
                zzbcd.e(parcel2, zzg);
                return true;
            case 6:
                boolean a2 = zzbcd.a(parcel);
                zzbcd.f(parcel);
                ((zzcsx) this).i = a2;
                parcel2.writeNoException();
                return true;
            case 7:
                com.google.android.gms.ads.internal.client.zzdt zzb = com.google.android.gms.ads.internal.client.zzds.zzb(parcel.readStrongBinder());
                zzbcd.f(parcel);
                ((zzcsx) this).G2(zzb);
                parcel2.writeNoException();
                return true;
            case 8:
                String zzj = ((zzcsx) this).zzj();
                parcel2.writeNoException();
                parcel2.writeString(zzj);
                return true;
            case 9:
                long zzk = ((zzcsx) this).zzk();
                parcel2.writeNoException();
                parcel2.writeLong(zzk);
                return true;
            case 10:
                long readLong = parcel.readLong();
                zzbcd.f(parcel);
                ((zzcsx) this).zzl(readLong);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
