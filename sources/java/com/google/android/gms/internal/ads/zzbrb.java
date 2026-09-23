package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbrb implements zzcdv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrq f4845a;
    public final /* synthetic */ zzfne b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbrr f4846c;

    public zzbrb(zzbrr zzbrrVar, zzbrq zzbrqVar, zzfne zzfneVar) {
        this.f4845a = zzbrqVar;
        this.b = zzfneVar;
        this.f4846c = zzbrrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdv
    public final void zza() {
        zzfnr zzfnrVar;
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Trying to acquire lock");
        zzbrr zzbrrVar = this.f4846c;
        synchronized (zzbrrVar.f4861a) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock acquired");
                zzbrrVar.i = 1;
                com.google.android.gms.ads.internal.util.zze.zza("Failed loading new engine. Marking new engine destroyable.");
                this.f4845a.f();
                if (((Boolean) zzbid.d.c()).booleanValue() && (zzfnrVar = zzbrrVar.e) != null) {
                    zzfne zzfneVar = this.b;
                    zzfneVar.zzk("Failed loading new engine");
                    zzfneVar.zzd(false);
                    zzfnrVar.b(zzfneVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (failure): Lock released");
    }
}
