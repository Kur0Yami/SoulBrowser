package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbax extends zzbbh {
    public List h;
    public final Context i;

    public zzbax(zzazt zzaztVar, zzavs zzavsVar, int i, Context context) {
        super(zzaztVar, "JC98YOkW1OV00In88Kxh39aoA4/Lc5LugpNahl16Tw21h78xPzCO3AkqsFSMWF+O", "uHu4aeoXgHtmEAr/p8TbphROLjKobmRTgSnNeTPf/24=", zzavsVar, i, 31);
        this.h = null;
        this.i = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.k();
        ((zzawp) zzavsVar.f).E(-1L);
        zzavsVar.k();
        ((zzawp) zzavsVar.f).F(-1L);
        Context context = this.i;
        if (context == null) {
            context = this.f4531a.f4510a;
        }
        if (this.h == null) {
            this.h = (List) this.e.invoke(null, context);
        }
        List list = this.h;
        if (list != null && list.size() == 2) {
            synchronized (zzavsVar) {
                long longValue = ((Long) this.h.get(0)).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).E(longValue);
                long longValue2 = ((Long) this.h.get(1)).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).F(longValue2);
            }
        }
    }
}
