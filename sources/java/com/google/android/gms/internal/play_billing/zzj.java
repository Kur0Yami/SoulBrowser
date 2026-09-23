package com.google.android.gms.internal.play_billing;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes3.dex */
final class zzj extends zzd {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f11546a;
    public final AtomicReferenceFieldUpdater b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReferenceFieldUpdater f11547c;
    public final AtomicReferenceFieldUpdater d;
    public final AtomicReferenceFieldUpdater e;

    public zzj(AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater4, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater5) {
        this.f11546a = atomicReferenceFieldUpdater;
        this.b = atomicReferenceFieldUpdater2;
        this.f11547c = atomicReferenceFieldUpdater3;
        this.d = atomicReferenceFieldUpdater4;
        this.e = atomicReferenceFieldUpdater5;
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final void a(zzm zzmVar, zzm zzmVar2) {
        this.b.lazySet(zzmVar, zzmVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final void b(zzm zzmVar, Thread thread) {
        this.f11546a.lazySet(zzmVar, thread);
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean c(zzo zzoVar, zzh zzhVar, zzh zzhVar2) {
        return zzi.a(this.d, zzoVar, zzhVar, zzhVar2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean d(zzo zzoVar, Object obj, Object obj2) {
        return zzi.a(this.e, zzoVar, obj, obj2);
    }

    @Override // com.google.android.gms.internal.play_billing.zzd
    public final boolean e(zzo zzoVar, zzm zzmVar, zzm zzmVar2) {
        return zzi.a(this.f11547c, zzoVar, zzmVar, zzmVar2);
    }
}
