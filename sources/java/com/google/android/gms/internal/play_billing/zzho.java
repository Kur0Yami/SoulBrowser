package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.mlkit_vision_text_common.a;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzho {

    /* renamed from: a, reason: collision with root package name */
    public static final zzie f11531a;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, com.google.android.gms.internal.play_billing.zzie] */
    static {
        int i = zzei.f11487a;
        f11531a = new Object();
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
        if (list instanceof zzfw) {
            zzfw zzfwVar = (zzfw) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzfc.y(zzfwVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzfc.y(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static int c(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.x(i << 3) + 4) * size;
    }

    public static int d(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.x(i << 3) + 8) * size;
    }

    public static int e(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfw) {
            zzfw zzfwVar = (zzfw) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzfc.y(zzfwVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzfc.y(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzgq) {
            zzgq zzgqVar = (zzgq) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzfc.y(zzgqVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzfc.y(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static int g(int i, Object obj, zzhm zzhmVar) {
        int i2 = i << 3;
        if (obj instanceof zzgj) {
            int x = zzfc.x(i2);
            int a2 = ((zzgj) obj).a();
            return a.a(a2, a2, x);
        }
        int x2 = zzfc.x(i2);
        int c2 = ((zzeg) obj).c(zzhmVar);
        return a.a(c2, c2, x2);
    }

    public static int h(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzfw) {
            zzfw zzfwVar = (zzfw) list;
            int i2 = 0;
            while (i < size) {
                int c2 = zzfwVar.c(i);
                i2 += zzfc.x((c2 >> 31) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i3 += zzfc.x((intValue >> 31) ^ (intValue + intValue));
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
        if (list instanceof zzgq) {
            zzgq zzgqVar = (zzgq) list;
            int i2 = 0;
            while (i < size) {
                long c2 = zzgqVar.c(i);
                i2 += zzfc.y((c2 >> 63) ^ (c2 + c2));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzfc.y((longValue >> 63) ^ (longValue + longValue));
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
        if (list instanceof zzfw) {
            zzfw zzfwVar = (zzfw) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzfc.x(zzfwVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzfc.x(((Integer) list.get(i)).intValue());
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
        if (list instanceof zzgq) {
            zzgq zzgqVar = (zzgq) list;
            int i2 = 0;
            while (i < size) {
                i2 += zzfc.y(zzgqVar.c(i));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzfc.y(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static void l(Object obj, Object obj2) {
        zzfv zzfvVar = (zzfv) obj;
        zzid zzidVar = zzfvVar.zzc;
        zzid zzidVar2 = ((zzfv) obj2).zzc;
        zzid zzidVar3 = zzid.f;
        if (!zzidVar3.equals(zzidVar2)) {
            if (zzidVar3.equals(zzidVar)) {
                int i = zzidVar.f11537a + zzidVar2.f11537a;
                int[] copyOf = Arrays.copyOf(zzidVar.b, i);
                System.arraycopy(zzidVar2.b, 0, copyOf, zzidVar.f11537a, zzidVar2.f11537a);
                Object[] copyOf2 = Arrays.copyOf(zzidVar.f11538c, i);
                System.arraycopy(zzidVar2.f11538c, 0, copyOf2, zzidVar.f11537a, zzidVar2.f11537a);
                zzidVar = new zzid(i, copyOf, copyOf2, true);
            } else {
                zzidVar.getClass();
                if (!zzidVar2.equals(zzidVar3)) {
                    if (zzidVar.e) {
                        int i2 = zzidVar.f11537a + zzidVar2.f11537a;
                        zzidVar.e(i2);
                        System.arraycopy(zzidVar2.b, 0, zzidVar.b, zzidVar.f11537a, zzidVar2.f11537a);
                        System.arraycopy(zzidVar2.f11538c, 0, zzidVar.f11538c, zzidVar.f11537a, zzidVar2.f11537a);
                        zzidVar.f11537a = i2;
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
            }
        }
        zzfvVar.zzc = zzidVar;
    }
}
