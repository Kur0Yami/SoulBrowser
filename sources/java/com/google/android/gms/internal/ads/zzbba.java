package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbba extends zzbbh {
    public zzbba(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "cOth2BAAthu6X8KDmzC58653OwqftcurhEiV9l+3uxMh7KBnOgbdhGM0zSnSPufi", "2EDSTVCwfkpT+1duJ+umEyNIZ3jEP0NWyK78oeLPLhI=", zzavsVar, i, 51);
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzazo, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            String str = (String) this.e.invoke(null, null);
            ?? obj = new Object();
            HashMap b = zzaxi.b(str);
            if (b != null) {
                obj.f4505a = (Long) b.get(0);
                obj.b = (Long) b.get(1);
            }
            long longValue = obj.f4505a.longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).T(longValue);
            long longValue2 = obj.b.longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).U(longValue2);
        }
    }
}
