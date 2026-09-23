package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzdzr implements zzdhs {

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f6289c = new Bundle();

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final synchronized void a(String str) {
        this.f6289c.putInt(str, 2);
    }

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final synchronized void b(String str, String str2) {
        this.f6289c.putInt(str, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final void i(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final synchronized void zza(String str) {
        this.f6289c.putInt(str, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdhs
    public final void zzf() {
    }
}
