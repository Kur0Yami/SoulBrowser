package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdmx implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdnh f5924a;

    public zzdmx(zzdnh zzdnhVar) {
        this.f5924a = zzdnhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzcdt zzcdtVar;
        zzdnh zzdnhVar = this.f5924a;
        zzdnhVar.m.M((zzcir) obj);
        zzdnm zzdnmVar = zzdnhVar.m;
        synchronized (zzdnmVar) {
            zzcdtVar = zzdnmVar.n;
        }
        zzejb g = zzdnhVar.g("Google", true);
        if (g != null && zzcdtVar != null) {
            zzcdtVar.a(g);
        } else if (zzcdtVar != null) {
            zzcdtVar.cancel(false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m6)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().g("omid native display exp", th);
        }
    }
}
