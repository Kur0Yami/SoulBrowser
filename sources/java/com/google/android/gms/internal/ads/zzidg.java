package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzidg {
    public static final zzidg f = new zzidg(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f8950a;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f8951c;
    public int d = -1;
    public boolean e;

    public zzidg(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f8950a = i;
        this.b = iArr;
        this.f8951c = objArr;
        this.e = z;
    }

    public static zzidg a() {
        return new zzidg(0, new int[8], new Object[8], true);
    }

    public final void b(zzhzx zzhzxVar) {
        zzhzw zzhzwVar = zzhzxVar.f8901a;
        if (this.f8950a != 0) {
            for (int i = 0; i < this.f8950a; i++) {
                int i2 = this.b[i];
                Object obj = this.f8951c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 == 5) {
                                    zzhzxVar.j(i4, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zzibf());
                                }
                            } else {
                                zzhzwVar.g(i4, 3);
                                ((zzidg) obj).b(zzhzxVar);
                                zzhzwVar.g(i4, 4);
                            }
                        } else {
                            zzhzxVar.l(i4, (zzhzl) obj);
                        }
                    } else {
                        zzhzxVar.i(i4, ((Long) obj).longValue());
                    }
                } else {
                    zzhzxVar.b(i4, ((Long) obj).longValue());
                }
            }
        }
    }

    public final int c() {
        int b;
        int c2;
        int b2;
        int i = this.d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f8950a; i3++) {
                int i4 = this.b[i3];
                int i5 = i4 >>> 3;
                int i6 = i4 & 7;
                if (i6 != 0) {
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                if (i6 == 5) {
                                    ((Integer) this.f8951c[i3]).getClass();
                                    b2 = zzhzw.b(i5 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zzibf());
                                }
                            } else {
                                int b3 = zzhzw.b(i5 << 3);
                                b = b3 + b3;
                                c2 = ((zzidg) this.f8951c[i3]).c();
                            }
                        } else {
                            int i7 = i5 << 3;
                            zzhzl zzhzlVar = (zzhzl) this.f8951c[i3];
                            int b4 = zzhzw.b(i7);
                            int k = zzhzlVar.k();
                            i2 = a.m(k, k, b4, i2);
                        }
                    } else {
                        ((Long) this.f8951c[i3]).getClass();
                        b2 = zzhzw.b(i5 << 3) + 8;
                    }
                    i2 = b2 + i2;
                } else {
                    int i8 = i5 << 3;
                    long longValue = ((Long) this.f8951c[i3]).longValue();
                    b = zzhzw.b(i8);
                    c2 = zzhzw.c(longValue);
                }
                i2 = c2 + b + i2;
            }
            this.d = i2;
            return i2;
        }
        return i;
    }

    public final void d(int i, Object obj) {
        if (this.e) {
            e(this.f8950a + 1);
            int[] iArr = this.b;
            int i2 = this.f8950a;
            iArr[i2] = i;
            this.f8951c[i2] = obj;
            this.f8950a = i2 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void e(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.f8950a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.f8951c = Arrays.copyOf(this.f8951c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzidg)) {
            return false;
        }
        zzidg zzidgVar = (zzidg) obj;
        int i = this.f8950a;
        if (i == zzidgVar.f8950a) {
            int[] iArr = this.b;
            int[] iArr2 = zzidgVar.b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.f8951c;
                    Object[] objArr2 = zzidgVar.f8951c;
                    int i3 = this.f8950a;
                    for (int i4 = 0; i4 < i3; i4++) {
                        if (objArr[i4].equals(objArr2[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f8950a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f8951c;
        int i7 = this.f8950a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }
}
