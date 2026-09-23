package com.google.android.gms.cast.framework;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbb extends com.google.android.gms.internal.cast.zzb implements zzbc {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        boolean z = false;
        switch (i) {
            case 1:
                ObjectWrapper objectWrapper = new ObjectWrapper(((zzbf) this).f3588c);
                parcel2.writeNoException();
                com.google.android.gms.internal.cast.zzc.c(parcel2, objectWrapper);
                return true;
            case 2:
                Bundle bundle = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.g(bundle);
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle2 = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.f(bundle2);
                parcel2.writeNoException();
                return true;
            case 4:
                int i2 = com.google.android.gms.internal.cast.zzc.f9645a;
                if (parcel.readInt() != 0) {
                    z = true;
                }
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.a(z);
                parcel2.writeNoException();
                return true;
            case 5:
                long b = ((zzbf) this).f3588c.b();
                parcel2.writeNoException();
                parcel2.writeLong(b);
                return true;
            case 6:
                parcel2.writeNoException();
                parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return true;
            case 7:
                Bundle bundle3 = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.e(bundle3);
                parcel2.writeNoException();
                return true;
            case 8:
                Bundle bundle4 = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.d(bundle4);
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle bundle5 = (Bundle) com.google.android.gms.internal.cast.zzc.a(parcel, Bundle.CREATOR);
                com.google.android.gms.internal.cast.zzc.d(parcel);
                ((zzbf) this).f3588c.h(bundle5);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
