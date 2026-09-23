package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzcuz implements zzdby, zzbck, zzdfm {

    /* renamed from: c, reason: collision with root package name */
    public final zzfhr f5495c;
    public final zzdbc f;
    public final zzdch g;
    public final zzddd j;
    public final AtomicBoolean h = new AtomicBoolean();
    public final AtomicBoolean i = new AtomicBoolean();
    public final AtomicBoolean k = new AtomicBoolean();

    public zzcuz(zzfhr zzfhrVar, zzdbc zzdbcVar, zzdch zzdchVar, zzddd zzdddVar) {
        this.f5495c = zzfhrVar;
        this.f = zzdbcVar;
        this.g = zzdchVar;
        this.j = zzdddVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbck
    public final void Q(zzbcj zzbcjVar) {
        int i = this.f5495c.e;
        if (i == 1) {
            if (zzbcjVar.j) {
                a();
            }
        } else if (i == 4 && zzbcjVar.j && this.k.compareAndSet(false, true)) {
            this.j.zza();
        }
        if (zzbcjVar.j && this.i.compareAndSet(false, true)) {
            zzdch zzdchVar = this.g;
            synchronized (zzdchVar) {
                zzdchVar.s0(zzdcg.f5690a);
            }
        }
    }

    public final void a() {
        if (this.h.compareAndSet(false, true)) {
            this.f.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void f() {
        if (this.f5495c.e == 4) {
            a();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdfm
    public final void q() {
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final synchronized void zzg() {
        int i = this.f5495c.e;
        if (i != 1 && i != 4) {
            a();
        }
    }
}
