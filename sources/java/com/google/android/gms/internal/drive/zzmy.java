package com.google.android.gms.internal.drive;

import java.io.IOException;

/* loaded from: classes.dex */
public final class zzmy {
    public static final zzmy e = new zzmy(0, new int[0], new Object[0]);

    /* renamed from: a, reason: collision with root package name */
    public final int f10254a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f10255c;
    public int d = -1;

    public zzmy(int i, int[] iArr, Object[] objArr) {
        this.f10254a = i;
        this.b = iArr;
        this.f10255c = objArr;
    }

    public final void a(zzns zznsVar) {
        int i = this.f10254a;
        if (i != 0) {
            zznsVar.getClass();
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = this.b[i2];
                Object obj = this.f10255c[i2];
                int i4 = i3 >>> 3;
                int i5 = i3 & 7;
                if (i5 != 0) {
                    if (i5 != 1) {
                        if (i5 != 2) {
                            if (i5 != 3) {
                                if (i5 == 5) {
                                    zznsVar.z(i4, ((Integer) obj).intValue());
                                } else {
                                    int i6 = zzkq.f10223c;
                                    throw new RuntimeException(new IOException("Protocol message tag had invalid wire type."));
                                }
                            } else {
                                zznsVar.getClass();
                                zznsVar.u(i4);
                                ((zzmy) obj).a(zznsVar);
                                zznsVar.j(i4);
                            }
                        } else {
                            zznsVar.D(i4, (zzjc) obj);
                        }
                    } else {
                        zznsVar.w(i4, ((Long) obj).longValue());
                    }
                } else {
                    zznsVar.r(i4, ((Long) obj).longValue());
                }
            }
        }
    }

    public final int b() {
        int g;
        int A;
        int u;
        int i = this.d;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.f10254a; i3++) {
            int i4 = this.b[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            Object[] objArr = this.f10255c;
            if (i6 != 0) {
                if (i6 != 1) {
                    if (i6 != 2) {
                        if (i6 != 3) {
                            if (i6 == 5) {
                                ((Integer) objArr[i3]).getClass();
                                u = zzjr.w(i5);
                            } else {
                                int i7 = zzkq.f10223c;
                                throw new IllegalStateException(new IOException("Protocol message tag had invalid wire type."));
                            }
                        } else {
                            g = zzjr.g(i5) << 1;
                            A = ((zzmy) objArr[i3]).b();
                        }
                    } else {
                        u = zzjr.m(i5, (zzjc) objArr[i3]);
                    }
                } else {
                    ((Long) objArr[i3]).getClass();
                    u = zzjr.u(i5);
                }
                i2 = u + i2;
            } else {
                long longValue = ((Long) objArr[i3]).longValue();
                g = zzjr.g(i5);
                A = zzjr.A(longValue);
            }
            i2 = A + g + i2;
        }
        this.d = i2;
        return i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmy)) {
            return false;
        }
        zzmy zzmyVar = (zzmy) obj;
        int i = zzmyVar.f10254a;
        int i2 = this.f10254a;
        if (i2 == i) {
            int[] iArr = zzmyVar.b;
            int i3 = 0;
            while (true) {
                if (i3 < i2) {
                    if (this.b[i3] != iArr[i3]) {
                        break;
                    }
                    i3++;
                } else {
                    Object[] objArr = zzmyVar.f10255c;
                    for (int i4 = 0; i4 < i2; i4++) {
                        if (this.f10255c[i4].equals(objArr[i4])) {
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.f10254a;
        int i2 = (i + 527) * 31;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i; i5++) {
            i4 = (i4 * 31) + this.b[i5];
        }
        int i6 = (i2 + i4) * 31;
        for (int i7 = 0; i7 < i; i7++) {
            i3 = (i3 * 31) + this.f10255c[i7].hashCode();
        }
        return i6 + i3;
    }
}
