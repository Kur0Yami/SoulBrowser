package com.google.android.gms.internal.cast;

import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzu {

    /* renamed from: a, reason: collision with root package name */
    public static final zzaaf f9903a;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.cast.zzaaf, java.lang.Object] */
    static {
        int i = zzxb.f9867a;
        f9903a = new Object();
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static void b(Object obj, Object obj2) {
        zzyd zzydVar = (zzyd) obj;
        zzaae zzaaeVar = zzydVar.zzc;
        zzaae zzaaeVar2 = ((zzyd) obj2).zzc;
        zzaae zzaaeVar3 = zzaae.e;
        if (!zzaaeVar3.equals(zzaaeVar2)) {
            if (zzaaeVar3.equals(zzaaeVar)) {
                zzaaeVar.getClass();
                zzaaeVar2.getClass();
                int[] copyOf = Arrays.copyOf(zzaaeVar.f9605a, 0);
                System.arraycopy(zzaaeVar2.f9605a, 0, copyOf, 0, 0);
                Object[] copyOf2 = Arrays.copyOf(zzaaeVar.b, 0);
                System.arraycopy(zzaaeVar2.b, 0, copyOf2, 0, 0);
                zzaaeVar = new zzaae(copyOf, copyOf2, true);
            } else {
                zzaaeVar.getClass();
                if (!zzaaeVar2.equals(zzaaeVar3)) {
                    if (zzaaeVar.d) {
                        int[] iArr = zzaaeVar.f9605a;
                        int length = iArr.length;
                        System.arraycopy(zzaaeVar2.f9605a, 0, iArr, 0, 0);
                        System.arraycopy(zzaaeVar2.b, 0, zzaaeVar.b, 0, 0);
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        zzydVar.zzc = zzaaeVar;
    }

    public static int c(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzyx) {
            zzyx zzyxVar = (zzyx) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzxp.r(zzyxVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzxp.r(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int d(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzyx) {
            zzyx zzyxVar = (zzyx) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzxp.r(zzyxVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzxp.r(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int e(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzyx) {
            zzyx zzyxVar = (zzyx) list;
            int i2 = 0;
            while (i < size) {
                long c2 = zzyxVar.c(i);
                i2 += zzxp.r((c2 >> 63) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzxp.r((longValue >> 63) ^ (longValue + longValue));
            i++;
        }
        return i3;
    }

    public static int f(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzye) {
            zzye zzyeVar = (zzye) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzxp.r(zzyeVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzxp.r(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int g(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzye) {
            zzye zzyeVar = (zzye) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzxp.r(zzyeVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzxp.r(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int h(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzye) {
            zzye zzyeVar = (zzye) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzxp.q(zzyeVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzxp.q(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int i(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzye) {
            zzye zzyeVar = (zzye) list;
            int i2 = 0;
            while (i < size) {
                int c2 = zzyeVar.c(i);
                i2 += zzxp.q((c2 >> 31) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzxp.q((intValue >> 31) ^ (intValue + intValue));
            i++;
        }
        return i3;
    }

    public static int j(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzxp.q(i << 3) + 4) * size;
    }

    public static int k(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzxp.q(i << 3) + 8) * size;
    }

    public static int l(int i, Object obj, zzzs zzzsVar) {
        int i2 = i << 3;
        if (obj instanceof zzyt) {
            int q = zzxp.q(i2);
            int a2 = ((zzyt) obj).a();
            return b.a(a2, a2, q);
        }
        int q2 = zzxp.q(i2);
        int b = ((zzwz) obj).b(zzzsVar);
        return b.a(b, b, q2);
    }
}
