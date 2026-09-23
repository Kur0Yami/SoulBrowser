package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbrp implements zzcdx {
    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        final zzbqm zzbqmVar = (zzbqm) obj;
        ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbro
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                com.google.android.gms.ads.internal.util.zze.zza("maybeDestroy > Destroying engine.");
                zzboe zzboeVar = zzbnm.o;
                zzbqm zzbqmVar2 = zzbqm.this;
                zzbqmVar2.U("/result", zzboeVar);
                zzbqmVar2.zzj();
            }
        });
    }
}
