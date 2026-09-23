package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
final class zzha extends zzhc {
    @Override // com.google.android.gms.internal.cast.zzhc
    public final Object a(Object obj) {
        zzhd.a(obj, "use Optional.orNull() instead of Optional.or(null)");
        return obj;
    }

    public final boolean equals(Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return 2040732332;
    }

    public final String toString() {
        return "Optional.absent()";
    }
}
