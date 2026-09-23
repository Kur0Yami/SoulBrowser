package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.IObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzaz extends com.google.android.gms.internal.cast.zzb implements zzba {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    parcel2.writeNoException();
                    parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                    return true;
                }
                String str = ((zzbh) this).f3590c.b;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            }
            boolean b = ((zzbh) this).f3590c.b();
            parcel2.writeNoException();
            int i2 = com.google.android.gms.internal.cast.zzc.f9645a;
            parcel2.writeInt(b ? 1 : 0);
            return true;
        }
        String readString = parcel.readString();
        com.google.android.gms.internal.cast.zzc.d(parcel);
        zzau zzauVar = ((zzbh) this).f3590c.a(readString).f3475a;
        IObjectWrapper iObjectWrapper = null;
        if (zzauVar != null) {
            try {
                iObjectWrapper = zzauVar.zzf();
            } catch (RemoteException e) {
                Session.b.a(e, "Unable to call %s on %s.", "getWrappedObject", "zzau");
            }
        }
        parcel2.writeNoException();
        com.google.android.gms.internal.cast.zzc.c(parcel2, iObjectWrapper);
        return true;
    }
}
