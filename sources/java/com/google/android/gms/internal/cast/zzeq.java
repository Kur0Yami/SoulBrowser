package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.ApiMetadata;

/* loaded from: classes.dex */
public final class zzeq extends zzeo {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzen f9686c;

    public zzeq(zzen zzenVar) {
        this.f9686c = zzenVar;
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void B4(ApiMetadata apiMetadata) {
        zzet.b.b("onDisconnected", new Object[0]);
        this.f9686c.getClass();
        throw null;
    }

    @Override // com.google.android.gms.internal.cast.zzeo, com.google.android.gms.internal.cast.zzey
    public final void V3(int i, ApiMetadata apiMetadata) {
        Logger logger = zzet.b;
        zzet.b.b("onError: %d", Integer.valueOf(i));
        this.f9686c.getClass();
        throw null;
    }
}
