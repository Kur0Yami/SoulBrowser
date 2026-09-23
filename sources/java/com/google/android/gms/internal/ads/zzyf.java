package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzyf extends zzvu {

    /* renamed from: c, reason: collision with root package name */
    public final zzak f9386c;

    public zzyf(zzbf zzbfVar, zzak zzakVar) {
        super(zzbfVar);
        this.f9386c = zzakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvu, com.google.android.gms.internal.ads.zzbf
    public final zzbe b(int i, zzbe zzbeVar, long j) {
        this.b.b(i, zzbeVar, j);
        zzak zzakVar = this.f9386c;
        zzbeVar.b = zzakVar;
        zzag zzagVar = zzakVar.b;
        return zzbeVar;
    }
}
