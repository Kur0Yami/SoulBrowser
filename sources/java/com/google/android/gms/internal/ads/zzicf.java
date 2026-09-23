package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzicf<T> implements zzicu<T> {
    public static final int[] m = new int[0];
    public static final Unsafe n = zzidm.o();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f8933a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f8934c;
    public final int d;
    public final zzicc e;
    public final boolean f;
    public final boolean g;
    public final int[] h;
    public final int i;
    public final int j;
    public final zzidf k;
    public final zziac l;

    public zzicf(int[] iArr, Object[] objArr, int i, int i2, zzicc zziccVar, int[] iArr2, int i3, int i4, zzidf zzidfVar, zziac zziacVar) {
        this.f8933a = iArr;
        this.b = objArr;
        this.f8934c = i;
        this.d = i2;
        this.g = zziccVar instanceof zziar;
        boolean z = false;
        if (zziacVar != null && (zziccVar instanceof zzian)) {
            z = true;
        }
        this.f = z;
        this.h = iArr2;
        this.i = i3;
        this.j = i4;
        this.k = zzidfVar;
        this.l = zziacVar;
        this.e = zziccVar;
    }

    public static Field A(Class cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.e(11, str) + name.length() + 29 + String.valueOf(arrays).length());
            android.support.v4.media.a.z(sb, "Field ", str, " for ", name);
            throw new RuntimeException(android.support.v4.media.a.p(sb, " not found. Known fields are ", arrays), e);
        }
    }

    public static int k(int i) {
        return (i >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public static boolean l(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zziar) {
            return ((zziar) obj).n();
        }
        return true;
    }

    public static void m(Object obj) {
        if (l(obj)) {
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public static int n(long j, Object obj) {
        return ((Integer) zzidm.k(j, obj)).intValue();
    }

    public static long o(long j, Object obj) {
        return ((Long) zzidm.k(j, obj)).longValue();
    }

    public static final int w(byte[] bArr, int i, int i2, zzids zzidsVar, Class cls, zzhyz zzhyzVar) {
        boolean z;
        zzids zzidsVar2 = zzids.g;
        switch (zzidsVar.ordinal()) {
            case 0:
                int i3 = i + 8;
                zzhyzVar.f8891c = Double.valueOf(Double.longBitsToDouble(zzhza.e(bArr, i)));
                return i3;
            case 1:
                int i4 = i + 4;
                zzhyzVar.f8891c = Float.valueOf(Float.intBitsToFloat(zzhza.d(bArr, i)));
                return i4;
            case 2:
            case 3:
                int c2 = zzhza.c(bArr, i, zzhyzVar);
                zzhyzVar.f8891c = Long.valueOf(zzhyzVar.b);
                return c2;
            case 4:
            case 12:
            case 13:
                int a2 = zzhza.a(bArr, i, zzhyzVar);
                zzhyzVar.f8891c = Integer.valueOf(zzhyzVar.f8890a);
                return a2;
            case 5:
            case 15:
                int i5 = i + 8;
                zzhyzVar.f8891c = Long.valueOf(zzhza.e(bArr, i));
                return i5;
            case 6:
            case 14:
                int i6 = i + 4;
                zzhyzVar.f8891c = Integer.valueOf(zzhza.d(bArr, i));
                return i6;
            case 7:
                int c3 = zzhza.c(bArr, i, zzhyzVar);
                if (zzhyzVar.b != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzhyzVar.f8891c = Boolean.valueOf(z);
                return c3;
            case 8:
                return zzhza.f(bArr, i, zzhyzVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                zzicu a3 = zzicm.f8938c.a(cls);
                Object zza = a3.zza();
                int h = zzhza.h(zza, a3, bArr, i, i2, zzhyzVar);
                a3.b(zza);
                zzhyzVar.f8891c = zza;
                return h;
            case 11:
                return zzhza.g(bArr, i, zzhyzVar);
            case 16:
                int a4 = zzhza.a(bArr, i, zzhyzVar);
                zzhyzVar.f8891c = Integer.valueOf(zzhzq.f(zzhyzVar.f8890a));
                return a4;
            case 17:
                int c4 = zzhza.c(bArr, i, zzhyzVar);
                zzhyzVar.f8891c = Long.valueOf(zzhzq.g(zzhyzVar.b));
                return c4;
        }
    }

    public static zzidg x(Object obj) {
        zziar zziarVar = (zziar) obj;
        zzidg zzidgVar = zziarVar.zzt;
        if (zzidgVar == zzidg.f) {
            zzidg a2 = zzidg.a();
            zziarVar.zzt = a2;
            return a2;
        }
        return zzidgVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzicf z(com.google.android.gms.internal.ads.zzibz r35, com.google.android.gms.internal.ads.zzidf r36, com.google.android.gms.internal.ads.zziad r37) {
        /*
            Method dump skipped, instructions count: 1073
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.z(com.google.android.gms.internal.ads.zzibz, com.google.android.gms.internal.ads.zzidf, com.google.android.gms.internal.ads.zziad):com.google.android.gms.internal.ads.zzicf");
    }

    public final void B(int i, Object obj, Object obj2) {
        if (!r(i, obj2)) {
            return;
        }
        int a2 = a(i) & 1048575;
        Unsafe unsafe = n;
        long j = a2;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzicu D = D(i);
            if (!r(i, obj)) {
                if (!l(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zza = D.zza();
                    D.c(zza, object);
                    unsafe.putObject(obj, j, zza);
                }
                s(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!l(object2)) {
                Object zza2 = D.zza();
                D.c(zza2, object2);
                unsafe.putObject(obj, j, zza2);
                object2 = zza2;
            }
            D.c(object2, object);
            return;
        }
        int i2 = this.f8933a[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(i2, 38) + obj3.length());
        sb.append("Source subfield ");
        sb.append(i2);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    public final void C(int i, Object obj, Object obj2) {
        int[] iArr = this.f8933a;
        int i2 = iArr[i];
        if (!t(i2, i, obj2)) {
            return;
        }
        int a2 = a(i) & 1048575;
        Unsafe unsafe = n;
        long j = a2;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzicu D = D(i);
            if (!t(i2, i, obj)) {
                if (!l(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zza = D.zza();
                    D.c(zza, object);
                    unsafe.putObject(obj, j, zza);
                }
                u(i2, i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!l(object2)) {
                Object zza2 = D.zza();
                D.c(zza2, object2);
                unsafe.putObject(obj, j, zza2);
                object2 = zza2;
            }
            D.c(object2, object);
            return;
        }
        int i3 = iArr[i];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(i3, 38) + obj3.length());
        sb.append("Source subfield ");
        sb.append(i3);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    public final zzicu D(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        zzicu zzicuVar = (zzicu) objArr[i3];
        if (zzicuVar != null) {
            return zzicuVar;
        }
        zzicu a2 = zzicm.f8938c.a((Class) objArr[i3 + 1]);
        objArr[i3] = a2;
        return a2;
    }

    public final Object E(int i) {
        int i2 = i / 3;
        return this.b[i2 + i2];
    }

    public final zziax F(int i) {
        int i2 = i / 3;
        return (zziax) this.b[i2 + i2 + 1];
    }

    public final Object G(int i, Object obj) {
        zzicu D = D(i);
        int a2 = a(i) & 1048575;
        if (!r(i, obj)) {
            return D.zza();
        }
        Object object = n.getObject(obj, a2);
        if (l(object)) {
            return object;
        }
        Object zza = D.zza();
        if (object != null) {
            D.c(zza, object);
        }
        return zza;
    }

    public final void H(int i, Object obj, Object obj2) {
        n.putObject(obj, a(i) & 1048575, obj2);
        s(i, obj);
    }

    public final Object I(int i, int i2, Object obj) {
        zzicu D = D(i2);
        if (!t(i, i2, obj)) {
            return D.zza();
        }
        Object object = n.getObject(obj, a(i2) & 1048575);
        if (l(object)) {
            return object;
        }
        Object zza = D.zza();
        if (object != null) {
            D.c(zza, object);
        }
        return zza;
    }

    public final void J(int i, int i2, Object obj, Object obj2) {
        n.putObject(obj, a(i2) & 1048575, obj2);
        u(i, i2, obj);
    }

    public final Object K(Object obj, int i, Object obj2, zzidf zzidfVar, Object obj3) {
        zziax F;
        int i2 = this.f8933a[i];
        Object k = zzidm.k(a(i) & 1048575, obj);
        if (k == null || (F = F(i)) == null) {
            return obj2;
        }
        zzibu zzibuVar = ((zzibv) E(i)).f8928a;
        zzids zzidsVar = zzibuVar.b;
        zzids zzidsVar2 = zzibuVar.f8926a;
        Iterator it = ((zzibw) k).entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry entry = (Map.Entry) it.next();
            if (!F.j(((Integer) entry.getValue()).intValue())) {
                if (obj2 == null) {
                    obj2 = zzidfVar.h(obj3);
                }
                int f = zziag.f(zzidsVar2, 1, entry.getKey()) + zziag.f(zzidsVar, 2, entry.getValue());
                zzhzl zzhzlVar = zzhzl.f;
                byte[] bArr = new byte[f];
                Logger logger = zzhzw.b;
                zzhzt zzhztVar = new zzhzt(bArr, f);
                try {
                    Object key = entry.getKey();
                    Object value = entry.getValue();
                    zziag.e(zzhztVar, zzidsVar2, 1, key);
                    zziag.e(zzhztVar, zzidsVar, 2, value);
                    zzhztVar.e();
                    zzidfVar.d(obj2, i2, new zzhzj(bArr));
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return obj2;
    }

    public final void L(int i, zzhzr zzhzrVar, Object obj) {
        boolean z;
        if ((536870912 & i) != 0) {
            z = true;
        } else {
            z = false;
        }
        long j = i & 1048575;
        if (z) {
            zzidm.l(j, obj, zzhzrVar.I());
        } else if (this.g) {
            zzidm.l(j, obj, zzhzrVar.H());
        } else {
            zzidm.l(j, obj, zzhzrVar.L());
        }
    }

    public final int a(int i) {
        return this.f8933a[i + 1];
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void b(Object obj) {
        if (l(obj)) {
            if (obj instanceof zziar) {
                zziar zziarVar = (zziar) obj;
                zziarVar.m(Integer.MAX_VALUE);
                zziarVar.zzq = 0;
                zziarVar.o();
            }
            int i = 0;
            while (true) {
                int[] iArr = this.f8933a;
                if (i < iArr.length) {
                    int a2 = a(i);
                    int i2 = 1048575 & a2;
                    int k = k(a2);
                    long j = i2;
                    if (k != 9) {
                        if (k != 60 && k != 68) {
                            switch (k) {
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
                                    ((zzibd) zzidm.k(j, obj)).zzb();
                                    break;
                                case 50:
                                    Unsafe unsafe = n;
                                    Object object = unsafe.getObject(obj, j);
                                    if (object == null) {
                                        break;
                                    } else {
                                        ((zzibw) object).f8929c = false;
                                        unsafe.putObject(obj, j, object);
                                        break;
                                    }
                            }
                        } else if (t(iArr[i], i, obj)) {
                            D(i).b(n.getObject(obj, j));
                        }
                        i += 3;
                    }
                    if (r(i, obj)) {
                        D(i).b(n.getObject(obj, j));
                    }
                    i += 3;
                } else {
                    this.k.j(obj);
                    if (this.f) {
                        this.l.a(obj);
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void c(Object obj, Object obj2) {
        Object obj3;
        m(obj);
        obj2.getClass();
        int i = 0;
        while (true) {
            int[] iArr = this.f8933a;
            if (i < iArr.length) {
                int a2 = a(i);
                int i2 = 1048575 & a2;
                int k = k(a2);
                int i3 = iArr[i];
                long j = i2;
                switch (k) {
                    case 0:
                        if (r(i, obj2)) {
                            zzidl zzidlVar = zzidm.f8954c;
                            obj3 = obj;
                            zzidlVar.g(obj3, j, zzidlVar.f(j, obj2));
                            s(i, obj3);
                            break;
                        }
                        break;
                    case 1:
                        if (r(i, obj2)) {
                            zzidl zzidlVar2 = zzidm.f8954c;
                            zzidlVar2.e(obj, j, zzidlVar2.d(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 2:
                        if (r(i, obj2)) {
                            zzidm.j(obj, j, zzidm.i(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 3:
                        if (r(i, obj2)) {
                            zzidm.j(obj, j, zzidm.i(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 4:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 5:
                        if (r(i, obj2)) {
                            zzidm.j(obj, j, zzidm.i(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 6:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 7:
                        if (r(i, obj2)) {
                            zzidl zzidlVar3 = zzidm.f8954c;
                            zzidlVar3.c(obj, j, zzidlVar3.b(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 8:
                        if (r(i, obj2)) {
                            zzidm.l(j, obj, zzidm.k(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 9:
                        B(i, obj, obj2);
                        break;
                    case 10:
                        if (r(i, obj2)) {
                            zzidm.l(j, obj, zzidm.k(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 11:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 12:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 13:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 14:
                        if (r(i, obj2)) {
                            zzidm.j(obj, j, zzidm.i(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 15:
                        if (r(i, obj2)) {
                            zzidm.h(zzidm.g(j, obj2), j, obj);
                            s(i, obj);
                            break;
                        }
                        break;
                    case 16:
                        if (r(i, obj2)) {
                            zzidm.j(obj, j, zzidm.i(j, obj2));
                            s(i, obj);
                            break;
                        }
                        break;
                    case 17:
                        B(i, obj, obj2);
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
                        zzibd zzibdVar = (zzibd) zzidm.k(j, obj);
                        zzibd zzibdVar2 = (zzibd) zzidm.k(j, obj2);
                        int size = zzibdVar.size();
                        int size2 = zzibdVar2.size();
                        if (size > 0 && size2 > 0) {
                            if (!zzibdVar.zza()) {
                                zzibdVar = zzibdVar.e(size2 + size);
                            }
                            zzibdVar.addAll(zzibdVar2);
                        }
                        if (size > 0) {
                            zzibdVar2 = zzibdVar;
                        }
                        zzidm.l(j, obj, zzibdVar2);
                        break;
                    case 50:
                        zzidh zzidhVar = zzicw.f8944a;
                        zzidm.l(j, obj, zzibx.a(zzidm.k(j, obj), zzidm.k(j, obj2)));
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
                        if (t(i3, i, obj2)) {
                            zzidm.l(j, obj, zzidm.k(j, obj2));
                            u(i3, i, obj);
                            break;
                        }
                        break;
                    case 60:
                        C(i, obj, obj2);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (t(i3, i, obj2)) {
                            zzidm.l(j, obj, zzidm.k(j, obj2));
                            u(i3, i, obj);
                            break;
                        }
                        break;
                    case 68:
                        C(i, obj, obj2);
                        break;
                }
                obj3 = obj;
                i += 3;
                obj = obj3;
            } else {
                Object obj4 = obj;
                zzicw.e(obj4, obj2);
                if (this.f && !((zzian) obj2).zza.f8908a.isEmpty()) {
                    throw null;
                }
                return;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzicu
    public final int d(zziar zziarVar) {
        int i;
        int b;
        int c2;
        int c3;
        int i2;
        int j;
        int i3;
        int b2;
        int b3;
        int size;
        int k;
        int b4;
        int b5;
        int b6;
        int i4;
        int b7;
        int c4;
        zzicf<T> zzicfVar = this;
        zziar zziarVar2 = zziarVar;
        Unsafe unsafe = n;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = zzicfVar.f8933a;
            if (i7 < iArr.length) {
                int a2 = zzicfVar.a(i7);
                int k2 = k(a2);
                int i10 = iArr[i7];
                int i11 = iArr[i7 + 2];
                int i12 = i11 & i5;
                if (k2 <= 17) {
                    if (i12 != i6) {
                        if (i12 == i5) {
                            i8 = 0;
                        } else {
                            i8 = unsafe.getInt(zziarVar2, i12);
                        }
                        i6 = i12;
                    }
                    i = 1 << (i11 >>> 20);
                } else {
                    i = 0;
                }
                int i13 = a2 & i5;
                if (k2 >= zziah.f.f8910c) {
                    zziah.g.getClass();
                }
                long j2 = i13;
                switch (k2) {
                    case 0:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 2:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            long j3 = unsafe.getLong(zziarVar2, j2);
                            b = zzhzw.b(i10 << 3);
                            c2 = zzhzw.c(j3);
                            i9 += c2 + b;
                        }
                        zzicfVar = this;
                        break;
                    case 3:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            long j4 = unsafe.getLong(zziarVar2, j2);
                            b = zzhzw.b(i10 << 3);
                            c2 = zzhzw.c(j4);
                            i9 += c2 + b;
                        }
                        zzicfVar = this;
                        break;
                    case 4:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            long j5 = unsafe.getInt(zziarVar2, j2);
                            b = zzhzw.b(i10 << 3);
                            c2 = zzhzw.c(j5);
                            i9 += c2 + b;
                        }
                        zzicfVar = this;
                        break;
                    case 5:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 6:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 7:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 1, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 8:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            int i14 = i10 << 3;
                            Object object = unsafe.getObject(zziarVar2, j2);
                            if (object instanceof zzhzl) {
                                int b8 = zzhzw.b(i14);
                                int k3 = ((zzhzl) object).k();
                                i9 = a.m(k3, k3, b8, i9);
                            } else {
                                b = zzhzw.b(i14);
                                c2 = zzhzw.d((String) object);
                                i9 += c2 + b;
                            }
                        }
                        zzicfVar = this;
                        break;
                    case 9:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            c3 = zzicw.c(i10, unsafe.getObject(zziarVar2, j2), zzicfVar.D(i7));
                            i9 += c3;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            zzhzl zzhzlVar = (zzhzl) unsafe.getObject(zziarVar2, j2);
                            int b9 = zzhzw.b(i10 << 3);
                            int k4 = zzhzlVar.k();
                            i9 = a.m(k4, k4, b9, i9);
                        }
                        zzicfVar = this;
                        break;
                    case 11:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(unsafe.getInt(zziarVar2, j2), zzhzw.b(i10 << 3), i9);
                        }
                        zzicfVar = this;
                        break;
                    case 12:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            long j6 = unsafe.getInt(zziarVar2, j2);
                            b = zzhzw.b(i10 << 3);
                            c2 = zzhzw.c(j6);
                            i9 += c2 + b;
                        }
                        zzicfVar = this;
                        break;
                    case 13:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 14:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                        }
                        zzicfVar = this;
                        zziarVar2 = zziarVar;
                        break;
                    case 15:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            int i15 = unsafe.getInt(zziarVar2, j2);
                            i9 = a.k((i15 >> 31) ^ (i15 + i15), zzhzw.b(i10 << 3), i9);
                        }
                        zzicfVar = this;
                        break;
                    case 16:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            long j7 = unsafe.getLong(zziarVar2, j2);
                            b = zzhzw.b(i10 << 3);
                            c2 = zzhzw.c((j7 >> 63) ^ (j7 + j7));
                            i9 += c2 + b;
                        }
                        zzicfVar = this;
                        break;
                    case 17:
                        if (zzicfVar.q(i7, i6, i8, i, zziarVar2)) {
                            zzicc zziccVar = (zzicc) unsafe.getObject(zziarVar2, j2);
                            zzicu D = zzicfVar.D(i7);
                            zzidh zzidhVar = zzicw.f8944a;
                            int b10 = zzhzw.b(i10 << 3);
                            i2 = b10 + b10;
                            j = ((zzhyu) zziccVar).j(D);
                            i9 += j + i2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i3 = i6;
                        b2 = zzicw.b(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case 19:
                        i3 = i6;
                        b2 = zzicw.a(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case 20:
                        i3 = i6;
                        List list = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar2 = zzicw.f8944a;
                        if (list.size() != 0) {
                            b3 = (zzhzw.b(i10 << 3) * list.size()) + zzicw.j(list);
                            i9 += b3;
                            i6 = i3;
                            break;
                        }
                        b3 = 0;
                        i9 += b3;
                        i6 = i3;
                    case 21:
                        i3 = i6;
                        List list2 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar3 = zzicw.f8944a;
                        size = list2.size();
                        if (size != 0) {
                            k = zzicw.k(list2);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 22:
                        i3 = i6;
                        List list3 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar4 = zzicw.f8944a;
                        size = list3.size();
                        if (size != 0) {
                            k = zzicw.n(list3);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        i3 = i6;
                        b2 = zzicw.b(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        i3 = i6;
                        b2 = zzicw.a(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case 25:
                        i3 = i6;
                        List list4 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar5 = zzicw.f8944a;
                        int size2 = list4.size();
                        if (size2 != 0) {
                            b3 = (zzhzw.b(i10 << 3) + 1) * size2;
                            i9 += b3;
                            i6 = i3;
                            break;
                        }
                        b3 = 0;
                        i9 += b3;
                        i6 = i3;
                    case 26:
                        i3 = i6;
                        List list5 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar6 = zzicw.f8944a;
                        int size3 = list5.size();
                        if (size3 != 0) {
                            b5 = zzhzw.b(i10 << 3) * size3;
                            if (list5 instanceof zzibn) {
                                zzibn zzibnVar = (zzibn) list5;
                                for (int i16 = 0; i16 < size3; i16++) {
                                    Object zzc = zzibnVar.zzc();
                                    if (zzc instanceof zzhzl) {
                                        int k5 = ((zzhzl) zzc).k();
                                        b5 = a.k(k5, k5, b5);
                                    } else {
                                        b5 = zzhzw.d((String) zzc) + b5;
                                    }
                                }
                            } else {
                                for (int i17 = 0; i17 < size3; i17++) {
                                    Object obj = list5.get(i17);
                                    if (obj instanceof zzhzl) {
                                        int k6 = ((zzhzl) obj).k();
                                        b5 = a.k(k6, k6, b5);
                                    } else {
                                        b5 = zzhzw.d((String) obj) + b5;
                                    }
                                }
                            }
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 27:
                        i3 = i6;
                        List list6 = (List) unsafe.getObject(zziarVar2, j2);
                        zzicu D2 = zzicfVar.D(i7);
                        zzidh zzidhVar7 = zzicw.f8944a;
                        int size4 = list6.size();
                        if (size4 == 0) {
                            b6 = 0;
                        } else {
                            b6 = zzhzw.b(i10 << 3) * size4;
                            for (int i18 = 0; i18 < size4; i18++) {
                                Object obj2 = list6.get(i18);
                                if (obj2 instanceof zzibm) {
                                    int a3 = ((zzibm) obj2).a();
                                    b6 = a.k(a3, a3, b6);
                                } else {
                                    int j8 = ((zzhyu) obj2).j(D2);
                                    b6 = a.k(j8, j8, b6);
                                }
                            }
                        }
                        i9 += b6;
                        i6 = i3;
                        break;
                    case 28:
                        i3 = i6;
                        List list7 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar8 = zzicw.f8944a;
                        int size5 = list7.size();
                        if (size5 != 0) {
                            b5 = zzhzw.b(i10 << 3) * size5;
                            for (int i19 = 0; i19 < list7.size(); i19++) {
                                int k7 = ((zzhzl) list7.get(i19)).k();
                                b5 = a.k(k7, k7, b5);
                            }
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 29:
                        i3 = i6;
                        List list8 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar9 = zzicw.f8944a;
                        size = list8.size();
                        if (size != 0) {
                            k = zzicw.o(list8);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 30:
                        i3 = i6;
                        List list9 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar10 = zzicw.f8944a;
                        size = list9.size();
                        if (size != 0) {
                            k = zzicw.m(list9);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 31:
                        i3 = i6;
                        b2 = zzicw.a(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case 32:
                        i3 = i6;
                        b2 = zzicw.b(i10, (List) unsafe.getObject(zziarVar2, j2));
                        i9 += b2;
                        i6 = i3;
                        break;
                    case 33:
                        i3 = i6;
                        List list10 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar11 = zzicw.f8944a;
                        size = list10.size();
                        if (size != 0) {
                            k = zzicw.p(list10);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 34:
                        i3 = i6;
                        List list11 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar12 = zzicw.f8944a;
                        size = list11.size();
                        if (size != 0) {
                            k = zzicw.l(list11);
                            b4 = zzhzw.b(i10 << 3);
                            b5 = (b4 * size) + k;
                            i9 += b5;
                            i6 = i3;
                            break;
                        }
                        b5 = 0;
                        i9 += b5;
                        i6 = i3;
                    case 35:
                        i3 = i6;
                        List list12 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar13 = zzicw.f8944a;
                        int size6 = list12.size() * 8;
                        if (size6 > 0) {
                            i9 = a.m(size6, zzhzw.b(i10 << 3), size6, i9);
                        }
                        i6 = i3;
                        break;
                    case 36:
                        i3 = i6;
                        List list13 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar14 = zzicw.f8944a;
                        int size7 = list13.size() * 4;
                        if (size7 > 0) {
                            i9 = a.m(size7, zzhzw.b(i10 << 3), size7, i9);
                        }
                        i6 = i3;
                        break;
                    case 37:
                        i3 = i6;
                        int j9 = zzicw.j((List) unsafe.getObject(zziarVar2, j2));
                        if (j9 > 0) {
                            i9 = a.m(j9, zzhzw.b(i10 << 3), j9, i9);
                        }
                        i6 = i3;
                        break;
                    case 38:
                        i3 = i6;
                        int k8 = zzicw.k((List) unsafe.getObject(zziarVar2, j2));
                        if (k8 > 0) {
                            i9 = a.m(k8, zzhzw.b(i10 << 3), k8, i9);
                        }
                        i6 = i3;
                        break;
                    case 39:
                        i3 = i6;
                        int n2 = zzicw.n((List) unsafe.getObject(zziarVar2, j2));
                        if (n2 > 0) {
                            i9 = a.m(n2, zzhzw.b(i10 << 3), n2, i9);
                        }
                        i6 = i3;
                        break;
                    case 40:
                        i3 = i6;
                        List list14 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar15 = zzicw.f8944a;
                        int size8 = list14.size() * 8;
                        if (size8 > 0) {
                            i9 = a.m(size8, zzhzw.b(i10 << 3), size8, i9);
                        }
                        i6 = i3;
                        break;
                    case 41:
                        i3 = i6;
                        List list15 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar16 = zzicw.f8944a;
                        int size9 = list15.size() * 4;
                        if (size9 > 0) {
                            i9 = a.m(size9, zzhzw.b(i10 << 3), size9, i9);
                        }
                        i6 = i3;
                        break;
                    case 42:
                        i3 = i6;
                        List list16 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar17 = zzicw.f8944a;
                        int size10 = list16.size();
                        if (size10 > 0) {
                            i9 = a.m(size10, zzhzw.b(i10 << 3), size10, i9);
                        }
                        i6 = i3;
                        break;
                    case 43:
                        i3 = i6;
                        int o = zzicw.o((List) unsafe.getObject(zziarVar2, j2));
                        if (o > 0) {
                            i9 = a.m(o, zzhzw.b(i10 << 3), o, i9);
                        }
                        i6 = i3;
                        break;
                    case 44:
                        i3 = i6;
                        int m2 = zzicw.m((List) unsafe.getObject(zziarVar2, j2));
                        if (m2 > 0) {
                            i9 = a.m(m2, zzhzw.b(i10 << 3), m2, i9);
                        }
                        i6 = i3;
                        break;
                    case 45:
                        i3 = i6;
                        List list17 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar18 = zzicw.f8944a;
                        int size11 = list17.size() * 4;
                        if (size11 > 0) {
                            i9 = a.m(size11, zzhzw.b(i10 << 3), size11, i9);
                        }
                        i6 = i3;
                        break;
                    case 46:
                        i3 = i6;
                        List list18 = (List) unsafe.getObject(zziarVar2, j2);
                        zzidh zzidhVar19 = zzicw.f8944a;
                        int size12 = list18.size() * 8;
                        if (size12 > 0) {
                            i9 = a.m(size12, zzhzw.b(i10 << 3), size12, i9);
                        }
                        i6 = i3;
                        break;
                    case 47:
                        i3 = i6;
                        int p = zzicw.p((List) unsafe.getObject(zziarVar2, j2));
                        if (p > 0) {
                            i9 = a.m(p, zzhzw.b(i10 << 3), p, i9);
                        }
                        i6 = i3;
                        break;
                    case 48:
                        i3 = i6;
                        int l = zzicw.l((List) unsafe.getObject(zziarVar2, j2));
                        if (l > 0) {
                            i9 = a.m(l, zzhzw.b(i10 << 3), l, i9);
                        }
                        i6 = i3;
                        break;
                    case 49:
                        i3 = i6;
                        List list19 = (List) unsafe.getObject(zziarVar2, j2);
                        zzicu D3 = zzicfVar.D(i7);
                        zzidh zzidhVar20 = zzicw.f8944a;
                        int size13 = list19.size();
                        if (size13 == 0) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            for (int i20 = 0; i20 < size13; i20++) {
                                zzicc zziccVar2 = (zzicc) list19.get(i20);
                                int b11 = zzhzw.b(i10 << 3);
                                i4 += ((zzhyu) zziccVar2).j(D3) + b11 + b11;
                            }
                        }
                        i9 += i4;
                        i6 = i3;
                        break;
                    case 50:
                        zzibw zzibwVar = (zzibw) unsafe.getObject(zziarVar2, j2);
                        zzibv zzibvVar = (zzibv) zzicfVar.E(i7);
                        if (zzibwVar.isEmpty()) {
                            b6 = 0;
                        } else {
                            b6 = 0;
                            for (Map.Entry entry : zzibwVar.entrySet()) {
                                Object key = entry.getKey();
                                Object value = entry.getValue();
                                zzibu zzibuVar = zzibvVar.f8928a;
                                int b12 = zzhzw.b(i10 << 3);
                                int i21 = i6;
                                int f = zziag.f(zzibuVar.f8926a, 1, key) + zziag.f(zzibuVar.b, 2, value);
                                b6 = a.m(f, f, b12, b6);
                                i6 = i21;
                            }
                        }
                        i3 = i6;
                        i9 += b6;
                        i6 = i3;
                        break;
                    case 51:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            long o2 = o(j2, zziarVar2);
                            b7 = zzhzw.b(i10 << 3);
                            c4 = zzhzw.c(o2);
                            i9 += c4 + b7;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            long o3 = o(j2, zziarVar2);
                            b7 = zzhzw.b(i10 << 3);
                            c4 = zzhzw.c(o3);
                            i9 += c4 + b7;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            long n3 = n(j2, zziarVar2);
                            b7 = zzhzw.b(i10 << 3);
                            c4 = zzhzw.c(n3);
                            i9 += c4 + b7;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 1, i9);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            int i22 = i10 << 3;
                            Object object2 = unsafe.getObject(zziarVar2, j2);
                            if (object2 instanceof zzhzl) {
                                int b13 = zzhzw.b(i22);
                                int k9 = ((zzhzl) object2).k();
                                i9 = a.m(k9, k9, b13, i9);
                                break;
                            } else {
                                b7 = zzhzw.b(i22);
                                c4 = zzhzw.d((String) object2);
                                i9 += c4 + b7;
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            c3 = zzicw.c(i10, unsafe.getObject(zziarVar2, j2), zzicfVar.D(i7));
                            i9 += c3;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            zzhzl zzhzlVar2 = (zzhzl) unsafe.getObject(zziarVar2, j2);
                            int b14 = zzhzw.b(i10 << 3);
                            int k10 = zzhzlVar2.k();
                            i9 = a.m(k10, k10, b14, i9);
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(n(j2, zziarVar2), zzhzw.b(i10 << 3), i9);
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            long n4 = n(j2, zziarVar2);
                            b7 = zzhzw.b(i10 << 3);
                            c4 = zzhzw.c(n4);
                            i9 += c4 + b7;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            i9 = a.k(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            int n5 = n(j2, zziarVar2);
                            i9 = a.k((n5 >> 31) ^ (n5 + n5), zzhzw.b(i10 << 3), i9);
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            long o4 = o(j2, zziarVar2);
                            b7 = zzhzw.b(i10 << 3);
                            c4 = zzhzw.c((o4 >> 63) ^ (o4 + o4));
                            i9 += c4 + b7;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzicfVar.t(i10, i7, zziarVar2)) {
                            zzicc zziccVar3 = (zzicc) unsafe.getObject(zziarVar2, j2);
                            zzicu D4 = zzicfVar.D(i7);
                            zzidh zzidhVar21 = zzicw.f8944a;
                            int b15 = zzhzw.b(i10 << 3);
                            i2 = b15 + b15;
                            j = ((zzhyu) zziccVar3).j(D4);
                            i9 += j + i2;
                            break;
                        } else {
                            break;
                        }
                }
                i7 += 3;
                i5 = 1048575;
            } else {
                int c5 = zziarVar2.zzt.c() + i9;
                if (zzicfVar.f) {
                    zzicx zzicxVar = ((zzian) zziarVar2).zza.f8908a;
                    int i23 = zzicxVar.f;
                    int i24 = 0;
                    for (int i25 = 0; i25 < i23; i25++) {
                        zzicy zzicyVar = (zzicy) zzicxVar.b(i25);
                        i24 += zziag.g((zziaf) zzicyVar.f8945c, zzicyVar.f);
                    }
                    for (Map.Entry entry2 : zzicxVar.c()) {
                        i24 += zziag.g((zziaf) entry2.getKey(), entry2.getValue());
                    }
                    return c5 + i24;
                }
                return c5;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final void e(Object obj, byte[] bArr, int i, int i2, zzhyz zzhyzVar) {
        y(obj, bArr, i, i2, 0, zzhyzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final boolean f(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.i) {
            int i7 = this.h[i5];
            int[] iArr = this.f8933a;
            int i8 = iArr[i7];
            int a2 = a(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = n.getInt(obj, i10);
                }
                i2 = i7;
                i3 = i4;
                i = i10;
            } else {
                int i12 = i4;
                i = i6;
                i2 = i7;
                i3 = i12;
            }
            if ((268435456 & a2) == 0 || q(i2, i, i3, i11, obj)) {
                int k = k(a2);
                if (k != 9 && k != 17) {
                    if (k != 27) {
                        if (k != 60 && k != 68) {
                            if (k != 49) {
                                if (k != 50) {
                                    continue;
                                } else {
                                    zzibw zzibwVar = (zzibw) zzidm.k(a2 & 1048575, obj);
                                    if (!zzibwVar.isEmpty() && ((zzibv) E(i2)).f8928a.b.f8956c == zzidt.m) {
                                        zzicu zzicuVar = null;
                                        for (Object obj2 : zzibwVar.values()) {
                                            if (zzicuVar == null) {
                                                zzicuVar = zzicm.f8938c.a(obj2.getClass());
                                            }
                                            if (!zzicuVar.f(obj2)) {
                                            }
                                        }
                                    }
                                }
                                i5++;
                                i6 = i;
                                i4 = i3;
                            }
                        } else {
                            if (t(i8, i2, obj) && !D(i2).f(zzidm.k(a2 & 1048575, obj))) {
                            }
                            i5++;
                            i6 = i;
                            i4 = i3;
                        }
                    }
                    List list = (List) zzidm.k(a2 & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzicu D = D(i2);
                        for (int i13 = 0; i13 < list.size(); i13++) {
                            if (D.f(list.get(i13))) {
                            }
                        }
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                } else {
                    if (q(i2, i, i3, i11, obj) && !D(i2).f(zzidm.k(a2 & 1048575, obj))) {
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                }
            }
            return false;
        }
        if (this.f) {
            ((zzian) obj).zza.d();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x01ea, code lost:
    
        if (r2 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d9, code lost:
    
        if (r2 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00db, code lost:
    
        r6 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00dc, code lost:
    
        r1 = r6 + r1;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x001e. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzicu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int g(com.google.android.gms.internal.ads.zziar r11) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.g(com.google.android.gms.internal.ads.zziar):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzicu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(com.google.android.gms.internal.ads.zziar r8, com.google.android.gms.internal.ads.zziar r9) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.h(com.google.android.gms.internal.ads.zziar, com.google.android.gms.internal.ads.zziar):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:831:0x0e4b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    @Override // com.google.android.gms.internal.ads.zzicu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(java.lang.Object r23, com.google.android.gms.internal.ads.zzhzx r24) {
        /*
            Method dump skipped, instructions count: 3818
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.i(java.lang.Object, com.google.android.gms.internal.ads.zzhzx):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:289:0x0089, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:15:0x00a1. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:102:0x05e7 A[LOOP:1: B:101:0x05e5->B:102:0x05e7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:106:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x05d9  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x05c0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:124:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:127:0x05b1 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzicu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(java.lang.Object r19, com.google.android.gms.internal.ads.zzhzr r20, com.google.android.gms.internal.ads.zziab r21) {
        /*
            Method dump skipped, instructions count: 1676
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.j(java.lang.Object, com.google.android.gms.internal.ads.zzhzr, com.google.android.gms.internal.ads.zziab):void");
    }

    public final boolean p(zziar zziarVar, zziar zziarVar2, int i) {
        if (r(i, zziarVar) == r(i, zziarVar2)) {
            return true;
        }
        return false;
    }

    public final boolean q(int i, int i2, int i3, int i4, Object obj) {
        if (i2 == 1048575) {
            return r(i, obj);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean r(int i, Object obj) {
        int i2 = this.f8933a[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int a2 = a(i);
            long j2 = a2 & 1048575;
            switch (k(a2)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzidm.f8954c.f(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(zzidm.f8954c.d(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (zzidm.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zzidm.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zzidm.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zzidm.f8954c.b(j2, obj);
                case 8:
                    Object k = zzidm.k(j2, obj);
                    if (k instanceof String) {
                        if (((String) k).isEmpty()) {
                            return false;
                        }
                    } else if (k instanceof zzhzl) {
                        if (zzhzl.f.equals(k)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zzidm.k(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzhzl.f.equals(zzidm.k(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zzidm.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zzidm.g(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zzidm.i(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zzidm.k(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & zzidm.g(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final void s(int i, Object obj) {
        int i2 = this.f8933a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        zzidm.h((1 << (i2 >>> 20)) | zzidm.g(j, obj), j, obj);
    }

    public final boolean t(int i, int i2, Object obj) {
        if (zzidm.g(this.f8933a[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    public final void u(int i, int i2, Object obj) {
        zzidm.h(i, this.f8933a[i2 + 2] & 1048575, obj);
    }

    public final int v(int i, int i2) {
        int[] iArr = this.f8933a;
        int length = (iArr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = iArr[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final int y(java.lang.Object r38, byte[] r39, int r40, int r41, int r42, com.google.android.gms.internal.ads.zzhyz r43) {
        /*
            Method dump skipped, instructions count: 4228
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzicf.y(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzhyz):int");
    }

    @Override // com.google.android.gms.internal.ads.zzicu
    public final Object zza() {
        return ((zziar) this.e).t();
    }
}
