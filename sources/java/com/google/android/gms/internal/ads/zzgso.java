package com.google.android.gms.internal.ads;

import java.util.Comparator;

/* loaded from: classes.dex */
final class zzgso extends zzgsq {
    public static final zzgsq f(int i) {
        return i < 0 ? zzgsq.b : i > 0 ? zzgsq.f8238c : zzgsq.f8237a;
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final zzgsq a(Object obj, Object obj2, Comparator comparator) {
        return f(comparator.compare(obj, obj2));
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final zzgsq b(int i, int i2) {
        return f(Integer.compare(i, i2));
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final zzgsq c(boolean z, boolean z2) {
        return f(Boolean.compare(z2, z));
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final zzgsq d(boolean z, boolean z2) {
        return f(Boolean.compare(z, z2));
    }

    @Override // com.google.android.gms.internal.ads.zzgsq
    public final int e() {
        return 0;
    }
}
