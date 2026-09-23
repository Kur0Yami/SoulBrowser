package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicw {

    /* renamed from: a, reason: collision with root package name */
    public static final zzidh f8944a;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzidh] */
    static {
        int i = zzhyy.f8889a;
        f8944a = new Object();
    }

    public static int a(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzhzw.b(i << 3) + 4) * size;
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzhzw.b(i << 3) + 8) * size;
    }

    public static int c(int i, Object obj, zzicu zzicuVar) {
        int i2 = i << 3;
        if (obj instanceof zzibm) {
            int b = zzhzw.b(i2);
            int a2 = ((zzibm) obj).a();
            return a.k(a2, a2, b);
        }
        int b2 = zzhzw.b(i2);
        int j = ((zzhyu) obj).j(zzicuVar);
        return a.k(j, j, b2);
    }

    public static boolean d(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj != null && obj.equals(obj2)) {
            return true;
        }
        return false;
    }

    public static void e(Object obj, Object obj2) {
        zziar zziarVar = (zziar) obj;
        zzidg zzidgVar = zziarVar.zzt;
        zzidg zzidgVar2 = ((zziar) obj2).zzt;
        zzidg zzidgVar3 = zzidg.f;
        if (!zzidgVar3.equals(zzidgVar2)) {
            if (zzidgVar3.equals(zzidgVar)) {
                int i = zzidgVar.f8950a + zzidgVar2.f8950a;
                int[] copyOf = Arrays.copyOf(zzidgVar.b, i);
                System.arraycopy(zzidgVar2.b, 0, copyOf, zzidgVar.f8950a, zzidgVar2.f8950a);
                Object[] copyOf2 = Arrays.copyOf(zzidgVar.f8951c, i);
                System.arraycopy(zzidgVar2.f8951c, 0, copyOf2, zzidgVar.f8950a, zzidgVar2.f8950a);
                zzidgVar = new zzidg(i, copyOf, copyOf2, true);
            } else {
                zzidgVar.getClass();
                if (!zzidgVar2.equals(zzidgVar3)) {
                    if (zzidgVar.e) {
                        int i2 = zzidgVar.f8950a + zzidgVar2.f8950a;
                        zzidgVar.e(i2);
                        System.arraycopy(zzidgVar2.b, 0, zzidgVar.b, zzidgVar.f8950a, zzidgVar2.f8950a);
                        System.arraycopy(zzidgVar2.f8951c, 0, zzidgVar.f8951c, zzidgVar.f8950a, zzidgVar2.f8950a);
                        zzidgVar.f8950a = i2;
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        zziarVar.zzt = zzidgVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(Object obj, int i, zzibd zzibdVar, zziax zziaxVar, Object obj2, zzidf zzidfVar) {
        if (zziaxVar == null) {
            return obj2;
        }
        if (android.support.v4.media.a.A(zzibdVar)) {
            int size = zzibdVar.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                Integer num = (Integer) zzibdVar.get(i3);
                int intValue = num.intValue();
                if (zziaxVar.j(intValue)) {
                    if (i3 != i2) {
                        zzibdVar.set(i2, num);
                    }
                    i2++;
                } else {
                    if (obj2 == null) {
                        obj2 = zzidfVar.h(obj);
                    }
                    zzidfVar.a(i, intValue, obj2);
                }
            }
            if (i2 != size) {
                zzibdVar.subList(i2, size).clear();
            }
            return obj2;
        }
        Iterator<E> it = zzibdVar.iterator();
        while (it.hasNext()) {
            int intValue2 = ((Integer) it.next()).intValue();
            if (!zziaxVar.j(intValue2)) {
                if (obj2 == null) {
                    obj2 = zzidfVar.h(obj);
                }
                zzidfVar.a(i, intValue2, obj2);
                it.remove();
            }
        }
        return obj2;
    }

    public static void g(int i, List list, zzhzx zzhzxVar) {
        if (list != null && !list.isEmpty()) {
            zzhzw zzhzwVar = zzhzxVar.f8901a;
            int i2 = 0;
            if (list instanceof zzibn) {
                zzibn zzibnVar = (zzibn) list;
                while (i2 < list.size()) {
                    Object zzc = zzibnVar.zzc();
                    if (zzc instanceof String) {
                        zzhzwVar.o(i, (String) zzc);
                    } else {
                        zzhzwVar.p(i, (zzhzl) zzc);
                    }
                    i2++;
                }
                return;
            }
            while (i2 < list.size()) {
                zzhzwVar.o(i, (String) list.get(i2));
                i2++;
            }
        }
    }

    public static void h(int i, List list, zzhzx zzhzxVar) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzhzxVar.f8901a.p(i, (zzhzl) list.get(i2));
            }
        }
    }

    public static void i(int i, List list, zzhzx zzhzxVar, zzicu zzicuVar) {
        if (list != null && !list.isEmpty()) {
            for (int i2 = 0; i2 < list.size(); i2++) {
                zzhzxVar.p(i, list.get(i2), zzicuVar);
            }
        }
    }

    public static int j(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzibq) {
            zzibq zzibqVar = (zzibq) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzhzw.c(zzibqVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzhzw.c(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int k(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzibq) {
            zzibq zzibqVar = (zzibq) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzhzw.c(zzibqVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzhzw.c(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int l(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzibq) {
            zzibq zzibqVar = (zzibq) list;
            int i2 = 0;
            while (i < size) {
                long c2 = zzibqVar.c(i);
                i2 += zzhzw.c((c2 >> 63) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzhzw.c((longValue >> 63) ^ (longValue + longValue));
            i++;
        }
        return i3;
    }

    public static int m(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzias) {
            zzias zziasVar = (zzias) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzhzw.c(zziasVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzhzw.c(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int n(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzias) {
            zzias zziasVar = (zzias) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzhzw.c(zziasVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzhzw.c(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int o(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzias) {
            zzias zziasVar = (zzias) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzhzw.b(zziasVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzhzw.b(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int p(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzias) {
            zzias zziasVar = (zzias) list;
            int i2 = 0;
            while (i < size) {
                int c2 = zziasVar.c(i);
                i2 += zzhzw.b((c2 >> 31) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzhzw.b((intValue >> 31) ^ (intValue + intValue));
            i++;
        }
        return i3;
    }
}
