package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public enum zzhor implements zziav {
    UNKNOWN_HASH(0),
    SHA1(1),
    SHA384(2),
    SHA256(3),
    SHA512(4),
    SHA224(5),
    UNRECOGNIZED(-1);


    /* renamed from: c, reason: collision with root package name */
    public final int f8679c;

    zzhor(int i) {
        this.f8679c = i;
    }

    public static zzhor a(int i) {
        if (i == 0) {
            return UNKNOWN_HASH;
        }
        if (i == 1) {
            return SHA1;
        }
        if (i == 2) {
            return SHA384;
        }
        if (i == 3) {
            return SHA256;
        }
        if (i == 4) {
            return SHA512;
        }
        if (i != 5) {
            return null;
        }
        return SHA224;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f8679c);
    }

    @Override // com.google.android.gms.internal.ads.zziav
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f8679c;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
