package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.initialization.AdapterStatus;

/* loaded from: classes.dex */
public final class zzbpu implements AdapterStatus {

    /* renamed from: a, reason: collision with root package name */
    public final AdapterStatus.State f4821a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f4822c;

    public zzbpu(AdapterStatus.State state, String str, int i) {
        this.f4821a = state;
        this.b = str;
        this.f4822c = i;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final String getDescription() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final AdapterStatus.State getInitializationState() {
        return this.f4821a;
    }

    @Override // com.google.android.gms.ads.initialization.AdapterStatus
    public final int getLatency() {
        return this.f4822c;
    }
}
