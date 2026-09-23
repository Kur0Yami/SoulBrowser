package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
final class zzbnx implements com.google.android.gms.ads.internal.overlay.zzaa {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzboa f4793a;

    public zzbnx(zzboa zzboaVar) {
        Objects.requireNonNull(zzboaVar);
        this.f4793a = zzboaVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zza(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzaa
    public final void zzb(int i) {
        this.f4793a.i(i);
    }
}
