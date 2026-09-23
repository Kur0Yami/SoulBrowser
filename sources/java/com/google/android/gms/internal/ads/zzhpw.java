package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public enum zzhpw implements zziav {
    UNKNOWN_PREFIX(0),
    TINK(1),
    LEGACY(2),
    RAW(3),
    CRUNCHY(4),
    WITH_ID_REQUIREMENT(5),
    UNRECOGNIZED(-1);


    /* renamed from: c, reason: collision with root package name */
    public final int f8681c;

    zzhpw(int i) {
        this.f8681c = i;
    }

    public static zzhpw a(int i) {
        if (i == 0) {
            return UNKNOWN_PREFIX;
        }
        if (i == 1) {
            return TINK;
        }
        if (i == 2) {
            return LEGACY;
        }
        if (i == 3) {
            return RAW;
        }
        if (i == 4) {
            return CRUNCHY;
        }
        if (i != 5) {
            return null;
        }
        return WITH_ID_REQUIREMENT;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f8681c);
    }

    @Override // com.google.android.gms.internal.ads.zziav
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f8681c;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
