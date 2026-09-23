package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzffa implements zzffj {

    /* renamed from: a, reason: collision with root package name */
    public final zzfez f7292a;
    public zzczr b;

    public zzffa(zzfez zzfezVar) {
        this.f7292a = zzfezVar;
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* bridge */ /* synthetic */ ListenableFuture a(zzffk zzffkVar, zzffi zzffiVar) {
        return b(zzffkVar, zzffiVar, null);
    }

    public final synchronized ListenableFuture b(zzffk zzffkVar, zzffi zzffiVar, zzczr zzczrVar) {
        zzbza zzbzaVar;
        this.b = zzczrVar;
        if (zzczrVar != null && (zzbzaVar = zzffkVar.f7299a) != null) {
            zzcwo zza = zzczrVar.zza();
            return zza.c(zza.a(zzgym.a(zzbzaVar)));
        }
        return this.f7292a.b(zzffkVar, zzffiVar, zzczrVar);
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final Object zzd() {
        zzczr zzczrVar;
        synchronized (this) {
            zzczrVar = this.b;
        }
        return zzczrVar;
    }
}
