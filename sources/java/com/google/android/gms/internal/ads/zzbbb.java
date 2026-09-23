package com.google.android.gms.internal.ads;

import android.view.View;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzbbb extends zzbbh {
    public final zzbaa h;
    public final long i;

    public zzbbb(zzazt zzaztVar, zzavs zzavsVar, int i, zzbaa zzbaaVar) {
        super(zzaztVar, "7i2iPrjrwVOXQymI9kbzBw+Saen0JiBKsL25H084g9vqkkZvrS3PC/gXCAaliMdd", "jjLuguQ1TtUBIYvLkWHGRHLEQB49t1f8VaYjdD5pX6Q=", zzavsVar, i, 53);
        View view;
        this.h = zzbaaVar;
        if (zzbaaVar != null) {
            if (zzbaaVar.p <= -2) {
                WeakReference weakReference = zzbaaVar.l;
                if (weakReference != null) {
                    view = (View) weakReference.get();
                } else {
                    view = null;
                }
                if (view == null) {
                    zzbaaVar.p = -3L;
                }
            }
            this.i = zzbaaVar.p;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        if (this.h != null) {
            long longValue = ((Long) this.e.invoke(null, Long.valueOf(this.i))).longValue();
            zzavs zzavsVar = this.d;
            zzavsVar.k();
            ((zzawp) zzavsVar.f).V(longValue);
        }
    }
}
