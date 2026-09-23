package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzfez implements zzffj {

    /* renamed from: a, reason: collision with root package name */
    public zzczr f7289a;

    @Override // com.google.android.gms.internal.ads.zzffj
    public final /* bridge */ /* synthetic */ ListenableFuture a(zzffk zzffkVar, zzffi zzffiVar) {
        return b(zzffkVar, zzffiVar, null);
    }

    public final synchronized ListenableFuture b(zzffk zzffkVar, zzffi zzffiVar, zzczr zzczrVar) {
        zzcwo zza;
        try {
            if (zzczrVar != null) {
                this.f7289a = zzczrVar;
            } else {
                this.f7289a = (zzczr) zzffiVar.a(zzffkVar.b).zzh();
            }
            zza = this.f7289a.zza();
        } catch (Throwable th) {
            throw th;
        }
        return zza.c(zza.b());
    }

    @Override // com.google.android.gms.internal.ads.zzffj
    public final Object zzd() {
        zzczr zzczrVar;
        synchronized (this) {
            zzczrVar = this.f7289a;
        }
        return zzczrVar;
    }
}
