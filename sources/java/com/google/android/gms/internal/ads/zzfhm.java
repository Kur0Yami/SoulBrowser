package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfhm implements zzere {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzfho f7360a;

    public zzfhm(zzfho zzfhoVar) {
        this.f7360a = zzfhoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void a(zzcvk zzcvkVar) {
        zzfho zzfhoVar = this.f7360a;
        zzdte zzdteVar = (zzdte) zzcvkVar;
        synchronized (zzfhoVar) {
            try {
                zzfhoVar.h = zzdteVar;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.r4)).booleanValue()) {
                    zzdteVar.u.f7385a = zzfhoVar.g;
                }
                zzfhoVar.h.a();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzere
    public final void zza() {
        zzfho zzfhoVar = this.f7360a;
        synchronized (zzfhoVar) {
            zzfhoVar.h = null;
        }
    }
}
