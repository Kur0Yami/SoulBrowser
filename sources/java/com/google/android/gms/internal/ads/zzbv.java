package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbv {
    public static final zzbv d = new zzbv(1.0f, 0, 0);

    /* renamed from: a, reason: collision with root package name */
    public final int f4911a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final float f4912c;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(3, 36);
    }

    public zzbv(float f, int i, int i2) {
        this.f4911a = i;
        this.b = i2;
        this.f4912c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbv) {
            zzbv zzbvVar = (zzbv) obj;
            if (this.f4911a == zzbvVar.f4911a && this.b == zzbvVar.b && this.f4912c == zzbvVar.f4912c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.f4912c) + ((((this.f4911a + 217) * 31) + this.b) * 31);
    }
}
