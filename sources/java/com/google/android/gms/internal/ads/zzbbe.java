package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbbe extends zzbbh {
    public final View h;

    public zzbbe(zzazt zzaztVar, zzavs zzavsVar, int i, View view) {
        super(zzaztVar, "UGogIgDf9q+IGA3QKHqW/91b9ZzRTVJqtfmUoLBkD310fwrDg1hJZvDQk8/WK1MH", "sEqRe1gPhw/PwjhUj/qVAEUjKSVJDrXHsmrE44pcjTE=", zzavsVar, i, 57);
        this.h = view;
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [com.google.android.gms.internal.ads.zzazx, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        View view = this.h;
        if (view != null) {
            Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j4);
            Boolean bool2 = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pc);
            String str = (String) this.e.invoke(null, view, this.f4531a.f4510a.getResources().getDisplayMetrics(), bool, bool2);
            ?? obj = new Object();
            HashMap b = zzaxi.b(str);
            if (b != null) {
                obj.f4517a = (Long) b.get(0);
                obj.b = (Long) b.get(1);
                obj.f4518c = (Long) b.get(2);
                obj.d = (Long) b.get(3);
                obj.e = (Long) b.get(4);
            }
            zzawn D = zzawo.D();
            long longValue = obj.f4517a.longValue();
            D.k();
            ((zzawo) D.f).F(longValue);
            long longValue2 = obj.b.longValue();
            D.k();
            ((zzawo) D.f).G(longValue2);
            long longValue3 = obj.f4518c.longValue();
            D.k();
            ((zzawo) D.f).H(longValue3);
            if (bool2.booleanValue()) {
                long longValue4 = obj.e.longValue();
                D.k();
                ((zzawo) D.f).E(longValue4);
            }
            if (bool.booleanValue()) {
                long longValue5 = obj.d.longValue();
                D.k();
                ((zzawo) D.f).I(longValue5);
            }
            zzawo zzawoVar = (zzawo) D.m();
            zzavs zzavsVar = this.d;
            zzavsVar.k();
            ((zzawp) zzavsVar.f).Z(zzawoVar);
        }
    }
}
