package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzept implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzepu f6799a;

    public zzept(zzepu zzepuVar) {
        this.f6799a = zzepuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void a(zzcvk zzcvkVar) {
        zzcze zzczeVar;
        zzepu zzepuVar = this.f6799a;
        zzctc zzctcVar = (zzctc) zzcvkVar;
        synchronized (zzepuVar) {
            try {
                zzctc zzctcVar2 = zzepuVar.m;
                if (zzctcVar2 != null) {
                    zzcze zzczeVar2 = zzctcVar.j;
                    if (zzczeVar2 != null && (zzczeVar = zzctcVar2.j) != null) {
                        zzczeVar2.a(zzczeVar.f5617a.get());
                    }
                    zzdbj zzdbjVar = zzepuVar.m.f5507c;
                    zzdbjVar.getClass();
                    zzdbjVar.s0(new zzdbh(null));
                }
                zzepuVar.m = zzctcVar;
                zzctcVar.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        zzepu zzepuVar = this.f6799a;
        synchronized (zzepuVar) {
            zzepuVar.m = null;
        }
    }
}
