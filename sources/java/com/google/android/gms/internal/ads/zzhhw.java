package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayDeque;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzhhw extends zzhxq {
    public static final zzhxj a(zzhyo zzhyoVar) {
        zzhxj zzhxjVar;
        String i;
        int e = zzhyoVar.e();
        zzhxj c2 = c(zzhyoVar, e);
        if (c2 == null) {
            return b(zzhyoVar, e);
        }
        ArrayDeque arrayDeque = new ArrayDeque();
        while (true) {
            int i2 = zzhyoVar.k;
            if (i2 == 0) {
                i2 = zzhyoVar.a();
            }
            String str = null;
            if (i2 != 2 && i2 != 4 && i2 != 17) {
                if (c2 instanceof zzhxl) {
                    int i3 = zzhyoVar.k;
                    if (i3 == 0) {
                        i3 = zzhyoVar.a();
                    }
                    if (i3 == 14) {
                        i = zzhyoVar.j();
                    } else if (i3 == 12) {
                        i = zzhyoVar.i('\'');
                    } else if (i3 == 13) {
                        i = zzhyoVar.i(Typography.quote);
                    } else {
                        throw zzhyoVar.u("a name");
                    }
                    str = i;
                    zzhyoVar.k = 0;
                    zzhyoVar.p[zzhyoVar.o - 1] = str;
                    if (!zzhhy.a(str)) {
                        throw new IOException("illegal characters in string");
                    }
                }
                int e2 = zzhyoVar.e();
                zzhxj c3 = c(zzhyoVar, e2);
                if (c3 == null) {
                    zzhxjVar = b(zzhyoVar, e2);
                } else {
                    zzhxjVar = c3;
                }
                if (c2 instanceof zzhxi) {
                    ((zzhxi) c2).f8868c.add(zzhxjVar);
                } else {
                    zzhxl zzhxlVar = (zzhxl) c2;
                    if (!zzhxlVar.f8870c.containsKey(str)) {
                        zzhxlVar.f8870c.put(str, zzhxjVar);
                    } else {
                        throw new IOException("duplicate key: ".concat(String.valueOf(str)));
                    }
                }
                if (c3 != null) {
                    arrayDeque.addLast(c2);
                    if (arrayDeque.size() <= 100) {
                        c2 = zzhxjVar;
                    } else {
                        throw new IOException("too many recursions");
                    }
                } else {
                    continue;
                }
            } else {
                if (c2 instanceof zzhxi) {
                    int i4 = zzhyoVar.k;
                    if (i4 == 0) {
                        i4 = zzhyoVar.a();
                    }
                    if (i4 == 4) {
                        int i5 = zzhyoVar.o;
                        zzhyoVar.o = i5 - 1;
                        int[] iArr = zzhyoVar.q;
                        int i6 = i5 - 2;
                        iArr[i6] = iArr[i6] + 1;
                        zzhyoVar.k = 0;
                    } else {
                        throw zzhyoVar.u("END_ARRAY");
                    }
                } else {
                    int i7 = zzhyoVar.k;
                    if (i7 == 0) {
                        i7 = zzhyoVar.a();
                    }
                    if (i7 == 2) {
                        int i8 = zzhyoVar.o;
                        int i9 = i8 - 1;
                        zzhyoVar.o = i9;
                        zzhyoVar.p[i9] = null;
                        int[] iArr2 = zzhyoVar.q;
                        int i10 = i8 - 2;
                        iArr2[i10] = iArr2[i10] + 1;
                        zzhyoVar.k = 0;
                    } else {
                        throw zzhyoVar.u("END_OBJECT");
                    }
                }
                if (arrayDeque.isEmpty()) {
                    return c2;
                }
                c2 = (zzhxj) arrayDeque.removeLast();
            }
        }
    }

    public static final zzhxj b(zzhyo zzhyoVar, int i) {
        int i2 = i - 1;
        if (i2 != 5) {
            if (i2 != 6) {
                boolean z = true;
                if (i2 != 7) {
                    if (i2 == 8) {
                        int i3 = zzhyoVar.k;
                        if (i3 == 0) {
                            i3 = zzhyoVar.a();
                        }
                        if (i3 == 7) {
                            zzhyoVar.k = 0;
                            int[] iArr = zzhyoVar.q;
                            int i4 = zzhyoVar.o - 1;
                            iArr[i4] = iArr[i4] + 1;
                            return zzhxk.f8869c;
                        }
                        throw zzhyoVar.u("null");
                    }
                    throw new IllegalStateException("Unexpected token: ".concat(zzhyp.a(i)));
                }
                int i5 = zzhyoVar.k;
                if (i5 == 0) {
                    i5 = zzhyoVar.a();
                }
                if (i5 == 5) {
                    zzhyoVar.k = 0;
                    int[] iArr2 = zzhyoVar.q;
                    int i6 = zzhyoVar.o - 1;
                    iArr2[i6] = iArr2[i6] + 1;
                } else if (i5 == 6) {
                    zzhyoVar.k = 0;
                    int[] iArr3 = zzhyoVar.q;
                    int i7 = zzhyoVar.o - 1;
                    iArr3[i7] = iArr3[i7] + 1;
                    z = false;
                } else {
                    throw zzhyoVar.u("a boolean");
                }
                return new zzhxn(Boolean.valueOf(z));
            }
            return new zzhxn(new zzhhx(zzhyoVar.b()));
        }
        String b = zzhyoVar.b();
        if (zzhhy.a(b)) {
            return new zzhxn(b);
        }
        throw new IOException("illegal characters in string");
    }

    public static final zzhxj c(zzhyo zzhyoVar, int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                return null;
            }
            int i3 = zzhyoVar.k;
            if (i3 == 0) {
                i3 = zzhyoVar.a();
            }
            if (i3 == 1) {
                zzhyoVar.k(3);
                zzhyoVar.k = 0;
                return new zzhxl();
            }
            throw zzhyoVar.u("BEGIN_OBJECT");
        }
        int i4 = zzhyoVar.k;
        if (i4 == 0) {
            i4 = zzhyoVar.a();
        }
        if (i4 == 3) {
            zzhyoVar.k(1);
            zzhyoVar.q[zzhyoVar.o - 1] = 0;
            zzhyoVar.k = 0;
            return new zzhxi();
        }
        throw zzhyoVar.u("BEGIN_ARRAY");
    }
}
