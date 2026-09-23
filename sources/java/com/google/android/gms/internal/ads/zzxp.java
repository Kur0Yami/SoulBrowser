package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;

/* loaded from: classes.dex */
final class zzxp implements zzaag {

    /* renamed from: a, reason: collision with root package name */
    public long f9369a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public zzaaf f9370c;
    public zzxp d;

    public zzxp(long j) {
        boolean z;
        if (this.f9370c == null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        this.f9369a = j;
        this.b = j + PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH;
    }

    @Override // com.google.android.gms.internal.ads.zzaag
    public final zzaaf zzd() {
        zzaaf zzaafVar = this.f9370c;
        zzaafVar.getClass();
        return zzaafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaag
    public final zzaag zze() {
        zzxp zzxpVar = this.d;
        if (zzxpVar == null || zzxpVar.f9370c == null) {
            return null;
        }
        return zzxpVar;
    }
}
