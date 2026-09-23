package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzege {

    /* renamed from: a, reason: collision with root package name */
    public final zzbyw f6474a;

    public zzege(zzbyw zzbywVar) {
        this.f6474a = zzbywVar;
    }

    public final void a() {
        ListenableFuture a2 = this.f6474a.a();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G8)).booleanValue()) {
            zzcdr.b(a2, "persistFlags");
        } else {
            zzcdr.a(a2, "persistFlags");
        }
    }
}
