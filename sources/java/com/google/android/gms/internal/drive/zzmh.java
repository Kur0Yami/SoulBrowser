package com.google.android.gms.internal.drive;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzmh {

    /* renamed from: a, reason: collision with root package name */
    public static final Class f10246a;
    public static final zzmx b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzmx f10247c;
    public static final zzmz d;

    /* JADX WARN: Type inference failed for: r0v6, types: [com.google.android.gms.internal.drive.zzmz, java.lang.Object] */
    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            cls = null;
        }
        f10246a = cls;
        b = r(false);
        f10247c = r(true);
        d = new Object();
    }

    public static void A(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.q(i, list, z);
        }
    }

    public static void B(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.t(i, list, z);
        }
    }

    public static void C(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.k(i, list, z);
        }
    }

    public static void D(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.h(i, list, z);
        }
    }

    public static int E(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzjr.w(i) * size;
    }

    public static int F(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzjr.u(i) * size;
    }

    public static int a(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            int i2 = 0;
            while (i < size) {
                zzleVar.c(i);
                i2 += zzjr.A(zzleVar.f[i]);
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzjr.A(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static void b(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.H(i, list, z);
        }
    }

    public static void c(zzjy zzjyVar, Object obj, Object obj2) {
        zzmj zzmjVar;
        zzkb c2 = zzjyVar.c(obj2);
        if (!c2.f10213a.isEmpty()) {
            zzkb d2 = zzjyVar.d(obj);
            d2.getClass();
            int i = 0;
            while (true) {
                zzmjVar = c2.f10213a;
                if (i >= zzmjVar.f.size()) {
                    break;
                }
                d2.i(zzmjVar.c(i));
                i++;
            }
            Iterator it = zzmjVar.f().iterator();
            while (it.hasNext()) {
                d2.i((Map.Entry) it.next());
            }
        }
    }

    public static int d(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            int i2 = 0;
            while (i < size) {
                zzleVar.c(i);
                i2 += zzjr.A(zzleVar.f[i]);
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzjr.A(((Long) list.get(i)).longValue());
            i++;
        }
        return i3;
    }

    public static void e(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.L(i, list, z);
        }
    }

    public static int f(int i, Object obj, zzmf zzmfVar) {
        if (obj instanceof zzkx) {
            int g = zzjr.g(i);
            int b2 = ((zzkx) obj).b();
            return zzjr.i(b2) + b2 + g;
        }
        int g2 = zzjr.g(i);
        zzit zzitVar = (zzit) ((zzlq) obj);
        int g3 = zzitVar.g();
        if (g3 == -1) {
            g3 = zzmfVar.c(zzitVar);
            zzitVar.h(g3);
        }
        return zzjr.i(g3) + g3 + g2;
    }

    public static int g(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int g = zzjr.g(i) * size;
        if (list instanceof zzkz) {
            zzkz zzkzVar = (zzkz) list;
            while (i2 < size) {
                Object q0 = zzkzVar.q0(i2);
                if (q0 instanceof zzjc) {
                    int size2 = ((zzjc) q0).size();
                    g = zzjr.i(size2) + size2 + g;
                } else {
                    g = zzjr.y((String) q0) + g;
                }
                i2++;
            }
            return g;
        }
        while (i2 < size) {
            Object obj = list.get(i2);
            if (obj instanceof zzjc) {
                int size3 = ((zzjc) obj).size();
                g = zzjr.i(size3) + size3 + g;
            } else {
                g = zzjr.y((String) obj) + g;
            }
            i2++;
        }
        return g;
    }

    public static int h(int i, List list, zzmf zzmfVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int g = zzjr.g(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            if (obj instanceof zzkx) {
                int b2 = ((zzkx) obj).b();
                g = zzjr.i(b2) + b2 + g;
            } else {
                zzit zzitVar = (zzit) ((zzlq) obj);
                int g2 = zzitVar.g();
                if (g2 == -1) {
                    g2 = zzmfVar.c(zzitVar);
                    zzitVar.h(g2);
                }
                g = zzjr.i(g2) + g2 + g;
            }
        }
        return g;
    }

    public static int i(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzle) {
            zzle zzleVar = (zzle) list;
            int i2 = 0;
            while (i < size) {
                zzleVar.c(i);
                long j = zzleVar.f[i];
                i2 += zzjr.A((j >> 63) ^ (j << 1));
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            long longValue = ((Long) list.get(i)).longValue();
            i3 += zzjr.A((longValue >> 63) ^ (longValue << 1));
            i++;
        }
        return i3;
    }

    public static void j(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.o(i, list, z);
        }
    }

    public static int k(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int g = zzjr.g(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            int size2 = ((zzjc) list.get(i2)).size();
            g += zzjr.i(size2) + size2;
        }
        return g;
    }

    public static int l(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            int i2 = 0;
            while (i < size) {
                zzklVar.c(i);
                i2 += zzjr.h(zzklVar.f[i]);
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzjr.h(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static void m(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.B(i, list, z);
        }
    }

    public static boolean n(Object obj, Object obj2) {
        if (obj != obj2) {
            if (obj == null || !obj.equals(obj2)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static int o(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            int i2 = 0;
            while (i < size) {
                zzklVar.c(i);
                i2 += zzjr.h(zzklVar.f[i]);
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzjr.h(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static void p(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.A(i, list, z);
        }
    }

    public static int q(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            int i2 = 0;
            while (i < size) {
                zzklVar.c(i);
                i2 += zzjr.i(zzklVar.f[i]);
                i++;
            }
            return i2;
        }
        int i3 = 0;
        while (i < size) {
            i3 += zzjr.i(((Integer) list.get(i)).intValue());
            i++;
        }
        return i3;
    }

    public static zzmx r(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            cls = null;
        }
        if (cls != null) {
            try {
                return (zzmx) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            } catch (Throwable unused2) {
            }
        }
        return null;
    }

    public static void s(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.x(i, list, z);
        }
    }

    public static int t(List list) {
        int size = list.size();
        int i = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof zzkl) {
            zzkl zzklVar = (zzkl) list;
            int i2 = 0;
            while (i < size) {
                zzklVar.c(i);
                int i3 = zzklVar.f[i];
                i2 += zzjr.i((i3 >> 31) ^ (i3 << 1));
                i++;
            }
            return i2;
        }
        int i4 = 0;
        while (i < size) {
            int intValue = ((Integer) list.get(i)).intValue();
            i4 += zzjr.i((intValue >> 31) ^ (intValue << 1));
            i++;
        }
        return i4;
    }

    public static void u(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.p(i, list, z);
        }
    }

    public static int v(List list) {
        return list.size() << 2;
    }

    public static void w(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.i(i, list, z);
        }
    }

    public static int x(List list) {
        return list.size() << 3;
    }

    public static void y(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.s(i, list, z);
        }
    }

    public static void z(int i, List list, zzns zznsVar, boolean z) {
        if (list != null && !list.isEmpty()) {
            zznsVar.E(i, list, z);
        }
    }
}
