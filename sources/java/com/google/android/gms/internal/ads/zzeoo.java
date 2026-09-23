package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzeoo implements com.google.android.gms.ads.internal.zzg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdai f6760a;
    public final zzdbc b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdit f6761c;
    public final zzdil d;
    public final zzcrx e;
    public final AtomicBoolean f = new AtomicBoolean(false);

    public zzeoo(zzdai zzdaiVar, zzdbc zzdbcVar, zzdit zzditVar, zzdil zzdilVar, zzcrx zzcrxVar) {
        this.f6760a = zzdaiVar;
        this.b = zzdbcVar;
        this.f6761c = zzditVar;
        this.d = zzdilVar;
        this.e = zzcrxVar;
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final synchronized void zza(View view) {
        if (!this.f.compareAndSet(false, true)) {
            return;
        }
        this.e.n();
        this.d.t0(view);
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzb() {
        if (this.f.get()) {
            this.f6760a.onAdClicked();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzg
    public final void zzc() {
        if (this.f.get()) {
            this.b.zza();
            zzdit zzditVar = this.f6761c;
            synchronized (zzditVar) {
                zzditVar.s0(zzdis.f5821a);
            }
        }
    }
}
