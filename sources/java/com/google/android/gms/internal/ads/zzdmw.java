package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdmw implements zzbck {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5923c;
    public final /* synthetic */ zzdnh f;

    public zzdmw(zzdnh zzdnhVar, String str) {
        this.f5923c = str;
        this.f = zzdnhVar;
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    /* JADX WARN: Type inference failed for: r2v3, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n2)).booleanValue()) {
            synchronized (this) {
                try {
                    if (zzbcjVar.j) {
                        zzdnh zzdnhVar = this.f;
                        if (zzdnhVar.w != null) {
                            zzdnhVar.H.put(this.f5923c, Boolean.TRUE);
                            ?? r0 = zzdnhVar.w;
                            if (r0 == 0) {
                                return;
                            } else {
                                zzdnhVar.x(r0.f2(), zzdnhVar.w.zzj(), zzdnhVar.w.zzk(), true);
                            }
                        }
                    }
                    return;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (zzbcjVar.j) {
            zzdnh zzdnhVar2 = this.f;
            if (zzdnhVar2.w != null) {
                zzdnhVar2.H.put(this.f5923c, Boolean.TRUE);
                ?? r02 = zzdnhVar2.w;
                if (r02 != 0) {
                    zzdnhVar2.x(r02.f2(), r02.zzj(), r02.zzk(), true);
                }
            }
        }
    }
}
