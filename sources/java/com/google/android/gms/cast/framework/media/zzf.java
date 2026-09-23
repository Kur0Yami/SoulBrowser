package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzf extends com.google.android.gms.internal.cast.zzb implements zzg {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        return false;
                    }
                    throw null;
                }
                throw null;
            }
            ObjectWrapper objectWrapper = new ObjectWrapper(null);
            parcel2.writeNoException();
            com.google.android.gms.internal.cast.zzc.c(parcel2, objectWrapper);
            return true;
        }
        parcel2.writeNoException();
        parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        return true;
    }
}
