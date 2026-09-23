package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzbhb extends zzbcc implements zzbhc {
    @Override // com.google.android.gms.internal.ads.zzbcc
    public final boolean b5(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return false;
                        }
                        ((zzbha) this).f4673c.zzc();
                        parcel2.writeNoException();
                        return true;
                    }
                    ((zzbha) this).f4673c.zzb();
                    parcel2.writeNoException();
                    return true;
                }
                IObjectWrapper g = a.g(parcel, parcel);
                zzbha zzbhaVar = (zzbha) this;
                if (g != null) {
                    zzbhaVar.f4673c.zza((View) ObjectWrapper.f2(g));
                }
                parcel2.writeNoException();
                return true;
            }
            parcel2.writeNoException();
            parcel2.writeString(((zzbha) this).g);
            return true;
        }
        parcel2.writeNoException();
        parcel2.writeString(((zzbha) this).f);
        return true;
    }
}
