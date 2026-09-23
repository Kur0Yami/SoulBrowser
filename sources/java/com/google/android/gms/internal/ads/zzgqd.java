package com.google.android.gms.internal.ads;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class zzgqd implements zzgqb {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgqd f8207c;
    public static final /* synthetic */ zzgqd[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.ads.zzgqd] */
    static {
        ?? r0 = new Enum("ALWAYS_TRUE", 0);
        f8207c = r0;
        f = new zzgqd[]{r0, new Enum("ALWAYS_FALSE", 1), new Enum("IS_NULL", 2), new Enum("NOT_NULL", 3)};
    }

    public static zzgqd[] values() {
        return (zzgqd[]) f.clone();
    }

    @Override // java.lang.Enum
    public final /* synthetic */ String toString() {
        int ordinal = ordinal();
        return ordinal != 0 ? ordinal != 1 ? ordinal != 2 ? ordinal != 3 ? super.toString() : "Predicates.notNull()" : "Predicates.isNull()" : "Predicates.alwaysFalse()" : "Predicates.alwaysTrue()";
    }

    @Override // com.google.android.gms.internal.ads.zzgqb
    public final /* synthetic */ boolean zza(Object obj) {
        int ordinal = ordinal();
        if (ordinal == 0) {
            return true;
        }
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal == 3) {
                    return obj != null;
                }
                throw null;
            }
            if (obj == null) {
                return true;
            }
        }
        return false;
    }
}
