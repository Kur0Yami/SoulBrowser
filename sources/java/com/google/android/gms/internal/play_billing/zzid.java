package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.mlkit_vision_text_common.a;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzid {
    public static final zzid f = new zzid(0, new int[0], new Object[0], false);

    /* renamed from: a, reason: collision with root package name */
    public int f11537a;
    public int[] b;

    /* renamed from: c, reason: collision with root package name */
    public Object[] f11538c;
    public int d = -1;
    public boolean e;

    public zzid(int i, int[] iArr, Object[] objArr, boolean z) {
        this.f11537a = i;
        this.b = iArr;
        this.f11538c = objArr;
        this.e = z;
    }

    public static zzid b() {
        return new zzid(0, new int[8], new Object[8], true);
    }

    public final int a() {
        int x;
        int y;
        int x2;
        int i = this.d;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.f11537a; i3++) {
                int i4 = this.b[i3];
                int i5 = i4 >>> 3;
                int i6 = i4 & 7;
                if (i6 != 0) {
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                if (i6 == 5) {
                                    ((Integer) this.f11538c[i3]).getClass();
                                    x2 = zzfc.x(i5 << 3) + 4;
                                } else {
                                    throw new IllegalStateException(new zzgc());
                                }
                            } else {
                                int x3 = zzfc.x(i5 << 3);
                                x = x3 + x3;
                                y = ((zzid) this.f11538c[i3]).a();
                            }
                        } else {
                            int i7 = i5 << 3;
                            zzev zzevVar = (zzev) this.f11538c[i3];
                            int x4 = zzfc.x(i7);
                            int i8 = zzevVar.i();
                            i2 = a.b(i8, i8, x4, i2);
                        }
                    } else {
                        ((Long) this.f11538c[i3]).getClass();
                        x2 = zzfc.x(i5 << 3) + 8;
                    }
                    i2 = x2 + i2;
                } else {
                    int i9 = i5 << 3;
                    long longValue = ((Long) this.f11538c[i3]).longValue();
                    x = zzfc.x(i9);
                    y = zzfc.y(longValue);
                }
                i2 = y + x + i2;
            }
            this.d = i2;
            return i2;
        }
        return i;
    }

    public final void c(int i, Object obj) {
        if (this.e) {
            e(this.f11537a + 1);
            int[] iArr = this.b;
            int i2 = this.f11537a;
            iArr[i2] = i;
            this.f11538c[i2] = obj;
            this.f11537a = i2 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void d(zzfd zzfdVar) {
        zzfc zzfcVar = zzfdVar.f11495a;
        if (this.f11537a != 0) {
            for (int i = 0; i < this.f11537a; i++) {
                int i2 = this.b[i];
                Object obj = this.f11538c[i];
                int i3 = i2 & 7;
                int i4 = i2 >>> 3;
                if (i3 != 0) {
                    if (i3 != 1) {
                        if (i3 != 2) {
                            if (i3 != 3) {
                                if (i3 == 5) {
                                    zzfdVar.l(i4, ((Integer) obj).intValue());
                                } else {
                                    throw new RuntimeException(new zzgc());
                                }
                            } else {
                                zzfcVar.s(i4, 3);
                                ((zzid) obj).d(zzfdVar);
                                zzfcVar.s(i4, 4);
                            }
                        } else {
                            zzfdVar.h(i4, (zzev) obj);
                        }
                    } else {
                        zzfdVar.m(i4, ((Long) obj).longValue());
                    }
                } else {
                    zzfdVar.q(i4, ((Long) obj).longValue());
                }
            }
        }
    }

    public final void e(int i) {
        int[] iArr = this.b;
        if (i > iArr.length) {
            int i2 = this.f11537a;
            int i3 = (i2 / 2) + i2;
            if (i3 >= i) {
                i = i3;
            }
            if (i < 8) {
                i = 8;
            }
            this.b = Arrays.copyOf(iArr, i);
            this.f11538c = Arrays.copyOf(this.f11538c, i);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzid)) {
            return false;
        }
        zzid zzidVar = (zzid) obj;
        int i = this.f11537a;
        if (i == zzidVar.f11537a) {
            int[] iArr = this.b;
            int[] iArr2 = zzidVar.b;
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    if (iArr[i2] != iArr2[i2]) {
                        break;
                    }
                    i2++;
                } else {
                    Object[] objArr = this.f11538c;
                    Object[] objArr2 = zzidVar.f11538c;
                    int i3 = this.f11537a;
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
        int i = this.f11537a;
        int i2 = i + 527;
        int[] iArr = this.b;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        int i6 = ((i2 * 31) + i4) * 31;
        Object[] objArr = this.f11538c;
        int i7 = this.f11537a;
        for (int i8 = 0; i8 < i7; i8++) {
            i3 = (i3 * 31) + objArr[i8].hashCode();
        }
        return i6 + i3;
    }
}
