package com.google.android.gms.internal.cast;

import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzzl<T> implements zzzs<T> {
    public static final int[] i = new int[0];
    public static final Unsafe j = zzaak.l();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f9894a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzzi f9895c;
    public final boolean d;
    public final int[] e;
    public final int f;
    public final zzaad g;
    public final zzxs h;

    public zzzl(int[] iArr, Object[] objArr, zzzi zzziVar, int[] iArr2, int i2, zzaad zzaadVar, zzxs zzxsVar) {
        this.f9894a = iArr;
        this.b = objArr;
        boolean z = false;
        if (zzxsVar != null && (zzziVar instanceof zzyb)) {
            z = true;
        }
        this.d = z;
        this.e = iArr2;
        this.f = i2;
        this.g = zzaadVar;
        this.h = zzxsVar;
        this.f9895c = zzziVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x037f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.cast.zzzl k(com.google.android.gms.internal.cast.zzzf r32, com.google.android.gms.internal.cast.zzaad r33, com.google.android.gms.internal.cast.zzxt r34) {
        /*
            Method dump skipped, instructions count: 1002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzzl.k(com.google.android.gms.internal.cast.zzzf, com.google.android.gms.internal.cast.zzaad, com.google.android.gms.internal.cast.zzxt):com.google.android.gms.internal.cast.zzzl");
    }

    public static Field l(Class cls, String str) {
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

    public static int q(int i2) {
        return (i2 >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public static boolean r(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzyd) {
            return ((zzyd) obj).l();
        }
        return true;
    }

    public static int s(long j2, Object obj) {
        return ((Integer) zzaak.j(j2, obj)).intValue();
    }

    public static long t(long j2, Object obj) {
        return ((Long) zzaak.j(j2, obj)).longValue();
    }

    public final boolean a(int i2, Object obj) {
        int i3 = this.f9894a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 == 1048575) {
            int p = p(i2);
            long j3 = p & 1048575;
            switch (q(p)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzaak.f9609c.f(j3, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(zzaak.f9609c.d(j3, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (zzaak.h(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zzaak.h(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zzaak.h(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zzaak.f9609c.b(j3, obj);
                case 8:
                    Object j4 = zzaak.j(j3, obj);
                    if (j4 instanceof String) {
                        if (((String) j4).isEmpty()) {
                            return false;
                        }
                    } else if (j4 instanceof zzxk) {
                        if (zzxk.f.equals(j4)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zzaak.j(j3, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzxk.f.equals(zzaak.j(j3, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zzaak.h(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zzaak.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zzaak.h(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zzaak.j(j3, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i3 >>> 20)) & zzaak.f(j2, obj)) == 0) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final boolean b(Object obj) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i6 < this.f) {
            int i8 = this.e[i6];
            int[] iArr = this.f9894a;
            int i9 = iArr[i8];
            int p = p(i8);
            int i10 = iArr[i8 + 2];
            int i11 = i10 & 1048575;
            int i12 = 1 << (i10 >>> 20);
            if (i11 != i7) {
                if (i11 != 1048575) {
                    i5 = j.getInt(obj, i11);
                }
                i3 = i8;
                i4 = i5;
                i2 = i11;
            } else {
                int i13 = i5;
                i2 = i7;
                i3 = i8;
                i4 = i13;
            }
            if ((268435456 & p) == 0 || v(i3, i2, i4, i12, obj)) {
                int q = q(p);
                if (q != 9 && q != 17) {
                    if (q != 27) {
                        if (q != 60 && q != 68) {
                            if (q != 49) {
                                if (q == 50 && !((zzzc) zzaak.j(p & 1048575, obj)).isEmpty()) {
                                    int i14 = i3 / 3;
                                    throw null;
                                }
                            }
                        } else if (j(i9, i3, obj) && !o(i3).b(zzaak.j(p & 1048575, obj))) {
                        }
                        i6++;
                        i7 = i2;
                        i5 = i4;
                    }
                    List list = (List) zzaak.j(p & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzzs o = o(i3);
                        for (int i15 = 0; i15 < list.size(); i15++) {
                            if (o.b(list.get(i15))) {
                            }
                        }
                    }
                    i6++;
                    i7 = i2;
                    i5 = i4;
                } else {
                    if (v(i3, i2, i4, i12, obj) && !o(i3).b(zzaak.j(p & 1048575, obj))) {
                    }
                    i6++;
                    i7 = i2;
                    i5 = i4;
                }
            }
            return false;
        }
        if (this.d) {
            ((zzyb) obj).zzb.c();
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.LinkedHashMap, com.google.android.gms.internal.cast.zzzc] */
    @Override // com.google.android.gms.internal.cast.zzzs
    public final void c(Object obj, Object obj2) {
        Object obj3;
        if (r(obj)) {
            obj2.getClass();
            int i2 = 0;
            while (true) {
                int[] iArr = this.f9894a;
                if (i2 < iArr.length) {
                    int p = p(i2);
                    int i3 = p & 1048575;
                    int q = q(p);
                    int i4 = iArr[i2];
                    long j2 = i3;
                    switch (q) {
                        case 0:
                            if (a(i2, obj2)) {
                                zzaaj zzaajVar = zzaak.f9609c;
                                obj3 = obj;
                                zzaajVar.g(obj3, j2, zzaajVar.f(j2, obj2));
                                i(i2, obj3);
                                break;
                            }
                            break;
                        case 1:
                            if (a(i2, obj2)) {
                                zzaaj zzaajVar2 = zzaak.f9609c;
                                zzaajVar2.e(obj, j2, zzaajVar2.d(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 2:
                            if (a(i2, obj2)) {
                                zzaak.i(obj, j2, zzaak.h(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 3:
                            if (a(i2, obj2)) {
                                zzaak.i(obj, j2, zzaak.h(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 4:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 5:
                            if (a(i2, obj2)) {
                                zzaak.i(obj, j2, zzaak.h(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 6:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 7:
                            if (a(i2, obj2)) {
                                zzaaj zzaajVar3 = zzaak.f9609c;
                                zzaajVar3.c(obj, j2, zzaajVar3.b(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 8:
                            if (a(i2, obj2)) {
                                zzaak.k(j2, obj, zzaak.j(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 9:
                            m(i2, obj, obj2);
                            break;
                        case 10:
                            if (a(i2, obj2)) {
                                zzaak.k(j2, obj, zzaak.j(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 11:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 12:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 13:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 14:
                            if (a(i2, obj2)) {
                                zzaak.i(obj, j2, zzaak.h(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 15:
                            if (a(i2, obj2)) {
                                zzaak.g(zzaak.f(j2, obj2), j2, obj);
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 16:
                            if (a(i2, obj2)) {
                                zzaak.i(obj, j2, zzaak.h(j2, obj2));
                                i(i2, obj);
                                break;
                            }
                            break;
                        case 17:
                            m(i2, obj, obj2);
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
                            zzyl zzylVar = (zzyl) zzaak.j(j2, obj);
                            zzyl zzylVar2 = (zzyl) zzaak.j(j2, obj2);
                            int size = zzylVar.size();
                            int size2 = zzylVar2.size();
                            if (size > 0 && size2 > 0) {
                                if (!zzylVar.zza()) {
                                    zzylVar = zzylVar.zzf(size2 + size);
                                }
                                zzylVar.addAll(zzylVar2);
                            }
                            if (size > 0) {
                                zzylVar2 = zzylVar;
                            }
                            zzaak.k(j2, obj, zzylVar2);
                            break;
                        case 50:
                            zzaaf zzaafVar = zzzu.f9903a;
                            zzzc zzzcVar = (zzzc) zzaak.j(j2, obj);
                            zzzc zzzcVar2 = (zzzc) zzaak.j(j2, obj2);
                            if (!zzzcVar2.isEmpty()) {
                                if (!zzzcVar.f9891c) {
                                    if (zzzcVar.isEmpty()) {
                                        zzzcVar = new zzzc();
                                    } else {
                                        ?? linkedHashMap = new LinkedHashMap(zzzcVar);
                                        linkedHashMap.f9891c = true;
                                        zzzcVar = linkedHashMap;
                                    }
                                }
                                zzzcVar.b();
                                if (!zzzcVar2.isEmpty()) {
                                    zzzcVar.putAll(zzzcVar2);
                                }
                            }
                            zzaak.k(j2, obj, zzzcVar);
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
                            if (j(i4, i2, obj2)) {
                                zzaak.k(j2, obj, zzaak.j(j2, obj2));
                                zzaak.g(i4, iArr[i2 + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 60:
                            n(i2, obj, obj2);
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (j(i4, i2, obj2)) {
                                zzaak.k(j2, obj, zzaak.j(j2, obj2));
                                zzaak.g(i4, iArr[i2 + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 68:
                            n(i2, obj, obj2);
                            break;
                    }
                    obj3 = obj;
                    i2 += 3;
                    obj = obj3;
                } else {
                    Object obj4 = obj;
                    zzzu.b(obj4, obj2);
                    if (this.d && !((zzyb) obj2).zzb.f9875a.isEmpty()) {
                        throw null;
                    }
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004f. Please report as an issue. */
    @Override // com.google.android.gms.internal.cast.zzzs
    public final int d(zzyd zzydVar) {
        int i2;
        int q;
        int r;
        int q2;
        int g;
        int q3;
        int l;
        int i3;
        int b;
        int q4;
        int size;
        int d;
        int q5;
        int q6;
        int q7;
        int size2;
        int q8;
        int q9;
        int i4;
        int q10;
        int r2;
        zzzl<T> zzzlVar = this;
        zzyd zzydVar2 = zzydVar;
        Unsafe unsafe = j;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 1048575;
        while (true) {
            int[] iArr = zzzlVar.f9894a;
            if (i6 < iArr.length) {
                int p = zzzlVar.p(i6);
                int q11 = q(p);
                int i10 = iArr[i6];
                int i11 = iArr[i6 + 2];
                int i12 = i11 & i5;
                if (q11 <= 17) {
                    if (i12 != i9) {
                        if (i12 == i5) {
                            i7 = 0;
                        } else {
                            i7 = unsafe.getInt(zzydVar2, i12);
                        }
                        i9 = i12;
                    }
                    i2 = 1 << (i11 >>> 20);
                } else {
                    i2 = 0;
                }
                int i13 = p & i5;
                if (q11 >= zzxx.f.f9877c) {
                    zzxx.g.getClass();
                }
                long j2 = i13;
                switch (q11) {
                    case 0:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 1:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 2:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            long j3 = unsafe.getLong(zzydVar2, j2);
                            q = zzxp.q(i10 << 3);
                            r = zzxp.r(j3);
                            i8 += r + q;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 3:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            long j4 = unsafe.getLong(zzydVar2, j2);
                            q = zzxp.q(i10 << 3);
                            r = zzxp.r(j4);
                            i8 += r + q;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 4:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            long j5 = unsafe.getInt(zzydVar2, j2);
                            q = zzxp.q(i10 << 3);
                            r = zzxp.r(j5);
                            i8 += r + q;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 5:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 6:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 7:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 1, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 8:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            int i14 = i10 << 3;
                            Object object = unsafe.getObject(zzydVar2, j2);
                            if (object instanceof zzxk) {
                                q2 = zzxp.q(i14);
                                g = ((zzxk) object).g();
                                q3 = zzxp.q(g);
                                i8 += q3 + g + q2;
                            } else {
                                q = zzxp.q(i14);
                                r = zzxp.s((String) object);
                                i8 += r + q;
                            }
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 9:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            l = zzzu.l(i10, unsafe.getObject(zzydVar2, j2), zzzlVar.o(i6));
                            i8 += l;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 10:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            zzxk zzxkVar = (zzxk) unsafe.getObject(zzydVar2, j2);
                            q2 = zzxp.q(i10 << 3);
                            g = zzxkVar.g();
                            q3 = zzxp.q(g);
                            i8 += q3 + g + q2;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 11:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(unsafe.getInt(zzydVar2, j2), zzxp.q(i10 << 3), i8);
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 12:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            long j6 = unsafe.getInt(zzydVar2, j2);
                            q = zzxp.q(i10 << 3);
                            r = zzxp.r(j6);
                            i8 += r + q;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 13:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 14:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        zzzlVar = this;
                        zzydVar2 = zzydVar;
                        i6 += 3;
                        i5 = 1048575;
                    case 15:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            int i15 = unsafe.getInt(zzydVar2, j2);
                            i8 = b.a((i15 >> 31) ^ (i15 + i15), zzxp.q(i10 << 3), i8);
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 16:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            long j7 = unsafe.getLong(zzydVar2, j2);
                            q = zzxp.q(i10 << 3);
                            r = zzxp.r((j7 >> 63) ^ (j7 + j7));
                            i8 += r + q;
                        }
                        zzzlVar = this;
                        i6 += 3;
                        i5 = 1048575;
                    case 17:
                        if (zzzlVar.v(i6, i9, i7, i2, zzydVar2)) {
                            zzzi zzziVar = (zzzi) unsafe.getObject(zzydVar2, j2);
                            zzzs o = zzzlVar.o(i6);
                            zzaaf zzaafVar = zzzu.f9903a;
                            int q12 = zzxp.q(i10 << 3);
                            i3 = q12 + q12;
                            b = ((zzwz) zzziVar).b(o);
                            i8 += b + i3;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 18:
                        l = zzzu.k(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case 19:
                        l = zzzu.j(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case 20:
                        List list = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar2 = zzzu.f9903a;
                        if (list.size() != 0) {
                            q4 = (zzxp.q(i10 << 3) * list.size()) + zzzu.c(list);
                            i8 += q4;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q4 = 0;
                        i8 += q4;
                        i6 += 3;
                        i5 = 1048575;
                    case 21:
                        List list2 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar3 = zzzu.f9903a;
                        size = list2.size();
                        if (size != 0) {
                            d = zzzu.d(list2);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 22:
                        List list3 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar4 = zzzu.f9903a;
                        size = list3.size();
                        if (size != 0) {
                            d = zzzu.g(list3);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        l = zzzu.k(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        l = zzzu.j(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case 25:
                        List list4 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar5 = zzzu.f9903a;
                        int size3 = list4.size();
                        if (size3 != 0) {
                            q4 = (zzxp.q(i10 << 3) + 1) * size3;
                            i8 += q4;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q4 = 0;
                        i8 += q4;
                        i6 += 3;
                        i5 = 1048575;
                    case 26:
                        List list5 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar6 = zzzu.f9903a;
                        int size4 = list5.size();
                        if (size4 != 0) {
                            q6 = zzxp.q(i10 << 3) * size4;
                            if (list5 instanceof zzyu) {
                                zzyu zzyuVar = (zzyu) list5;
                                for (int i16 = 0; i16 < size4; i16++) {
                                    Object zza = zzyuVar.zza();
                                    if (zza instanceof zzxk) {
                                        int g2 = ((zzxk) zza).g();
                                        q6 = b.a(g2, g2, q6);
                                    } else {
                                        q6 = zzxp.s((String) zza) + q6;
                                    }
                                }
                            } else {
                                for (int i17 = 0; i17 < size4; i17++) {
                                    Object obj = list5.get(i17);
                                    if (obj instanceof zzxk) {
                                        int g3 = ((zzxk) obj).g();
                                        q6 = b.a(g3, g3, q6);
                                    } else {
                                        q6 = zzxp.s((String) obj) + q6;
                                    }
                                }
                            }
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 27:
                        List list6 = (List) unsafe.getObject(zzydVar2, j2);
                        zzzs o2 = zzzlVar.o(i6);
                        zzaaf zzaafVar7 = zzzu.f9903a;
                        int size5 = list6.size();
                        if (size5 == 0) {
                            q7 = 0;
                        } else {
                            q7 = zzxp.q(i10 << 3) * size5;
                            for (int i18 = 0; i18 < size5; i18++) {
                                Object obj2 = list6.get(i18);
                                if (obj2 instanceof zzyt) {
                                    int a2 = ((zzyt) obj2).a();
                                    q7 = b.a(a2, a2, q7);
                                } else {
                                    int b2 = ((zzwz) obj2).b(o2);
                                    q7 = b.a(b2, b2, q7);
                                }
                            }
                        }
                        i8 += q7;
                        i6 += 3;
                        i5 = 1048575;
                    case 28:
                        List list7 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar8 = zzzu.f9903a;
                        int size6 = list7.size();
                        if (size6 != 0) {
                            q6 = zzxp.q(i10 << 3) * size6;
                            for (int i19 = 0; i19 < list7.size(); i19++) {
                                int g4 = ((zzxk) list7.get(i19)).g();
                                q6 = b.a(g4, g4, q6);
                            }
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 29:
                        List list8 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar9 = zzzu.f9903a;
                        size = list8.size();
                        if (size != 0) {
                            d = zzzu.h(list8);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 30:
                        List list9 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar10 = zzzu.f9903a;
                        size = list9.size();
                        if (size != 0) {
                            d = zzzu.f(list9);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 31:
                        l = zzzu.j(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case 32:
                        l = zzzu.k(i10, (List) unsafe.getObject(zzydVar2, j2));
                        i8 += l;
                        i6 += 3;
                        i5 = 1048575;
                    case 33:
                        List list10 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar11 = zzzu.f9903a;
                        size = list10.size();
                        if (size != 0) {
                            d = zzzu.i(list10);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 34:
                        List list11 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar12 = zzzu.f9903a;
                        size = list11.size();
                        if (size != 0) {
                            d = zzzu.e(list11);
                            q5 = zzxp.q(i10 << 3);
                            q6 = (q5 * size) + d;
                            i8 += q6;
                            i6 += 3;
                            i5 = 1048575;
                        }
                        q6 = 0;
                        i8 += q6;
                        i6 += 3;
                        i5 = 1048575;
                    case 35:
                        List list12 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar13 = zzzu.f9903a;
                        size2 = list12.size() * 8;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 36:
                        List list13 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar14 = zzzu.f9903a;
                        size2 = list13.size() * 4;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 37:
                        size2 = zzzu.c((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 38:
                        size2 = zzzu.d((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 39:
                        size2 = zzzu.g((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 40:
                        List list14 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar15 = zzzu.f9903a;
                        size2 = list14.size() * 8;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 41:
                        List list15 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar16 = zzzu.f9903a;
                        size2 = list15.size() * 4;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 42:
                        List list16 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar17 = zzzu.f9903a;
                        size2 = list16.size();
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 43:
                        size2 = zzzu.h((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 44:
                        size2 = zzzu.f((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 45:
                        List list17 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar18 = zzzu.f9903a;
                        size2 = list17.size() * 4;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 46:
                        List list18 = (List) unsafe.getObject(zzydVar2, j2);
                        zzaaf zzaafVar19 = zzzu.f9903a;
                        size2 = list18.size() * 8;
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 47:
                        size2 = zzzu.i((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 48:
                        size2 = zzzu.e((List) unsafe.getObject(zzydVar2, j2));
                        if (size2 > 0) {
                            q8 = zzxp.q(i10 << 3);
                            q9 = zzxp.q(size2);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 49:
                        List list19 = (List) unsafe.getObject(zzydVar2, j2);
                        zzzs o3 = zzzlVar.o(i6);
                        zzaaf zzaafVar20 = zzzu.f9903a;
                        int size7 = list19.size();
                        if (size7 == 0) {
                            i4 = 0;
                        } else {
                            i4 = 0;
                            for (int i20 = 0; i20 < size7; i20++) {
                                zzzi zzziVar2 = (zzzi) list19.get(i20);
                                int q13 = zzxp.q(i10 << 3);
                                i4 += ((zzwz) zzziVar2).b(o3) + q13 + q13;
                            }
                        }
                        i8 += i4;
                        i6 += 3;
                        i5 = 1048575;
                    case 50:
                        int i21 = i6 / 3;
                        zzzc zzzcVar = (zzzc) unsafe.getObject(zzydVar2, j2);
                        if (zzzcVar.isEmpty()) {
                            continue;
                        } else {
                            Iterator it = zzzcVar.entrySet().iterator();
                            if (it.hasNext()) {
                                Map.Entry entry = (Map.Entry) it.next();
                                entry.getKey();
                                entry.getValue();
                                throw null;
                            }
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 51:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 52:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 53:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            long t = t(j2, zzydVar2);
                            q10 = zzxp.q(i10 << 3);
                            r2 = zzxp.r(t);
                            i8 += r2 + q10;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 54:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            long t2 = t(j2, zzydVar2);
                            q10 = zzxp.q(i10 << 3);
                            r2 = zzxp.r(t2);
                            i8 += r2 + q10;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 55:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            long s = s(j2, zzydVar2);
                            q10 = zzxp.q(i10 << 3);
                            r2 = zzxp.r(s);
                            i8 += r2 + q10;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 56:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 57:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 58:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 1, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 59:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            int i22 = i10 << 3;
                            Object object2 = unsafe.getObject(zzydVar2, j2);
                            if (object2 instanceof zzxk) {
                                size2 = zzxp.q(i22);
                                q8 = ((zzxk) object2).g();
                                q9 = zzxp.q(q8);
                                i8 += q9 + q8 + size2;
                                i6 += 3;
                                i5 = 1048575;
                            } else {
                                q10 = zzxp.q(i22);
                                r2 = zzxp.s((String) object2);
                                i8 += r2 + q10;
                                i6 += 3;
                                i5 = 1048575;
                            }
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 60:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            l = zzzu.l(i10, unsafe.getObject(zzydVar2, j2), zzzlVar.o(i6));
                            i8 += l;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 61:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            zzxk zzxkVar2 = (zzxk) unsafe.getObject(zzydVar2, j2);
                            size2 = zzxp.q(i10 << 3);
                            q8 = zzxkVar2.g();
                            q9 = zzxp.q(q8);
                            i8 += q9 + q8 + size2;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 62:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(s(j2, zzydVar2), zzxp.q(i10 << 3), i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 63:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            long s2 = s(j2, zzydVar2);
                            q10 = zzxp.q(i10 << 3);
                            r2 = zzxp.r(s2);
                            i8 += r2 + q10;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 64:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 4, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 65:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            i8 = b.a(i10 << 3, 8, i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 66:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            int s3 = s(j2, zzydVar2);
                            i8 = b.a((s3 >> 31) ^ (s3 + s3), zzxp.q(i10 << 3), i8);
                        }
                        i6 += 3;
                        i5 = 1048575;
                    case 67:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            long t3 = t(j2, zzydVar2);
                            q10 = zzxp.q(i10 << 3);
                            r2 = zzxp.r((t3 >> 63) ^ (t3 + t3));
                            i8 += r2 + q10;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    case 68:
                        if (zzzlVar.j(i10, i6, zzydVar2)) {
                            zzzi zzziVar3 = (zzzi) unsafe.getObject(zzydVar2, j2);
                            zzzs o4 = zzzlVar.o(i6);
                            zzaaf zzaafVar21 = zzzu.f9903a;
                            int q14 = zzxp.q(i10 << 3);
                            i3 = q14 + q14;
                            b = ((zzwz) zzziVar3).b(o4);
                            i8 += b + i3;
                            i6 += 3;
                            i5 = 1048575;
                        } else {
                            i6 += 3;
                            i5 = 1048575;
                        }
                    default:
                        i6 += 3;
                        i5 = 1048575;
                }
            } else {
                zzaae zzaaeVar = zzydVar2.zzc;
                int i23 = zzaaeVar.f9606c;
                if (i23 == -1) {
                    zzaaeVar.f9606c = 0;
                    i23 = 0;
                }
                int i24 = i23 + i8;
                if (zzzlVar.d) {
                    zzzv zzzvVar = ((zzyb) zzydVar2).zzb.f9875a;
                    if (zzzvVar.f <= 0) {
                        Iterator<T> it2 = zzzvVar.c().iterator();
                        if (it2.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it2.next();
                            zzxv zzxvVar = (zzxv) entry2.getKey();
                            entry2.getValue();
                            zzxvVar.zzb();
                            throw null;
                        }
                    } else {
                        ((zzxv) ((zzzw) zzzvVar.b(0)).f9904c).zzb();
                        throw null;
                    }
                }
                return i24;
            }
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(com.google.android.gms.internal.cast.zzyd r8, com.google.android.gms.internal.cast.zzyd r9) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzzl.e(com.google.android.gms.internal.cast.zzyd, com.google.android.gms.internal.cast.zzyd):boolean");
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
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int f(com.google.android.gms.internal.cast.zzyd r11) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzzl.f(com.google.android.gms.internal.cast.zzyd):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:904:0x0d92 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // com.google.android.gms.internal.cast.zzzs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.lang.Object r19, com.google.android.gms.internal.cast.zzxq r20) {
        /*
            Method dump skipped, instructions count: 3634
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.cast.zzzl.g(java.lang.Object, com.google.android.gms.internal.cast.zzxq):void");
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final void h(Object obj) {
        if (r(obj)) {
            if (obj instanceof zzyd) {
                zzyd zzydVar = (zzyd) obj;
                zzydVar.e();
                zzydVar.zza = 0;
                zzydVar.m();
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.f9894a;
                if (i2 < iArr.length) {
                    int p = p(i2);
                    int i3 = 1048575 & p;
                    int q = q(p);
                    long j2 = i3;
                    if (q != 9) {
                        if (q != 60 && q != 68) {
                            switch (q) {
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
                                    ((zzyl) zzaak.j(j2, obj)).zzb();
                                    break;
                                case 50:
                                    Unsafe unsafe = j;
                                    Object object = unsafe.getObject(obj, j2);
                                    if (object == null) {
                                        break;
                                    } else {
                                        ((zzzc) object).f9891c = false;
                                        unsafe.putObject(obj, j2, object);
                                        break;
                                    }
                            }
                        } else if (j(iArr[i2], i2, obj)) {
                            o(i2).h(j.getObject(obj, j2));
                        }
                        i2 += 3;
                    }
                    if (a(i2, obj)) {
                        o(i2).h(j.getObject(obj, j2));
                    }
                    i2 += 3;
                } else {
                    this.g.a(obj);
                    if (this.d) {
                        this.h.a(obj);
                        return;
                    }
                    return;
                }
            }
        }
    }

    public final void i(int i2, Object obj) {
        int i3 = this.f9894a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        zzaak.g((1 << (i3 >>> 20)) | zzaak.f(j2, obj), j2, obj);
    }

    public final boolean j(int i2, int i3, Object obj) {
        if (zzaak.f(this.f9894a[i3 + 2] & 1048575, obj) == i2) {
            return true;
        }
        return false;
    }

    public final void m(int i2, Object obj, Object obj2) {
        if (!a(i2, obj2)) {
            return;
        }
        int p = p(i2) & 1048575;
        Unsafe unsafe = j;
        long j2 = p;
        Object object = unsafe.getObject(obj2, j2);
        if (object != null) {
            zzzs o = o(i2);
            if (!a(i2, obj)) {
                if (!r(object)) {
                    unsafe.putObject(obj, j2, object);
                } else {
                    Object zza = o.zza();
                    o.c(zza, object);
                    unsafe.putObject(obj, j2, zza);
                }
                i(i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!r(object2)) {
                Object zza2 = o.zza();
                o.c(zza2, object2);
                unsafe.putObject(obj, j2, zza2);
                object2 = zza2;
            }
            o.c(object2, object);
            return;
        }
        int i3 = this.f9894a[i2];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(i3, 38) + obj3.length());
        sb.append("Source subfield ");
        sb.append(i3);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    public final void n(int i2, Object obj, Object obj2) {
        int[] iArr = this.f9894a;
        int i3 = iArr[i2];
        if (!j(i3, i2, obj2)) {
            return;
        }
        int p = p(i2) & 1048575;
        Unsafe unsafe = j;
        long j2 = p;
        Object object = unsafe.getObject(obj2, j2);
        if (object != null) {
            zzzs o = o(i2);
            if (!j(i3, i2, obj)) {
                if (!r(object)) {
                    unsafe.putObject(obj, j2, object);
                } else {
                    Object zza = o.zza();
                    o.c(zza, object);
                    unsafe.putObject(obj, j2, zza);
                }
                zzaak.g(i3, iArr[i2 + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!r(object2)) {
                Object zza2 = o.zza();
                o.c(zza2, object2);
                unsafe.putObject(obj, j2, zza2);
                object2 = zza2;
            }
            o.c(object2, object);
            return;
        }
        int i4 = iArr[i2];
        String obj3 = obj2.toString();
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(i4, 38) + obj3.length());
        sb.append("Source subfield ");
        sb.append(i4);
        sb.append(" is present but null: ");
        sb.append(obj3);
        throw new IllegalStateException(sb.toString());
    }

    public final zzzs o(int i2) {
        int i3 = i2 / 3;
        int i4 = i3 + i3;
        Object[] objArr = this.b;
        zzzs zzzsVar = (zzzs) objArr[i4];
        if (zzzsVar != null) {
            return zzzsVar;
        }
        zzzs a2 = zzzp.f9899c.a((Class) objArr[i4 + 1]);
        objArr[i4] = a2;
        return a2;
    }

    public final int p(int i2) {
        return this.f9894a[i2 + 1];
    }

    public final boolean u(zzyd zzydVar, zzyd zzydVar2, int i2) {
        if (a(i2, zzydVar) == a(i2, zzydVar2)) {
            return true;
        }
        return false;
    }

    public final boolean v(int i2, int i3, int i4, int i5, Object obj) {
        if (i3 == 1048575) {
            return a(i2, obj);
        }
        if ((i4 & i5) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.cast.zzzs
    public final Object zza() {
        return (zzyd) ((zzyd) this.f9895c).j(4, null);
    }
}
