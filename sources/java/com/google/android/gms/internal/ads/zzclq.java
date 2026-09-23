package com.google.android.gms.internal.ads;

import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzclq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcli f5253a;

    public zzclq(zzcli zzcliVar) {
        this.f5253a = zzcliVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        WeakReference weakReference = this.f5253a.d;
        zzijo.a(weakReference);
        return weakReference;
    }
}
