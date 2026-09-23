package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzeqw implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzeqx f6829a;

    public zzeqw(zzeqx zzeqxVar) {
        this.f6829a = zzeqxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final /* synthetic */ void a(zzcvk zzcvkVar) {
        zzeqx zzeqxVar = this.f6829a;
        zzdjs zzdjsVar = (zzdjs) zzcvkVar;
        synchronized (zzeqxVar) {
            zzeqxVar.n = zzdjsVar;
            zzdjsVar.a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        zzeqx zzeqxVar = this.f6829a;
        synchronized (zzeqxVar) {
            zzeqxVar.n = null;
        }
    }
}
