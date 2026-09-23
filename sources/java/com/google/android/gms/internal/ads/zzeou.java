package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Collections;

/* loaded from: classes.dex */
public final class zzeou implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final zzbhf f6769a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfmu f6770c;
    public final zzepd d;

    public zzeou(zzfmu zzfmuVar, zzgyw zzgywVar, zzbhf zzbhfVar, zzepd zzepdVar) {
        this.f6770c = zzfmuVar;
        this.b = zzgywVar;
        this.f6769a = zzbhfVar;
        this.d = zzepdVar;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzeoz, com.google.android.gms.ads.internal.zzg, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(zzfic zzficVar, zzfhr zzfhrVar) {
        zzcdt zzcdtVar = new zzcdt();
        ?? obj = new Object();
        zzeos zzeosVar = new zzeos(this, zzcdtVar, zzficVar, zzfhrVar, obj);
        synchronized (obj) {
            obj.f6776a = zzeosVar;
        }
        zzfhw zzfhwVar = zzfhrVar.s;
        final zzbha zzbhaVar = new zzbha(obj, zzfhwVar.b, zzfhwVar.f7374a);
        zzfmo zzfmoVar = zzfmo.CUSTOM_RENDER_SYN;
        zzfmu zzfmuVar = this.f6770c;
        Objects.requireNonNull(zzfmuVar);
        zzfma zzfmaVar = new zzfma() { // from class: com.google.android.gms.internal.ads.zzeot
            @Override // com.google.android.gms.internal.ads.zzfma
            public final /* synthetic */ void zza() {
                zzeou.this.f6769a.E2(zzbhaVar);
            }
        };
        zzfml zzfmlVar = new zzfml(zzfmuVar, zzfmoVar, null, zzfmm.d, Collections.EMPTY_LIST, this.b.v0(new zzfme(zzfmaVar)));
        zzfml a2 = zzfmlVar.f.a(zzfmlVar.d(), zzfmo.CUSTOM_RENDER_ACK);
        zzfmh zzfmhVar = new zzfmh(zzcdtVar);
        zzgyw zzgywVar = zzcdo.g;
        return new zzfml(a2.f, a2.f7479a, a2.b, a2.f7480c, a2.d, zzgym.h(a2.e, zzfmhVar, zzgywVar)).d();
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        zzfhw zzfhwVar;
        if (this.f6769a != null && (zzfhwVar = zzfhrVar.s) != null && zzfhwVar.f7374a != null) {
            return true;
        }
        return false;
    }
}
