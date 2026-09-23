package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public enum zzhoz implements zziav {
    UNKNOWN_KEYMATERIAL(0),
    SYMMETRIC(1),
    ASYMMETRIC_PRIVATE(2),
    ASYMMETRIC_PUBLIC(3),
    REMOTE(4),
    UNRECOGNIZED(-1);


    /* renamed from: c, reason: collision with root package name */
    public final int f8680c;

    zzhoz(int i) {
        this.f8680c = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f8680c);
    }

    @Override // com.google.android.gms.internal.ads.zziav
    public final int zza() {
        if (this != UNRECOGNIZED) {
            return this.f8680c;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }
}
