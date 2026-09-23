package com.google.android.gms.internal.measurement;

/* loaded from: classes3.dex */
final class zzna {

    /* renamed from: a, reason: collision with root package name */
    public static final zzmy f10412a;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.measurement.zzmy, java.lang.Object] */
    static {
        if (zzmv.e && zzmv.d) {
            int i = zzin.f10373a;
        }
        f10412a = new Object();
    }

    public static /* bridge */ /* synthetic */ int a(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
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
