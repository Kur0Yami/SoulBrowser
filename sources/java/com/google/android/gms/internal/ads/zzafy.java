package com.google.android.gms.internal.ads;

import androidx.annotation.RestrictTo;

@RestrictTo
/* loaded from: classes.dex */
public final class zzafy implements zzaer {

    /* renamed from: c, reason: collision with root package name */
    public final long f3991c;
    public final zzaer f;

    public zzafy(long j, zzaer zzaerVar) {
        this.f3991c = j;
        this.f = zzaerVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void e(zzafr zzafrVar) {
        this.f.e(new zzafx(this, zzafrVar, zzafrVar));
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final zzaga f(int i, int i2) {
        return this.f.f(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzaer
    public final void zzv() {
        this.f.zzv();
    }
}
