package com.caverock.androidsvg;

/* loaded from: classes.dex */
class IntegerParser {

    /* renamed from: a, reason: collision with root package name */
    public final int f2526a;
    public final long b;

    public IntegerParser(long j, int i) {
        this.b = j;
        this.f2526a = i;
    }

    public static IntegerParser a(int i, int i2, String str) {
        if (i < i2) {
            long j = 0;
            int i3 = i;
            while (i3 < i2) {
                char charAt = str.charAt(i3);
                if (charAt < '0' || charAt > '9') {
                    break;
                }
                j = (j * 10) + (charAt - '0');
                if (j <= 2147483647L) {
                    i3++;
                } else {
                    return null;
                }
            }
            if (i3 == i) {
                return null;
            }
            return new IntegerParser(j, i3);
        }
        return null;
    }
}
