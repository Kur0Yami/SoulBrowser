package com.google.android.gms.internal.ads;

import android.provider.Settings;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class zzbaf extends zzbbh {
    public zzbaf(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "Ps5Xy95qN5Bq7sgqC6/M4zZXLDS2M1Isx7H/g2/CV37zoy2ILxNb7iAARKvnhAcR", "UDDHIUrqun7cz3t6d4j2iVVfWcHKtBQnSOoDChOFM5Y=", zzavsVar, i, 49);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.k();
        ((zzawp) zzavsVar.f).t0(3);
        try {
            int i = 1;
            if (true == ((Boolean) this.e.invoke(null, this.f4531a.f4510a)).booleanValue()) {
                i = 2;
            }
            zzavsVar.k();
            ((zzawp) zzavsVar.f).t0(i);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Settings.SettingNotFoundException) {
            } else {
                throw e;
            }
        }
    }
}
