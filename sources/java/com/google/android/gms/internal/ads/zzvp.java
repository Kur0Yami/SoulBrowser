package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
final class zzvp implements zzxy {

    /* renamed from: c, reason: collision with root package name */
    public final zzxy f9326c;
    public final zzgtd f;

    public zzvp(zzxy zzxyVar, List list) {
        this.f9326c = zzxyVar;
        this.f = zzgtd.v(list);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        return this.f9326c.a(zzliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        this.f9326c.i(j);
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        return this.f9326c.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        return this.f9326c.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        return this.f9326c.zzn();
    }
}
