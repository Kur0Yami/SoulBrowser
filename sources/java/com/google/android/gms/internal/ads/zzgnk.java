package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgnk extends zzgns {

    /* renamed from: a, reason: collision with root package name */
    public String f8156a;
    public String b;

    @Override // com.google.android.gms.internal.ads.zzgns
    public final zzgns a(String str) {
        this.f8156a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgns
    public final zzgns b(String str) {
        this.b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgns
    public final zzgnt c() {
        return new zzgnl(this.f8156a, this.b);
    }
}
