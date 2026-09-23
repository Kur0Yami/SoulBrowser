package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.admanager.AppEventListener;

/* loaded from: classes.dex */
public final class zzbcz extends com.google.android.gms.ads.internal.client.zzcn {

    /* renamed from: c, reason: collision with root package name */
    public final AppEventListener f4556c;

    public zzbcz(AppEventListener appEventListener) {
        this.f4556c = appEventListener;
    }

    @Override // com.google.android.gms.ads.internal.client.zzco
    public final void zzb(String str, String str2) {
        this.f4556c.onAppEvent(str, str2);
    }
}
