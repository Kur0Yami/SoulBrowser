package com.google.android.gms.internal.drive;

import androidx.work.impl.workers.a;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.drive.zzkk;
import com.google.android.gms.internal.drive.zznd;
import java.lang.reflect.Field;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlu<T> implements zzmf<T> {
    public static final int[] n = new int[0];
    public static final Unsafe o = zznd.g();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f10235a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzlq f10236c;
    public final boolean d;
    public final boolean e;
    public final int[] f;
    public final int g;
    public final int h;
    public final zzly i;
    public final zzla j;
    public final zzmx k;
    public final zzjy l;
    public final zzll m;

    public zzlu(int[] iArr, Object[] objArr, zzlq zzlqVar, boolean z, int[] iArr2, int i, int i2, zzly zzlyVar, zzla zzlaVar, zzmx zzmxVar, zzjy zzjyVar, zzll zzllVar) {
        boolean z2;
        this.f10235a = iArr;
        this.b = objArr;
        this.e = z;
        if (zzjyVar != null && zzjyVar.f(zzlqVar)) {
            z2 = true;
        } else {
            z2 = false;
        }
        this.d = z2;
        this.f = iArr2;
        this.g = i;
        this.h = i2;
        this.i = zzlyVar;
        this.j = zzlaVar;
        this.k = zzmxVar;
        this.l = zzjyVar;
        this.f10236c = zzlqVar;
        this.m = zzllVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x032e  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x037e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.drive.zzlu h(com.google.android.gms.internal.drive.zzlo r33, com.google.android.gms.internal.drive.zzly r34, com.google.android.gms.internal.drive.zzla r35, com.google.android.gms.internal.drive.zzmx r36, com.google.android.gms.internal.drive.zzjy r37, com.google.android.gms.internal.drive.zzll r38) {
        /*
            Method dump skipped, instructions count: 1019
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.h(com.google.android.gms.internal.drive.zzlo, com.google.android.gms.internal.drive.zzly, com.google.android.gms.internal.drive.zzla, com.google.android.gms.internal.drive.zzmx, com.google.android.gms.internal.drive.zzjy, com.google.android.gms.internal.drive.zzll):com.google.android.gms.internal.drive.zzlu");
    }

    public static Field i(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(a.e(name.length() + a.e(40, str), arrays));
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            throw new RuntimeException(android.support.v4.media.a.p(sb, " not found. Known fields are ", arrays));
        }
    }

    public static void j(int i, Object obj, zzns zznsVar) {
        if (obj instanceof String) {
            zznsVar.a(i, (String) obj);
        } else {
            zznsVar.D(i, (zzjc) obj);
        }
    }

    public static int u(long j, Object obj) {
        return ((Integer) zznd.m(j, obj)).intValue();
    }

    public static long v(long j, Object obj) {
        return ((Long) zznd.m(j, obj)).longValue();
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void a(Object obj) {
        int[] iArr;
        int i;
        int i2 = this.g;
        while (true) {
            iArr = this.f;
            i = this.h;
            if (i2 >= i) {
                break;
            }
            long p = p(iArr[i2]) & 1048575;
            Object m = zznd.m(p, obj);
            if (m != null) {
                zznd.c(p, obj, this.m.b(m));
            }
            i2++;
        }
        int length = iArr.length;
        while (i < length) {
            this.j.a(iArr[i], obj);
            i++;
        }
        this.k.c(obj);
        if (this.d) {
            this.l.e(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x002d  */
    /* JADX WARN: Removed duplicated region for block: B:292:0x04c6  */
    /* JADX WARN: Removed duplicated region for block: B:294:0x04d0  */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.lang.Object r14, com.google.android.gms.internal.drive.zzns r15) {
        /*
            Method dump skipped, instructions count: 1382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.b(java.lang.Object, com.google.android.gms.internal.drive.zzns):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:313:0x05eb. Please report as an issue. */
    @Override // com.google.android.gms.internal.drive.zzmf
    public final int c(zzit zzitVar) {
        Object[] objArr;
        int i;
        char c2;
        int g;
        int A;
        int i2;
        int g2;
        int y;
        int m;
        int f;
        int g3;
        int A2;
        int g4;
        int i3;
        int g5;
        int A3;
        int g6;
        int h;
        int u;
        int f2;
        int g7;
        int i4;
        int g8;
        int A4;
        boolean z = this.e;
        Object[] objArr2 = this.b;
        int i5 = 4;
        zzmx zzmxVar = this.k;
        zzll zzllVar = this.m;
        int i6 = 267386880;
        int[] iArr = this.f10235a;
        if (z) {
            Unsafe unsafe = o;
            int i7 = 0;
            int i8 = 0;
            while (i7 < iArr.length) {
                int p = p(i7);
                int i9 = i6;
                int i10 = (p & i6) >>> 20;
                int i11 = iArr[i7];
                long j = p & 1048575;
                if (i10 >= zzke.f.f10216c && i10 <= zzke.g.f10216c) {
                    int i12 = iArr[i7 + 2];
                }
                switch (i10) {
                    case 0:
                        if (n(i7, zzitVar)) {
                            i8 = a.C(i11, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (n(i7, zzitVar)) {
                            i8 = a.C(i11, 4, i8);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (n(i7, zzitVar)) {
                            long h2 = zznd.d.h(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.A(h2);
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (n(i7, zzitVar)) {
                            long h3 = zznd.d.h(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.A(h3);
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (n(i7, zzitVar)) {
                            int g9 = zznd.d.g(j, zzitVar);
                            g6 = zzjr.g(i11);
                            h = zzjr.h(g9);
                            u = h + g6;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (n(i7, zzitVar)) {
                            u = zzjr.u(i11);
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (n(i7, zzitVar)) {
                            u = zzjr.w(i11);
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (n(i7, zzitVar)) {
                            i8 = a.C(i11, 1, i8);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (!n(i7, zzitVar)) {
                            break;
                        } else {
                            Object m2 = zznd.m(j, zzitVar);
                            if (m2 instanceof zzjc) {
                                u = zzjr.m(i11, (zzjc) m2);
                                i8 += u;
                                break;
                            } else {
                                g6 = zzjr.g(i11);
                                h = zzjr.y((String) m2);
                                u = h + g6;
                                i8 += u;
                            }
                        }
                    case 9:
                        if (n(i7, zzitVar)) {
                            f2 = zzmh.f(i11, zznd.m(j, zzitVar), o(i7));
                            i8 += f2;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (n(i7, zzitVar)) {
                            u = zzjr.m(i11, (zzjc) zznd.m(j, zzitVar));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (n(i7, zzitVar)) {
                            u = zzjr.v(i11, zznd.d.g(j, zzitVar));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (n(i7, zzitVar)) {
                            int g10 = zznd.d.g(j, zzitVar);
                            g6 = zzjr.g(i11);
                            h = zzjr.h(g10);
                            u = h + g6;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (n(i7, zzitVar)) {
                            i8 = a.C(i11, 4, i8);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (n(i7, zzitVar)) {
                            i8 = a.C(i11, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (n(i7, zzitVar)) {
                            int g11 = zznd.d.g(j, zzitVar);
                            g6 = zzjr.g(i11);
                            h = zzjr.i((g11 >> 31) ^ (g11 << 1));
                            u = h + g6;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (n(i7, zzitVar)) {
                            long h4 = zznd.d.h(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.A((h4 >> 63) ^ (h4 << 1));
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (n(i7, zzitVar)) {
                            u = zzjr.n(i11, (zzlq) zznd.m(j, zzitVar), o(i7));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        f2 = zzmh.F(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 19:
                        f2 = zzmh.E(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 20:
                        List list = (List) zznd.m(j, zzitVar);
                        Class cls = zzmh.f10246a;
                        if (list.size() != 0) {
                            f2 = a.D(i11, list.size(), zzmh.a(list));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 21:
                        List list2 = (List) zznd.m(j, zzitVar);
                        Class cls2 = zzmh.f10246a;
                        int size = list2.size();
                        if (size != 0) {
                            f2 = a.D(i11, size, zzmh.d(list2));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 22:
                        List list3 = (List) zznd.m(j, zzitVar);
                        Class cls3 = zzmh.f10246a;
                        int size2 = list3.size();
                        if (size2 != 0) {
                            f2 = a.D(i11, size2, zzmh.o(list3));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        f2 = zzmh.F(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        f2 = zzmh.E(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 25:
                        List list4 = (List) zznd.m(j, zzitVar);
                        Class cls4 = zzmh.f10246a;
                        int size3 = list4.size();
                        if (size3 == 0) {
                            g7 = 0;
                        } else {
                            g7 = (zzjr.g(i11) + 1) * size3;
                        }
                        i8 += g7;
                        break;
                    case 26:
                        f2 = zzmh.g(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 27:
                        f2 = zzmh.h(i11, (List) zznd.m(j, zzitVar), o(i7));
                        i8 += f2;
                        break;
                    case 28:
                        f2 = zzmh.k(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 29:
                        List list5 = (List) zznd.m(j, zzitVar);
                        Class cls5 = zzmh.f10246a;
                        int size4 = list5.size();
                        if (size4 != 0) {
                            f2 = a.D(i11, size4, zzmh.q(list5));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 30:
                        List list6 = (List) zznd.m(j, zzitVar);
                        Class cls6 = zzmh.f10246a;
                        int size5 = list6.size();
                        if (size5 != 0) {
                            f2 = a.D(i11, size5, zzmh.l(list6));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 31:
                        f2 = zzmh.E(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 32:
                        f2 = zzmh.F(i11, (List) zznd.m(j, zzitVar));
                        i8 += f2;
                        break;
                    case 33:
                        List list7 = (List) zznd.m(j, zzitVar);
                        Class cls7 = zzmh.f10246a;
                        int size6 = list7.size();
                        if (size6 != 0) {
                            f2 = a.D(i11, size6, zzmh.t(list7));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 34:
                        List list8 = (List) zznd.m(j, zzitVar);
                        Class cls8 = zzmh.f10246a;
                        int size7 = list8.size();
                        if (size7 != 0) {
                            f2 = a.D(i11, size7, zzmh.i(list8));
                            i8 += f2;
                            break;
                        }
                        f2 = 0;
                        i8 += f2;
                    case 35:
                        int x = zzmh.x((List) unsafe.getObject(zzitVar, j));
                        if (x > 0) {
                            i8 = a.c(x, zzjr.g(i11), x, i8);
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int v = zzmh.v((List) unsafe.getObject(zzitVar, j));
                        if (v > 0) {
                            i8 = a.c(v, zzjr.g(i11), v, i8);
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int a2 = zzmh.a((List) unsafe.getObject(zzitVar, j));
                        if (a2 > 0) {
                            i8 = a.c(a2, zzjr.g(i11), a2, i8);
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int d = zzmh.d((List) unsafe.getObject(zzitVar, j));
                        if (d > 0) {
                            i8 = a.c(d, zzjr.g(i11), d, i8);
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int o2 = zzmh.o((List) unsafe.getObject(zzitVar, j));
                        if (o2 > 0) {
                            i8 = a.c(o2, zzjr.g(i11), o2, i8);
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int x2 = zzmh.x((List) unsafe.getObject(zzitVar, j));
                        if (x2 > 0) {
                            i8 = a.c(x2, zzjr.g(i11), x2, i8);
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int v2 = zzmh.v((List) unsafe.getObject(zzitVar, j));
                        if (v2 > 0) {
                            i8 = a.c(v2, zzjr.g(i11), v2, i8);
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        List list9 = (List) unsafe.getObject(zzitVar, j);
                        Class cls9 = zzmh.f10246a;
                        int size8 = list9.size();
                        if (size8 > 0) {
                            i8 = a.c(size8, zzjr.g(i11), size8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int q = zzmh.q((List) unsafe.getObject(zzitVar, j));
                        if (q > 0) {
                            i8 = a.c(q, zzjr.g(i11), q, i8);
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int l = zzmh.l((List) unsafe.getObject(zzitVar, j));
                        if (l > 0) {
                            i8 = a.c(l, zzjr.g(i11), l, i8);
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int v3 = zzmh.v((List) unsafe.getObject(zzitVar, j));
                        if (v3 > 0) {
                            i8 = a.c(v3, zzjr.g(i11), v3, i8);
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int x3 = zzmh.x((List) unsafe.getObject(zzitVar, j));
                        if (x3 > 0) {
                            i8 = a.c(x3, zzjr.g(i11), x3, i8);
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int t = zzmh.t((List) unsafe.getObject(zzitVar, j));
                        if (t > 0) {
                            i8 = a.c(t, zzjr.g(i11), t, i8);
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int i13 = zzmh.i((List) unsafe.getObject(zzitVar, j));
                        if (i13 > 0) {
                            i8 = a.c(i13, zzjr.g(i11), i13, i8);
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list10 = (List) zznd.m(j, zzitVar);
                        zzmf o3 = o(i7);
                        Class cls10 = zzmh.f10246a;
                        int size9 = list10.size();
                        if (size9 == 0) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            for (int i14 = 0; i14 < size9; i14++) {
                                i4 = zzjr.n(i11, (zzlq) list10.get(i14), o3) + i4;
                            }
                        }
                        i8 += i4;
                        break;
                    case 50:
                        Object m3 = zznd.m(j, zzitVar);
                        Object obj = objArr2[(i7 / 3) << 1];
                        zzllVar.a(m3);
                        break;
                    case 51:
                        if (m(i11, i7, zzitVar)) {
                            i8 = a.C(i11, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (m(i11, i7, zzitVar)) {
                            i8 = a.C(i11, i5, i8);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (m(i11, i7, zzitVar)) {
                            long v4 = v(j, zzitVar);
                            g8 = zzjr.g(i11);
                            A4 = zzjr.A(v4);
                            i8 += A4 + g8;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (m(i11, i7, zzitVar)) {
                            long v5 = v(j, zzitVar);
                            g8 = zzjr.g(i11);
                            A4 = zzjr.A(v5);
                            i8 += A4 + g8;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (m(i11, i7, zzitVar)) {
                            int u2 = u(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.h(u2);
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (m(i11, i7, zzitVar)) {
                            u = zzjr.u(i11);
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (m(i11, i7, zzitVar)) {
                            u = zzjr.w(i11);
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (m(i11, i7, zzitVar)) {
                            i8 = a.C(i11, 1, i8);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (!m(i11, i7, zzitVar)) {
                            break;
                        } else {
                            Object m4 = zznd.m(j, zzitVar);
                            if (m4 instanceof zzjc) {
                                u = zzjr.m(i11, (zzjc) m4);
                                i8 += u;
                                break;
                            } else {
                                g5 = zzjr.g(i11);
                                A3 = zzjr.y((String) m4);
                                u = A3 + g5;
                                i8 += u;
                            }
                        }
                    case 60:
                        if (m(i11, i7, zzitVar)) {
                            f2 = zzmh.f(i11, zznd.m(j, zzitVar), o(i7));
                            i8 += f2;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (m(i11, i7, zzitVar)) {
                            u = zzjr.m(i11, (zzjc) zznd.m(j, zzitVar));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (m(i11, i7, zzitVar)) {
                            u = zzjr.v(i11, u(j, zzitVar));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (m(i11, i7, zzitVar)) {
                            int u3 = u(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.h(u3);
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (m(i11, i7, zzitVar)) {
                            i8 = a.C(i11, i5, i8);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (m(i11, i7, zzitVar)) {
                            i8 = a.C(i11, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (m(i11, i7, zzitVar)) {
                            int u4 = u(j, zzitVar);
                            g5 = zzjr.g(i11);
                            A3 = zzjr.i((u4 >> 31) ^ (u4 << 1));
                            u = A3 + g5;
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (m(i11, i7, zzitVar)) {
                            long v6 = v(j, zzitVar);
                            g8 = zzjr.g(i11);
                            A4 = zzjr.A((v6 << 1) ^ (v6 >> 63));
                            i8 += A4 + g8;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (m(i11, i7, zzitVar)) {
                            u = zzjr.n(i11, (zzlq) zznd.m(j, zzitVar), o(i7));
                            i8 += u;
                            break;
                        } else {
                            break;
                        }
                }
                i7 += 3;
                i6 = i9;
                i5 = 4;
            }
            return i8 + zzmxVar.f(zzmxVar.g(zzitVar));
        }
        Unsafe unsafe2 = o;
        int i15 = -1;
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        while (i16 < iArr.length) {
            int p2 = p(i16);
            int i19 = iArr[i16];
            int i20 = (p2 & 267386880) >>> 20;
            if (i20 <= 17) {
                int i21 = iArr[i16 + 2];
                int i22 = i21 & 1048575;
                i = 1 << (i21 >>> 20);
                objArr = objArr2;
                if (i22 != i15) {
                    i18 = unsafe2.getInt(zzitVar, i22);
                    i15 = i22;
                }
            } else {
                objArr = objArr2;
                i = 0;
            }
            int i23 = i15;
            long j2 = p2 & 1048575;
            switch (i20) {
                case 0:
                    if ((i18 & i) != 0) {
                        c2 = '\b';
                        i17 = a.C(i19, 8, i17);
                        break;
                    }
                    c2 = '\b';
                    break;
                case 1:
                    if ((i18 & i) != 0) {
                        i17 = a.C(i19, 4, i17);
                    }
                    c2 = '\b';
                    break;
                case 2:
                    if ((i18 & i) != 0) {
                        long j3 = unsafe2.getLong(zzitVar, j2);
                        g = zzjr.g(i19);
                        A = zzjr.A(j3);
                        i2 = A + g;
                        i17 += i2;
                    }
                    c2 = '\b';
                    break;
                case 3:
                    if ((i18 & i) != 0) {
                        long j4 = unsafe2.getLong(zzitVar, j2);
                        g = zzjr.g(i19);
                        A = zzjr.A(j4);
                        i2 = A + g;
                        i17 += i2;
                    }
                    c2 = '\b';
                    break;
                case 4:
                    if ((i18 & i) != 0) {
                        i2 = zzjr.h(unsafe2.getInt(zzitVar, j2)) + zzjr.g(i19);
                        i17 += i2;
                    }
                    c2 = '\b';
                    break;
                case 5:
                    if ((i18 & i) != 0) {
                        i2 = zzjr.u(i19);
                        i17 += i2;
                    }
                    c2 = '\b';
                    break;
                case 6:
                    if ((i18 & i) != 0) {
                        i2 = zzjr.w(i19);
                        i17 += i2;
                    }
                    c2 = '\b';
                    break;
                case 7:
                    if ((i18 & i) != 0) {
                        i17 = a.C(i19, 1, i17);
                    }
                    c2 = '\b';
                    break;
                case 8:
                    if ((i18 & i) != 0) {
                        Object object = unsafe2.getObject(zzitVar, j2);
                        if (object instanceof zzjc) {
                            m = zzjr.m(i19, (zzjc) object);
                            i17 += m;
                        } else {
                            g2 = zzjr.g(i19);
                            y = zzjr.y((String) object);
                            m = y + g2;
                            i17 += m;
                        }
                    }
                    c2 = '\b';
                    break;
                case 9:
                    if ((i18 & i) != 0) {
                        f = zzmh.f(i19, unsafe2.getObject(zzitVar, j2), o(i16));
                        i17 += f;
                    }
                    c2 = '\b';
                    break;
                case 10:
                    if ((i18 & i) != 0) {
                        m = zzjr.m(i19, (zzjc) unsafe2.getObject(zzitVar, j2));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 11:
                    if ((i18 & i) != 0) {
                        m = zzjr.v(i19, unsafe2.getInt(zzitVar, j2));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 12:
                    if ((i18 & i) != 0) {
                        int i24 = unsafe2.getInt(zzitVar, j2);
                        g2 = zzjr.g(i19);
                        y = zzjr.h(i24);
                        m = y + g2;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 13:
                    if ((i18 & i) != 0) {
                        i17 = a.C(i19, 4, i17);
                        c2 = '\b';
                        break;
                    }
                    c2 = '\b';
                case 14:
                    if ((i18 & i) != 0) {
                        c2 = '\b';
                        i17 = a.C(i19, 8, i17);
                        break;
                    }
                    c2 = '\b';
                case 15:
                    if ((i18 & i) != 0) {
                        int i25 = unsafe2.getInt(zzitVar, j2);
                        g2 = zzjr.g(i19);
                        y = zzjr.i((i25 >> 31) ^ (i25 << 1));
                        m = y + g2;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 16:
                    if ((i18 & i) != 0) {
                        long j5 = unsafe2.getLong(zzitVar, j2);
                        g3 = zzjr.g(i19);
                        A2 = zzjr.A((j5 >> 63) ^ (j5 << 1));
                        m = A2 + g3;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 17:
                    if ((i18 & i) != 0) {
                        m = zzjr.n(i19, (zzlq) unsafe2.getObject(zzitVar, j2), o(i16));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 18:
                    f = zzmh.F(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 19:
                    f = zzmh.E(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 20:
                    List list11 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls11 = zzmh.f10246a;
                    if (list11.size() != 0) {
                        f = a.D(i19, list11.size(), zzmh.a(list11));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 21:
                    List list12 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls12 = zzmh.f10246a;
                    int size10 = list12.size();
                    if (size10 != 0) {
                        f = a.D(i19, size10, zzmh.d(list12));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 22:
                    List list13 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls13 = zzmh.f10246a;
                    int size11 = list13.size();
                    if (size11 != 0) {
                        f = a.D(i19, size11, zzmh.o(list13));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case ConnectionResult.API_DISABLED /* 23 */:
                    f = zzmh.F(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    f = zzmh.E(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 25:
                    List list14 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls14 = zzmh.f10246a;
                    int size12 = list14.size();
                    if (size12 == 0) {
                        g4 = 0;
                    } else {
                        g4 = (zzjr.g(i19) + 1) * size12;
                    }
                    i17 += g4;
                    c2 = '\b';
                    break;
                case 26:
                    f = zzmh.g(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 27:
                    f = zzmh.h(i19, (List) unsafe2.getObject(zzitVar, j2), o(i16));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 28:
                    f = zzmh.k(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 29:
                    List list15 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls15 = zzmh.f10246a;
                    int size13 = list15.size();
                    if (size13 != 0) {
                        f = a.D(i19, size13, zzmh.q(list15));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 30:
                    List list16 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls16 = zzmh.f10246a;
                    int size14 = list16.size();
                    if (size14 != 0) {
                        f = a.D(i19, size14, zzmh.l(list16));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 31:
                    f = zzmh.E(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 32:
                    f = zzmh.F(i19, (List) unsafe2.getObject(zzitVar, j2));
                    i17 += f;
                    c2 = '\b';
                    break;
                case 33:
                    List list17 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls17 = zzmh.f10246a;
                    int size15 = list17.size();
                    if (size15 != 0) {
                        f = a.D(i19, size15, zzmh.t(list17));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 34:
                    List list18 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls18 = zzmh.f10246a;
                    int size16 = list18.size();
                    if (size16 != 0) {
                        f = a.D(i19, size16, zzmh.i(list18));
                        i17 += f;
                        c2 = '\b';
                        break;
                    }
                    f = 0;
                    i17 += f;
                    c2 = '\b';
                case 35:
                    int x4 = zzmh.x((List) unsafe2.getObject(zzitVar, j2));
                    if (x4 > 0) {
                        i17 = a.c(x4, zzjr.g(i19), x4, i17);
                    }
                    c2 = '\b';
                    break;
                case 36:
                    int v7 = zzmh.v((List) unsafe2.getObject(zzitVar, j2));
                    if (v7 > 0) {
                        i17 = a.c(v7, zzjr.g(i19), v7, i17);
                    }
                    c2 = '\b';
                    break;
                case 37:
                    int a3 = zzmh.a((List) unsafe2.getObject(zzitVar, j2));
                    if (a3 > 0) {
                        i17 = a.c(a3, zzjr.g(i19), a3, i17);
                    }
                    c2 = '\b';
                    break;
                case 38:
                    int d2 = zzmh.d((List) unsafe2.getObject(zzitVar, j2));
                    if (d2 > 0) {
                        i17 = a.c(d2, zzjr.g(i19), d2, i17);
                    }
                    c2 = '\b';
                    break;
                case 39:
                    int o4 = zzmh.o((List) unsafe2.getObject(zzitVar, j2));
                    if (o4 > 0) {
                        i17 = a.c(o4, zzjr.g(i19), o4, i17);
                    }
                    c2 = '\b';
                    break;
                case 40:
                    int x5 = zzmh.x((List) unsafe2.getObject(zzitVar, j2));
                    if (x5 > 0) {
                        i17 = a.c(x5, zzjr.g(i19), x5, i17);
                    }
                    c2 = '\b';
                    break;
                case 41:
                    int v8 = zzmh.v((List) unsafe2.getObject(zzitVar, j2));
                    if (v8 > 0) {
                        i17 = a.c(v8, zzjr.g(i19), v8, i17);
                    }
                    c2 = '\b';
                    break;
                case 42:
                    List list19 = (List) unsafe2.getObject(zzitVar, j2);
                    Class cls19 = zzmh.f10246a;
                    int size17 = list19.size();
                    if (size17 > 0) {
                        i17 = a.c(size17, zzjr.g(i19), size17, i17);
                    }
                    c2 = '\b';
                    break;
                case 43:
                    int q2 = zzmh.q((List) unsafe2.getObject(zzitVar, j2));
                    if (q2 > 0) {
                        i17 = a.c(q2, zzjr.g(i19), q2, i17);
                    }
                    c2 = '\b';
                    break;
                case 44:
                    int l2 = zzmh.l((List) unsafe2.getObject(zzitVar, j2));
                    if (l2 > 0) {
                        i17 = a.c(l2, zzjr.g(i19), l2, i17);
                    }
                    c2 = '\b';
                    break;
                case 45:
                    int v9 = zzmh.v((List) unsafe2.getObject(zzitVar, j2));
                    if (v9 > 0) {
                        i17 = a.c(v9, zzjr.g(i19), v9, i17);
                    }
                    c2 = '\b';
                    break;
                case 46:
                    int x6 = zzmh.x((List) unsafe2.getObject(zzitVar, j2));
                    if (x6 > 0) {
                        i17 = a.c(x6, zzjr.g(i19), x6, i17);
                    }
                    c2 = '\b';
                    break;
                case 47:
                    int t2 = zzmh.t((List) unsafe2.getObject(zzitVar, j2));
                    if (t2 > 0) {
                        i17 = a.c(t2, zzjr.g(i19), t2, i17);
                    }
                    c2 = '\b';
                    break;
                case 48:
                    int i26 = zzmh.i((List) unsafe2.getObject(zzitVar, j2));
                    if (i26 > 0) {
                        i17 = a.c(i26, zzjr.g(i19), i26, i17);
                    }
                    c2 = '\b';
                    break;
                case 49:
                    List list20 = (List) unsafe2.getObject(zzitVar, j2);
                    zzmf o5 = o(i16);
                    Class cls20 = zzmh.f10246a;
                    int size18 = list20.size();
                    if (size18 == 0) {
                        i3 = 0;
                    } else {
                        int i27 = 0;
                        i3 = 0;
                        while (i27 < size18) {
                            i3 += zzjr.n(i19, (zzlq) list20.get(i27), o5);
                            i27++;
                            list20 = list20;
                        }
                    }
                    i17 += i3;
                    c2 = '\b';
                    break;
                case 50:
                    Object object2 = unsafe2.getObject(zzitVar, j2);
                    Object obj2 = objArr[(i16 / 3) << 1];
                    zzllVar.a(object2);
                    c2 = '\b';
                    break;
                case 51:
                    if (m(i19, i16, zzitVar)) {
                        c2 = '\b';
                        i17 = a.C(i19, 8, i17);
                        break;
                    }
                    c2 = '\b';
                case 52:
                    if (m(i19, i16, zzitVar)) {
                        i17 = a.C(i19, 4, i17);
                        c2 = '\b';
                        break;
                    }
                    c2 = '\b';
                case 53:
                    if (m(i19, i16, zzitVar)) {
                        long v10 = v(j2, zzitVar);
                        g3 = zzjr.g(i19);
                        A2 = zzjr.A(v10);
                        m = A2 + g3;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 54:
                    if (m(i19, i16, zzitVar)) {
                        long v11 = v(j2, zzitVar);
                        g3 = zzjr.g(i19);
                        A2 = zzjr.A(v11);
                        m = A2 + g3;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 55:
                    if (m(i19, i16, zzitVar)) {
                        int u5 = u(j2, zzitVar);
                        g2 = zzjr.g(i19);
                        y = zzjr.h(u5);
                        m = y + g2;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 56:
                    if (m(i19, i16, zzitVar)) {
                        m = zzjr.u(i19);
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 57:
                    if (m(i19, i16, zzitVar)) {
                        m = zzjr.w(i19);
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 58:
                    if (m(i19, i16, zzitVar)) {
                        i17 = a.C(i19, 1, i17);
                        c2 = '\b';
                        break;
                    }
                    c2 = '\b';
                    break;
                case 59:
                    if (m(i19, i16, zzitVar)) {
                        Object object3 = unsafe2.getObject(zzitVar, j2);
                        if (object3 instanceof zzjc) {
                            m = zzjr.m(i19, (zzjc) object3);
                            i17 += m;
                        } else {
                            g2 = zzjr.g(i19);
                            y = zzjr.y((String) object3);
                            m = y + g2;
                            i17 += m;
                        }
                    }
                    c2 = '\b';
                    break;
                case 60:
                    if (m(i19, i16, zzitVar)) {
                        f = zzmh.f(i19, unsafe2.getObject(zzitVar, j2), o(i16));
                        i17 += f;
                    }
                    c2 = '\b';
                    break;
                case 61:
                    if (m(i19, i16, zzitVar)) {
                        m = zzjr.m(i19, (zzjc) unsafe2.getObject(zzitVar, j2));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 62:
                    if (m(i19, i16, zzitVar)) {
                        m = zzjr.v(i19, u(j2, zzitVar));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 63:
                    if (m(i19, i16, zzitVar)) {
                        int u6 = u(j2, zzitVar);
                        g2 = zzjr.g(i19);
                        y = zzjr.h(u6);
                        m = y + g2;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 64:
                    if (m(i19, i16, zzitVar)) {
                        i17 = a.C(i19, 4, i17);
                        c2 = '\b';
                        break;
                    }
                    c2 = '\b';
                case 65:
                    if (m(i19, i16, zzitVar)) {
                        c2 = '\b';
                        i17 = a.C(i19, 8, i17);
                        break;
                    }
                    c2 = '\b';
                case 66:
                    if (m(i19, i16, zzitVar)) {
                        int u7 = u(j2, zzitVar);
                        g2 = zzjr.g(i19);
                        y = zzjr.i((u7 >> 31) ^ (u7 << 1));
                        m = y + g2;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 67:
                    if (m(i19, i16, zzitVar)) {
                        long v12 = v(j2, zzitVar);
                        g3 = zzjr.g(i19);
                        A2 = zzjr.A((v12 >> 63) ^ (v12 << 1));
                        m = A2 + g3;
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                case 68:
                    if (m(i19, i16, zzitVar)) {
                        m = zzjr.n(i19, (zzlq) unsafe2.getObject(zzitVar, j2), o(i16));
                        i17 += m;
                    }
                    c2 = '\b';
                    break;
                default:
                    c2 = '\b';
                    break;
            }
            i16 += 3;
            i15 = i23;
            objArr2 = objArr;
        }
        int f3 = i17 + zzmxVar.f(zzmxVar.g(zzitVar));
        if (this.d) {
            zzkb c3 = this.l.c(zzitVar);
            int i28 = 0;
            int i29 = 0;
            while (true) {
                zzmj zzmjVar = c3.f10213a;
                if (i28 < zzmjVar.f.size()) {
                    Map.Entry c4 = zzmjVar.c(i28);
                    i29 += zzkb.f((zzkd) c4.getKey(), c4.getValue());
                    i28++;
                } else {
                    for (Map.Entry entry : zzmjVar.f()) {
                        i29 += zzkb.f((zzkd) entry.getKey(), entry.getValue());
                    }
                    return f3 + i29;
                }
            }
        } else {
            return f3;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01ff, code lost:
    
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00d8, code lost:
    
        if (r4 != false) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00da, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00db, code lost:
    
        r3 = r8 + r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001d. Please report as an issue. */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int d(com.google.android.gms.internal.drive.zzkk r12) {
        /*
            Method dump skipped, instructions count: 788
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.d(com.google.android.gms.internal.drive.zzkk):int");
    }

    @Override // com.google.android.gms.internal.drive.zzmf
    public final void e(zzkk zzkkVar, zzkk zzkkVar2) {
        zzkk zzkkVar3;
        zzkkVar2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f10235a;
            if (i < iArr.length) {
                int p = p(i);
                long j = p & 1048575;
                int i2 = iArr[i];
                switch ((p & 267386880) >>> 20) {
                    case 0:
                        zzkkVar3 = zzkkVar;
                        if (!n(i, zzkkVar2)) {
                            break;
                        } else {
                            zznd.zzd zzdVar = zznd.d;
                            zzdVar.b(zzkkVar3, j, zzdVar.k(j, zzkkVar2));
                            q(i, zzkkVar3);
                            continue;
                        }
                    case 1:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar2 = zznd.d;
                            zzdVar2.c(zzkkVar3, j, zzdVar2.j(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 2:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar3 = zznd.d;
                            zzdVar3.d(zzkkVar3, j, zzdVar3.h(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 3:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar4 = zznd.d;
                            zzdVar4.d(zzkkVar3, j, zzdVar4.h(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 4:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 5:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar5 = zznd.d;
                            zzdVar5.d(zzkkVar3, j, zzdVar5.h(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 6:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 7:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar6 = zznd.d;
                            zzdVar6.e(zzkkVar3, j, zzdVar6.i(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 8:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.c(j, zzkkVar3, zznd.m(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 9:
                        zzkkVar3 = zzkkVar;
                        k(i, zzkkVar3, zzkkVar2);
                        continue;
                    case 10:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.c(j, zzkkVar3, zznd.m(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 11:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 12:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 13:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 14:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar7 = zznd.d;
                            zzdVar7.d(zzkkVar3, j, zzdVar7.h(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 15:
                        zzkkVar3 = zzkkVar;
                        if (n(i, zzkkVar2)) {
                            zznd.b(zznd.d.g(j, zzkkVar2), j, zzkkVar3);
                            q(i, zzkkVar3);
                            break;
                        } else {
                            continue;
                        }
                    case 16:
                        if (n(i, zzkkVar2)) {
                            zznd.zzd zzdVar8 = zznd.d;
                            zzkkVar3 = zzkkVar;
                            zzdVar8.d(zzkkVar3, j, zzdVar8.h(j, zzkkVar2));
                            q(i, zzkkVar3);
                            break;
                        }
                        break;
                    case 17:
                        k(i, zzkkVar, zzkkVar2);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case ConnectionResult.API_DISABLED /* 23 */:
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.j.b(j, zzkkVar, zzkkVar2);
                        break;
                    case 50:
                        Class cls = zzmh.f10246a;
                        zznd.c(j, zzkkVar, this.m.d(zznd.m(j, zzkkVar), zznd.m(j, zzkkVar2)));
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (m(i2, i, zzkkVar2)) {
                            zznd.c(j, zzkkVar, zznd.m(j, zzkkVar2));
                            zznd.b(i2, iArr[i + 2] & 1048575, zzkkVar);
                            break;
                        }
                        break;
                    case 60:
                        r(i, zzkkVar, zzkkVar2);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (m(i2, i, zzkkVar2)) {
                            zznd.c(j, zzkkVar, zznd.m(j, zzkkVar2));
                            zznd.b(i2, iArr[i + 2] & 1048575, zzkkVar);
                            break;
                        }
                        break;
                    case 68:
                        r(i, zzkkVar, zzkkVar2);
                        break;
                }
                zzkkVar3 = zzkkVar;
                i += 3;
                zzkkVar = zzkkVar3;
            } else {
                zzkk zzkkVar4 = zzkkVar;
                if (!this.e) {
                    Class cls2 = zzmh.f10246a;
                    zzmx zzmxVar = this.k;
                    zzmxVar.d(zzkkVar4, zzmxVar.e(zzmxVar.g(zzkkVar4), zzmxVar.g(zzkkVar2)));
                    if (this.d) {
                        zzmh.c(this.l, zzkkVar4, zzkkVar2);
                        return;
                    }
                    return;
                }
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        if (com.google.android.gms.internal.drive.zzmh.n(com.google.android.gms.internal.drive.zznd.m(r7, r12), com.google.android.gms.internal.drive.zznd.m(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0082, code lost:
    
        if (r5.h(r7, r12) != r5.h(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0095, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00aa, code lost:
    
        if (r5.h(r7, r12) != r5.h(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d1, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00e5, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00fb, code lost:
    
        if (com.google.android.gms.internal.drive.zzmh.n(com.google.android.gms.internal.drive.zznd.m(r7, r12), com.google.android.gms.internal.drive.zznd.m(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0111, code lost:
    
        if (com.google.android.gms.internal.drive.zzmh.n(com.google.android.gms.internal.drive.zznd.m(r7, r12), com.google.android.gms.internal.drive.zznd.m(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0127, code lost:
    
        if (com.google.android.gms.internal.drive.zzmh.n(com.google.android.gms.internal.drive.zznd.m(r7, r12), com.google.android.gms.internal.drive.zznd.m(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x013b, code lost:
    
        if (r5.i(r7, r12) != r5.i(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x014f, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0165, code lost:
    
        if (r5.h(r7, r12) != r5.h(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0179, code lost:
    
        if (r5.g(r7, r12) != r5.g(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x018f, code lost:
    
        if (r5.h(r7, r12) != r5.h(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x01a5, code lost:
    
        if (r5.h(r7, r12) != r5.h(r7, r13)) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x01c1, code lost:
    
        if (java.lang.Float.floatToIntBits(r5.j(r7, r12)) != java.lang.Float.floatToIntBits(r5.j(r7, r13))) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x01df, code lost:
    
        if (java.lang.Double.doubleToLongBits(r5.k(r7, r12)) != java.lang.Double.doubleToLongBits(r5.k(r7, r13))) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003a, code lost:
    
        if (com.google.android.gms.internal.drive.zzmh.n(com.google.android.gms.internal.drive.zznd.m(r7, r12), com.google.android.gms.internal.drive.zznd.m(r7, r13)) != false) goto L105;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0017. Please report as an issue. */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean f(com.google.android.gms.internal.drive.zzkk r12, com.google.android.gms.internal.drive.zzkk r13) {
        /*
            Method dump skipped, instructions count: 670
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.f(com.google.android.gms.internal.drive.zzkk, com.google.android.gms.internal.drive.zzkk):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0102, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.drive.zzmf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean g(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.g(java.lang.Object):boolean");
    }

    public final void k(int i, Object obj, Object obj2) {
        long p = p(i) & 1048575;
        if (n(i, obj2)) {
            Object m = zznd.m(p, obj);
            Object m2 = zznd.m(p, obj2);
            if (m != null && m2 != null) {
                Charset charset = zzkm.f10222a;
                zzkk.zza e = ((zzlq) m).e();
                zzlq zzlqVar = (zzlq) m2;
                if (e.f10220c.getClass().isInstance(zzlqVar)) {
                    e.g((zzit) zzlqVar);
                    zznd.c(p, obj, e.i());
                    q(i, obj);
                    return;
                }
                throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
            }
            if (m2 != null) {
                zznd.c(p, obj, m2);
                q(i, obj);
            }
        }
    }

    public final void l(zzns zznsVar, int i, Object obj, int i2) {
        if (obj == null) {
            return;
        }
        Object obj2 = this.b[(i2 / 3) << 1];
        this.m.zzm();
        throw null;
    }

    public final boolean m(int i, int i2, Object obj) {
        if (zznd.d.g(this.f10235a[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    public final boolean n(int i, Object obj) {
        if (this.e) {
            int p = p(i);
            long j = p & 1048575;
            switch ((p & 267386880) >>> 20) {
                case 0:
                    if (zznd.d.k(j, obj) == 0.0d) {
                        return false;
                    }
                    break;
                case 1:
                    if (zznd.d.j(j, obj) == 0.0f) {
                        return false;
                    }
                    break;
                case 2:
                    if (zznd.d.h(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zznd.d.h(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zznd.d.h(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zznd.d.i(j, obj);
                case 8:
                    Object m = zznd.m(j, obj);
                    if (m instanceof String) {
                        if (((String) m).isEmpty()) {
                            return false;
                        }
                    } else if (m instanceof zzjc) {
                        if (zzjc.f.equals(m)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zznd.m(j, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzjc.f.equals(zznd.m(j, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zznd.d.h(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zznd.d.g(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zznd.d.h(j, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zznd.m(j, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else {
            if ((zznd.d.g(r6 & 1048575, obj) & (1 << (this.f10235a[i + 2] >>> 20))) == 0) {
                return false;
            }
        }
        return true;
    }

    public final zzmf o(int i) {
        int i2 = (i / 3) << 1;
        Object[] objArr = this.b;
        zzmf zzmfVar = (zzmf) objArr[i2];
        if (zzmfVar != null) {
            return zzmfVar;
        }
        zzmf a2 = zzmd.f10242c.a((Class) objArr[i2 + 1]);
        objArr[i2] = a2;
        return a2;
    }

    public final int p(int i) {
        return this.f10235a[i + 1];
    }

    public final void q(int i, Object obj) {
        if (this.e) {
            return;
        }
        int i2 = this.f10235a[i + 2];
        long j = i2 & 1048575;
        zznd.b(zznd.d.g(j, obj) | (1 << (i2 >>> 20)), j, obj);
    }

    public final void r(int i, Object obj, Object obj2) {
        int p = p(i);
        int i2 = this.f10235a[i];
        long j = p & 1048575;
        if (m(i2, i, obj2)) {
            Object m = zznd.m(j, obj);
            Object m2 = zznd.m(j, obj2);
            if (m != null && m2 != null) {
                Charset charset = zzkm.f10222a;
                zzkk.zza e = ((zzlq) m).e();
                zzlq zzlqVar = (zzlq) m2;
                if (e.f10220c.getClass().isInstance(zzlqVar)) {
                    e.g((zzit) zzlqVar);
                    zznd.c(j, obj, e.i());
                    zznd.b(i2, r1[i + 2] & 1048575, obj);
                    return;
                }
                throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
            }
            if (m2 != null) {
                zznd.c(j, obj, m2);
                zznd.b(i2, r1[i + 2] & 1048575, obj);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:237:0x0493  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x049d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(java.lang.Object r22, com.google.android.gms.internal.drive.zzns r23) {
        /*
            Method dump skipped, instructions count: 1328
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzlu.s(java.lang.Object, com.google.android.gms.internal.drive.zzns):void");
    }

    public final boolean t(zzkk zzkkVar, Object obj, int i) {
        if (n(i, zzkkVar) == n(i, obj)) {
            return true;
        }
        return false;
    }
}
