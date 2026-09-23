package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzcni implements zzdyo {

    /* renamed from: a, reason: collision with root package name */
    public final zzcmv f5301a;
    public final zzcnl b;

    /* renamed from: c, reason: collision with root package name */
    public Long f5302c;
    public String d;

    public /* synthetic */ zzcni(zzcmv zzcmvVar, zzcnl zzcnlVar) {
        this.f5301a = zzcmvVar;
        this.b = zzcnlVar;
    }

    public final zzdyp a() {
        zzijo.b(Long.class, this.f5302c);
        zzijo.b(String.class, this.d);
        return new zzcnj(this.f5301a, this.b, this.f5302c, this.d);
    }

    public final /* bridge */ /* synthetic */ zzdyo b(String str) {
        str.getClass();
        this.d = str;
        return this;
    }

    public final /* bridge */ /* synthetic */ zzdyo c(long j) {
        this.f5302c = Long.valueOf(j);
        return this;
    }
}
