package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.util.HashMap;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class zzvo extends zzvf {
    public final HashMap h = new HashMap();
    public Handler i;
    public zzhz j;

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void l() {
        for (zzvn zzvnVar : this.h.values()) {
            zzvnVar.f9324a.h(zzvnVar.b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public void m(zzhz zzhzVar) {
        this.j = zzhzVar;
        this.i = zzfj.n();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void n() {
        for (zzvn zzvnVar : this.h.values()) {
            zzvnVar.f9324a.g(zzvnVar.b);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public void o() {
        HashMap hashMap = this.h;
        for (zzvn zzvnVar : hashMap.values()) {
            zzwi zzwiVar = zzvnVar.f9324a;
            zzwiVar.k(zzvnVar.b);
            zzvm zzvmVar = zzvnVar.f9325c;
            zzwiVar.e(zzvmVar);
            zzwiVar.c(zzvmVar);
        }
        hashMap.clear();
    }

    public abstract void q(Object obj, zzvf zzvfVar, zzbf zzbfVar);

    public final void s(final Integer num, zzwi zzwiVar) {
        HashMap hashMap = this.h;
        zzgqa.a(!hashMap.containsKey(num));
        zzwh zzwhVar = new zzwh() { // from class: com.google.android.gms.internal.ads.zzvl
            @Override // com.google.android.gms.internal.ads.zzwh
            public final /* synthetic */ void a(zzvf zzvfVar, zzbf zzbfVar) {
                zzvo.this.q(num, zzvfVar, zzbfVar);
            }
        };
        zzvm zzvmVar = new zzvm(this, num);
        hashMap.put(num, new zzvn(zzwiVar, zzwhVar, zzvmVar));
        Handler handler = this.i;
        handler.getClass();
        zzwiVar.b(handler, zzvmVar);
        Handler handler2 = this.i;
        handler2.getClass();
        zzwiVar.a(handler2, zzvmVar);
        zzhz zzhzVar = this.j;
        zzpn zzpnVar = this.g;
        zzpnVar.getClass();
        zzwiVar.f(zzwhVar, zzhzVar, zzpnVar);
        if (this.b.isEmpty()) {
            zzwiVar.g(zzwhVar);
        }
    }

    public zzwg u(Object obj, zzwg zzwgVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public void zzt() {
        Iterator it = this.h.values().iterator();
        while (it.hasNext()) {
            ((zzvn) it.next()).f9324a.zzt();
        }
    }

    public void t(Object obj) {
    }

    public void v(long j, Object obj) {
    }
}
