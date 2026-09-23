package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzgnq extends zzgos {

    /* renamed from: a, reason: collision with root package name */
    public String f8166a;
    public String b;

    @Override // com.google.android.gms.internal.ads.zzgos
    public final zzgos a(String str) {
        this.f8166a = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgos
    public final zzgos b(String str) {
        this.b = str;
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgos
    public final zzgot c() {
        return new zzgnr(this.f8166a, this.b);
    }
}
