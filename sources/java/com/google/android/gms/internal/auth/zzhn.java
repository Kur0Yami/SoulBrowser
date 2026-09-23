package com.google.android.gms.internal.auth;

/* loaded from: classes.dex */
final class zzhn {

    /* renamed from: a, reason: collision with root package name */
    public static final zzhm f9572a;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.auth.zzhm, java.lang.Object] */
    static {
        if (zzhj.e && zzhj.d) {
            int i = zzds.f9529a;
        }
        f9572a = new Object();
    }

    public static /* bridge */ /* synthetic */ int a(byte[] bArr, int i, int i2) {
        int i3 = i2 - i;
        byte b = bArr[i - 1];
        if (i3 != 0) {
            if (i3 != 1) {
                if (i3 == 2) {
                    byte b2 = bArr[i];
                    byte b3 = bArr[i + 1];
                    if (b > -12 || b2 > -65 || b3 > -65) {
                        return -1;
                    }
                    return (b3 << 16) ^ ((b2 << 8) ^ b);
                }
                throw new AssertionError();
            }
            byte b4 = bArr[i];
            if (b > -12 || b4 > -65) {
                return -1;
            }
            return (b4 << 8) ^ b;
        }
        if (b > -12) {
            return -1;
        }
        return b;
    }
}
