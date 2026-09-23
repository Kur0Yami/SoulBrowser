package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdks implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdjw f5866a;
    public final zzijp b;

    public zzdks(zzdjw zzdjwVar, zzijf zzijfVar) {
        this.f5866a = zzdjwVar;
        this.b = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Executor executor = (Executor) this.b.zzb();
        final zzcir zzcirVar = this.f5866a.b;
        return new zzdij(new zzdfh() { // from class: com.google.android.gms.internal.ads.zzdju
            @Override // com.google.android.gms.internal.ads.zzdfh
            public final /* synthetic */ void zza() {
                com.google.android.gms.ads.internal.overlay.zzm zzL;
                zzcir zzcirVar2 = zzcir.this;
                if (zzcirVar2 != null && (zzL = zzcirVar2.zzL()) != null) {
                    zzL.zzb();
                }
            }
        }, executor);
    }
}
