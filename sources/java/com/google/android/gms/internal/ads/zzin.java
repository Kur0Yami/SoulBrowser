package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzin implements zzaah {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f9019a = new HashMap();
    public final zzpn b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzip f9020c;

    public zzin(zzip zzipVar, zzpn zzpnVar) {
        this.f9020c = zzipVar;
        this.b = zzpnVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void a(zzaag zzaagVar) {
        this.f9020c.f9024c.a(zzaagVar);
        while (zzaagVar != null) {
            c(zzaagVar.zzd());
            zzaagVar = zzaagVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void b(zzaaf zzaafVar) {
        this.f9020c.f9024c.b(zzaafVar);
        c(zzaafVar);
    }

    public final void c(zzaaf zzaafVar) {
        zzpn zzpnVar = (zzpn) this.f9019a.remove(zzaafVar);
        zzpnVar.getClass();
        zzio zzioVar = (zzio) this.f9020c.n.get(zzpnVar);
        if (zzioVar != null) {
            synchronized (zzioVar) {
                zzioVar.d--;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized zzaaf zza() {
        zzaaf zza;
        zzip zzipVar = this.f9020c;
        zzaan zzaanVar = zzipVar.f9024c;
        HashMap hashMap = this.f9019a;
        zza = zzaanVar.zza();
        zzpn zzpnVar = this.b;
        hashMap.put(zza, zzpnVar);
        zzio zzioVar = (zzio) zzipVar.n.get(zzpnVar);
        if (zzioVar != null) {
            zzioVar.a();
        }
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzaah
    public final synchronized void zzd() {
        this.f9020c.f9024c.zzd();
    }
}
