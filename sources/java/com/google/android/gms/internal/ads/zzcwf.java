package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzcwf implements com.google.android.gms.ads.internal.overlay.zzr {

    /* renamed from: c, reason: collision with root package name */
    public final zzdbr f5530c;
    public final AtomicBoolean f = new AtomicBoolean(false);
    public final AtomicBoolean g = new AtomicBoolean(false);

    public zzcwf(zzdbr zzdbrVar) {
        this.f5530c = zzdbrVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
        AtomicBoolean atomicBoolean = this.g;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            this.f5530c.s0(zzdbq.f5680a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(int i) {
        this.f.set(true);
        AtomicBoolean atomicBoolean = this.g;
        if (!atomicBoolean.get()) {
            atomicBoolean.set(true);
            this.f5530c.s0(zzdbq.f5680a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
        this.f5530c.s0(zzdbm.f5675a);
    }
}
