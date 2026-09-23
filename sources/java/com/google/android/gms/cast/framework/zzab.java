package com.google.android.gms.cast.framework;

import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzab extends com.google.android.gms.internal.cast.zzb implements zzac {
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
                com.google.android.gms.internal.cast.zzax zzaxVar = (com.google.android.gms.internal.cast.zzax) this;
                Logger logger = com.google.android.gms.internal.cast.zzax.g;
                Log.i(logger.f3604a, logger.d("onAppEnteredBackground", new Object[0]));
                zzaxVar.f = 2;
                Iterator it = zzaxVar.f9624c.iterator();
                while (it.hasNext()) {
                    ((com.google.android.gms.internal.cast.zzaw) it.next()).zzb();
                }
                parcel2.writeNoException();
                return true;
            }
            com.google.android.gms.internal.cast.zzax zzaxVar2 = (com.google.android.gms.internal.cast.zzax) this;
            Logger logger2 = com.google.android.gms.internal.cast.zzax.g;
            Log.i(logger2.f3604a, logger2.d("onAppEnteredForeground", new Object[0]));
            zzaxVar2.f = 1;
            Iterator it2 = zzaxVar2.f9624c.iterator();
            while (it2.hasNext()) {
                ((com.google.android.gms.internal.cast.zzaw) it2.next()).zza();
            }
            parcel2.writeNoException();
            return true;
        }
        ObjectWrapper objectWrapper = new ObjectWrapper((com.google.android.gms.internal.cast.zzax) this);
        parcel2.writeNoException();
        com.google.android.gms.internal.cast.zzc.c(parcel2, objectWrapper);
        return true;
    }
}
