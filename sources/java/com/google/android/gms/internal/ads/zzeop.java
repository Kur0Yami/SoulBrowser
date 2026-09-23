package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzeop implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6762a;
    public final zzcuh b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbhf f6763c;
    public final zzgyw d;
    public final zzfmu e;

    public zzeop(Context context, zzcuh zzcuhVar, zzfmu zzfmuVar, zzgyw zzgywVar, zzbhf zzbhfVar) {
        this.f6762a = context;
        this.b = zzcuhVar;
        this.e = zzfmuVar;
        this.d = zzgywVar;
        this.f6763c = zzbhfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(zzfic zzficVar, zzfhr zzfhrVar) {
        zzctj zzctjVar = new zzctj(new View(this.f6762a), null, zzeon.f6759a, (zzfhs) zzfhrVar.u.get(0));
        zzctd d = this.b.d(new zzcwa(zzficVar, zzfhrVar, null), zzctjVar);
        zzcnb zzcnbVar = (zzcnb) d;
        zzeoo zzeooVar = new zzeoo((zzdai) zzcnbVar.k.zzb(), (zzdbc) zzcnbVar.n.zzb(), (zzdit) zzcnbVar.p.zzb(), (zzdil) zzcnbVar.y.zzb(), (zzcrx) zzcnbVar.e.zzb());
        zzfhw zzfhwVar = zzfhrVar.s;
        final zzbha zzbhaVar = new zzbha(zzeooVar, zzfhwVar.b, zzfhwVar.f7374a);
        zzfmu zzfmuVar = this.e;
        Objects.requireNonNull(zzfmuVar);
        zzfme zzfmeVar = new zzfme(new zzfma() { // from class: com.google.android.gms.internal.ads.zzeom
            @Override // com.google.android.gms.internal.ads.zzfma
            public final /* synthetic */ void zza() {
                zzeop.this.f6763c.E2(zzbhaVar);
            }
        });
        zzfml zzfmlVar = new zzfml(zzfmuVar, zzfmo.CUSTOM_RENDER_SYN, null, zzfmm.d, Collections.EMPTY_LIST, this.d.v0(zzfmeVar));
        zzfml a2 = zzfmlVar.f.a(zzfmlVar.d(), zzfmo.CUSTOM_RENDER_ACK);
        zzfmh zzfmhVar = new zzfmh(zzgym.a(d.g()));
        zzgyw zzgywVar = zzcdo.g;
        return new zzfml(a2.f, a2.f7479a, a2.b, a2.f7480c, a2.d, zzgym.h(a2.e, zzfmhVar, zzgywVar)).d();
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        zzfhw zzfhwVar;
        if (this.f6763c != null && (zzfhwVar = zzfhrVar.s) != null && zzfhwVar.f7374a != null) {
            return true;
        }
        return false;
    }
}
