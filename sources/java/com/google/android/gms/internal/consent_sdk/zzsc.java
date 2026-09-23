package com.google.android.gms.internal.consent_sdk;

import androidx.work.impl.workers.a;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzsc {

    /* renamed from: a, reason: collision with root package name */
    public static final zzsr f10109a;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.consent_sdk.zzsr] */
    static {
        int i = zzpc.f10071a;
        f10109a = new Object();
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

    public static int b(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzqn) {
            zzqn zzqnVar = (zzqn) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzpv.d(zzqnVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzpv.d(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzpv.c(i << 3) + 4) * size;
    }

    public static int d(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzpv.c(i << 3) + 8) * size;
    }

    public static int e(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzqn) {
            zzqn zzqnVar = (zzqn) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzpv.d(zzqnVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzpv.d(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzre) {
            zzre zzreVar = (zzre) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzpv.d(zzreVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzpv.d(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int g(int i, Object obj, zzsa zzsaVar) {
        int i2 = i << 3;
        if (obj instanceof zzra) {
            int c2 = zzpv.c(i2);
            int a2 = ((zzra) obj).a();
            return a.b(a2, a2, c2);
        }
        int c3 = zzpv.c(i2);
        int c4 = ((zzpa) obj).c(zzsaVar);
        return a.b(c4, c4, c3);
    }

    public static int h(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzqn) {
            zzqn zzqnVar = (zzqn) list;
            int i2 = 0;
            while (i < size) {
                int c2 = zzqnVar.c(i);
                i2 += zzpv.c((c2 >> 31) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzpv.c((intValue >> 31) ^ (intValue + intValue));
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
        if (list instanceof zzre) {
            zzre zzreVar = (zzre) list;
            int i2 = 0;
            while (i < size) {
                long c2 = zzreVar.c(i);
                i2 += zzpv.d((c2 >> 63) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzpv.d((longValue >> 63) ^ (longValue + longValue));
            i++;
        }
        return i3;
    }

    public static int j(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzqn) {
            zzqn zzqnVar = (zzqn) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzpv.c(zzqnVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzpv.c(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzre) {
            zzre zzreVar = (zzre) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzpv.d(zzreVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzpv.d(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static void l(Object obj, Object obj2) {
        zzqm zzqmVar = (zzqm) obj;
        zzsq zzsqVar = zzqmVar.zzc;
        zzsq zzsqVar2 = ((zzqm) obj2).zzc;
        zzsq zzsqVar3 = zzsq.e;
        if (!zzsqVar3.equals(zzsqVar2)) {
            if (zzsqVar3.equals(zzsqVar)) {
                zzsqVar.getClass();
                zzsqVar2.getClass();
                int[] copyOf = Arrays.copyOf(zzsqVar.f10114a, 0);
                System.arraycopy(zzsqVar2.f10114a, 0, copyOf, 0, 0);
                Object[] copyOf2 = Arrays.copyOf(zzsqVar.b, 0);
                System.arraycopy(zzsqVar2.b, 0, copyOf2, 0, 0);
                zzsqVar = new zzsq(copyOf, copyOf2, true);
            } else {
                zzsqVar.getClass();
                if (!zzsqVar2.equals(zzsqVar3)) {
                    if (zzsqVar.d) {
                        int[] iArr = zzsqVar.f10114a;
                        int length = iArr.length;
                        System.arraycopy(zzsqVar2.f10114a, 0, iArr, 0, 0);
                        System.arraycopy(zzsqVar2.b, 0, zzsqVar.b, 0, 0);
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        zzqmVar.zzc = zzsqVar;
    }
}
