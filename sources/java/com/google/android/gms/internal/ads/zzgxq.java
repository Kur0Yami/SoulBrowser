package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes.dex */
final class zzgxq extends zzgxp {

    /* renamed from: a, reason: collision with root package name */
    public static final AtomicReferenceFieldUpdater f8299a = AtomicReferenceFieldUpdater.newUpdater(zzgxs.class, Set.class, "l");
    public static final AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(zzgxs.class, "m");

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final void a(zzgxo zzgxoVar, Set set) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater;
        do {
            atomicReferenceFieldUpdater = f8299a;
            if (atomicReferenceFieldUpdater.compareAndSet(zzgxoVar, null, set)) {
                return;
            }
        } while (atomicReferenceFieldUpdater.get(zzgxoVar) == null);
    }

    @Override // com.google.android.gms.internal.ads.zzgxp
    public final int b(zzgxo zzgxoVar) {
        return b.decrementAndGet(zzgxoVar);
    }
}
