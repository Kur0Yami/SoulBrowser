package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
final class zzdf extends zzdh {

    /* renamed from: c, reason: collision with root package name */
    public static final zzdf f9522c = new Object();

    @Override // com.google.android.gms.internal.auth.zzdh
    public final Object a() {
        throw new IllegalStateException("Optional.get() cannot be called on an absent value");
    }

    @Override // com.google.android.gms.internal.auth.zzdh
    public final boolean b() {
        return false;
    }

    public final boolean equals(Object obj) {
        return obj == this;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
