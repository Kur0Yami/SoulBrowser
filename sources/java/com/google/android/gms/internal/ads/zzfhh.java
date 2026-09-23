package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfhh implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfhi f7356a;

    public zzfhh(zzfhi zzfhiVar) {
        this.f7356a = zzfhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void a(zzcvk zzcvkVar) {
        zzfhi zzfhiVar = this.f7356a;
        zzdte zzdteVar = (zzdte) zzcvkVar;
        synchronized (zzfhiVar) {
            try {
                zzfhiVar.m = zzdteVar;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r4)).booleanValue()) {
                    zzdteVar.u.f7385a = zzfhiVar.h;
                }
                zzfhiVar.m.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        zzfhi zzfhiVar = this.f7356a;
        synchronized (zzfhiVar) {
            zzfhiVar.m = null;
        }
    }
}
