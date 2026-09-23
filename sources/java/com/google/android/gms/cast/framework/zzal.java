package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzal extends com.google.android.gms.internal.cast.zzb implements zzam {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return false;
                }
                parcel2.writeNoException();
                parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return true;
            }
            int readInt = parcel.readInt();
            com.google.android.gms.internal.cast.zzc.d(parcel);
            ((zzz) this).f3602c.a(readInt);
            parcel2.writeNoException();
            return true;
        }
        ObjectWrapper objectWrapper = new ObjectWrapper(((zzz) this).f3602c);
        parcel2.writeNoException();
        com.google.android.gms.internal.cast.zzc.c(parcel2, objectWrapper);
        return true;
    }
}
