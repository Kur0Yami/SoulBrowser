package com.google.android.gms.internal.consent_sdk;

import android.app.Application;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzah extends zza {
    public final zzah b = this;

    /* renamed from: c, reason: collision with root package name */
    public final zzti f9928c;
    public final zztg d;
    public final zztg e;
    public final zztk f;
    public final zztg g;
    public final zztg h;
    public final zzap i;
    public final zztg j;
    public final zztg k;

    /* JADX WARN: Type inference failed for: r10v5, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzth] */
    public zzah(Application application) {
        if (application != null) {
            zzti zztiVar = new zzti(application);
            this.f9928c = zztiVar;
            zztg a2 = zztg.a(new zzar(zztiVar));
            this.d = a2;
            zztg a3 = zztg.a(zzae.f9926a);
            this.e = a3;
            zzag zzagVar = new zzag(this);
            this.f = zzagVar;
            zztg a4 = zztg.a(new zzbr(zzagVar));
            this.g = a4;
            zzq zzqVar = new zzq(zztiVar, a2);
            zztg a5 = zztg.a(new Object());
            this.h = a5;
            zzap zzapVar = new zzap(a2, zztg.a(new zzm(zztiVar, zztg.a(new zzan(zztiVar)))), zztiVar);
            this.i = zzapVar;
            zztg a6 = zztg.a(new zzcs(a3, zztg.a(new zzcp(zztiVar)), zztiVar));
            this.j = a6;
            this.k = zztg.a(new zzk(a2, new zzx(zztiVar, a3, a2, a4, zzqVar, new zzac(a5, zzapVar, a2, a6), a5, a6), a4, a6));
            return;
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zza
    public final zzj b() {
        return (zzj) this.k.zzb();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zza
    public final zzbq c() {
        return (zzbq) this.g.zzb();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zza
    public final zzcr d() {
        return (zzcr) this.j.zzb();
    }
}
