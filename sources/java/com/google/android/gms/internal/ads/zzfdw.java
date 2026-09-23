package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzfdw implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfdz f7256a;

    public zzfdw(zzfdz zzfdzVar) {
        this.f7256a = zzfdzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void a(zzcvk zzcvkVar) {
        zzcsw zzcswVar = (zzcsw) zzcvkVar;
        zzfdz zzfdzVar = this.f7256a;
        synchronized (zzfdzVar) {
            try {
                zzcsw zzcswVar2 = zzfdzVar.o;
                if (zzcswVar2 != null) {
                    zzcswVar2.d();
                }
                zzfdzVar.o = zzcswVar;
                zzcir zzcirVar = zzcswVar.l;
                if (zzcirVar != null) {
                    zzcirVar.X(zzfdzVar);
                }
                zzfdzVar.j.f(new zzcsx(zzcswVar, zzfdzVar, zzfdzVar.j, zzfdzVar.l));
                zzcswVar.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        zzfdz zzfdzVar = this.f7256a;
        synchronized (zzfdzVar) {
            zzfdzVar.o = null;
        }
    }
}
