package com.google.android.gms.ads.internal.client;

import com.google.android.gms.ads.MuteThisAdListener;

/* loaded from: classes.dex */
public final class zzdg extends zzde {

    /* renamed from: c, reason: collision with root package name */
    public final MuteThisAdListener f3011c;

    public zzdg(MuteThisAdListener muteThisAdListener) {
        this.f3011c = muteThisAdListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdf
    public final void zze() {
        this.f3011c.onAdMuted();
    }
}
