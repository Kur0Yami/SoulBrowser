package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbra implements zzcdx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrq f4843a;
    public final /* synthetic */ zzfne b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbrr f4844c;

    public zzbra(zzbrr zzbrrVar, zzbrq zzbrqVar, zzfne zzfneVar) {
        this.f4843a = zzbrqVar;
        this.b = zzfneVar;
        this.f4844c = zzbrrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* synthetic */ void zza(Object obj) {
        zzfnr zzfnrVar;
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Trying to acquire lock");
        zzbrr zzbrrVar = this.f4844c;
        synchronized (zzbrrVar.f4861a) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock acquired");
                zzbrrVar.i = 0;
                zzbrq zzbrqVar = zzbrrVar.h;
                if (zzbrqVar != null && this.f4843a != zzbrqVar) {
                    com.google.android.gms.ads.internal.util.zze.zza("New JS engine is loaded, marking previous one as destroyable.");
                    zzbrrVar.h.f();
                }
                zzbrrVar.h = this.f4843a;
                if (((Boolean) zzbid.d.c()).booleanValue() && (zzfnrVar = zzbrrVar.e) != null) {
                    zzfne zzfneVar = this.b;
                    zzfneVar.zzd(true);
                    zzfnrVar.b(zzfneVar.zzm());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine (success): Lock released");
    }
}
