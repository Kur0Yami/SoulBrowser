package com.google.android.gms.ads.internal.overlay;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzq implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public final long f3064a;

    public zzq(long j) {
        this.f3064a = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        if (AdOverlayInfoParcel.f.remove(Long.valueOf(this.f3064a)) != null) {
            com.google.android.gms.ads.internal.zzt.zzh().f("AdOverlayObjectsCleanupTask", new Exception("Key was non-null in AdOverlayObjectsCleanupTask"));
            return null;
        }
        return null;
    }
}
