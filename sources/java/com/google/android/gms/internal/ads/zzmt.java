package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* loaded from: classes.dex */
public final class zzmt implements zzlj {

    /* renamed from: c, reason: collision with root package name */
    public boolean f9126c;
    public long f;
    public long g;
    public zzav h;

    public final void a(long j) {
        this.f = j;
        if (this.f9126c) {
            this.g = SystemClock.elapsedRealtime();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final void j(zzav zzavVar) {
        if (this.f9126c) {
            a(zzg());
        }
        this.h = zzavVar;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final long zzg() {
        long j;
        long j2 = this.f;
        if (this.f9126c) {
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.g;
            if (this.h.f4431a == 1.0f) {
                j = zzfj.s(elapsedRealtime);
            } else {
                j = elapsedRealtime * r4.f4432c;
            }
            return j + j2;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final /* synthetic */ boolean zzh() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzlj
    public final zzav zzj() {
        return this.h;
    }
}
