package com.google.android.gms.internal.play_billing;

import androidx.work.impl.workers.a;
import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzhf<T> implements zzhm<T> {
    public static final int[] l = new int[0];
    public static final Unsafe m = zzij.i();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f11522a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11523c;
    public final int d;
    public final zzhc e;
    public final boolean f;
    public final int[] g;
    public final int h;
    public final int i;
    public final zzic j;
    public final zzfi k;

    public zzhf(int[] iArr, Object[] objArr, int i, int i2, zzhc zzhcVar, int[] iArr2, int i3, int i4, zzic zzicVar, zzfi zzfiVar) {
        this.f11522a = iArr;
        this.b = objArr;
        this.f11523c = i;
        this.d = i2;
        boolean z = false;
        if (zzfiVar != null && (zzhcVar instanceof zzfs)) {
            z = true;
        }
        this.f = z;
        this.g = iArr2;
        this.h = i3;
        this.i = i4;
        this.j = zzicVar;
        this.k = zzfiVar;
        this.e = zzhcVar;
    }

    public static long A(long j, Object obj) {
        return ((Long) zzij.h(j, obj)).longValue();
    }

    public static Field F(Class cls, String str) {
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
            StringBuilder u = a.u("Field ", str, " for ", name, " not found. Known fields are ");
            u.append(arrays);
            throw new RuntimeException(u.toString(), e);
        }
    }

    public static boolean q(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzfv) {
            return ((zzfv) obj).g();
        }
        return true;
    }

    public static final int s(byte[] bArr, int i, int i2, zzis zzisVar, Class cls, zzej zzejVar) {
        boolean z;
        zzis zzisVar2 = zzis.g;
        switch (zzisVar.ordinal()) {
            case 0:
                int i3 = i + 8;
                zzejVar.f11489c = Double.valueOf(Double.longBitsToDouble(zzek.n(bArr, i)));
                return i3;
            case 1:
                int i4 = i + 4;
                zzejVar.f11489c = Float.valueOf(Float.intBitsToFloat(zzek.b(bArr, i)));
                return i4;
            case 2:
            case 3:
                int j = zzek.j(bArr, i, zzejVar);
                zzejVar.f11489c = Long.valueOf(zzejVar.b);
                return j;
            case 4:
            case 12:
            case 13:
                int g = zzek.g(bArr, i, zzejVar);
                zzejVar.f11489c = Integer.valueOf(zzejVar.f11488a);
                return g;
            case 5:
            case 15:
                int i5 = i + 8;
                zzejVar.f11489c = Long.valueOf(zzek.n(bArr, i));
                return i5;
            case 6:
            case 14:
                int i6 = i + 4;
                zzejVar.f11489c = Integer.valueOf(zzek.b(bArr, i));
                return i6;
            case 7:
                int j2 = zzek.j(bArr, i, zzejVar);
                if (zzejVar.b != 0) {
                    z = true;
                } else {
                    z = false;
                }
                zzejVar.f11489c = Boolean.valueOf(z);
                return j2;
            case 8:
                return zzek.e(bArr, i, zzejVar);
            case 9:
            default:
                throw new RuntimeException("unsupported field type.");
            case 10:
                zzhm a2 = zzhj.f11527c.a(cls);
                Object zze = a2.zze();
                int l2 = zzek.l(zze, a2, bArr, i, i2, zzejVar);
                a2.a(zze);
                zzejVar.f11489c = zze;
                return l2;
            case 11:
                return zzek.a(bArr, i, zzejVar);
            case 16:
                int g2 = zzek.g(bArr, i, zzejVar);
                zzejVar.f11489c = Integer.valueOf(zzey.a(zzejVar.f11488a));
                return g2;
            case 17:
                int j3 = zzek.j(bArr, i, zzejVar);
                zzejVar.f11489c = Long.valueOf(zzey.b(zzejVar.b));
                return j3;
        }
    }

    public static zzid u(Object obj) {
        zzfv zzfvVar = (zzfv) obj;
        zzid zzidVar = zzfvVar.zzc;
        if (zzidVar == zzid.f) {
            zzid b = zzid.b();
            zzfvVar.zzc = b;
            return b;
        }
        return zzidVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x03c5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.play_billing.zzhf v(com.google.android.gms.internal.play_billing.zzgz r35, com.google.android.gms.internal.play_billing.zzic r36, com.google.android.gms.internal.play_billing.zzfj r37) {
        /*
            Method dump skipped, instructions count: 1073
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhf.v(com.google.android.gms.internal.play_billing.zzgz, com.google.android.gms.internal.play_billing.zzic, com.google.android.gms.internal.play_billing.zzfj):com.google.android.gms.internal.play_billing.zzhf");
    }

    public static int w(long j, Object obj) {
        return ((Integer) zzij.h(j, obj)).intValue();
    }

    public static int y(int i) {
        return (i >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public final zzfy B(int i) {
        int i2 = i / 3;
        return (zzfy) this.b[i2 + i2 + 1];
    }

    public final zzhm C(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        zzhm zzhmVar = (zzhm) objArr[i3];
        if (zzhmVar != null) {
            return zzhmVar;
        }
        zzhm a2 = zzhj.f11527c.a((Class) objArr[i3 + 1]);
        objArr[i3] = a2;
        return a2;
    }

    public final Object D(int i, Object obj) {
        zzhm C = C(i);
        int z = z(i) & 1048575;
        if (!o(i, obj)) {
            return C.zze();
        }
        Object object = m.getObject(obj, z);
        if (q(object)) {
            return object;
        }
        Object zze = C.zze();
        if (object != null) {
            C.f(zze, object);
        }
        return zze;
    }

    public final Object E(int i, int i2, Object obj) {
        zzhm C = C(i2);
        if (!r(i, i2, obj)) {
            return C.zze();
        }
        Object object = m.getObject(obj, z(i2) & 1048575);
        if (q(object)) {
            return object;
        }
        Object zze = C.zze();
        if (object != null) {
            C.f(zze, object);
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void a(Object obj) {
        if (q(obj)) {
            if (obj instanceof zzfv) {
                zzfv zzfvVar = (zzfv) obj;
                zzfvVar.f();
                zzfvVar.zza = 0;
                zzfvVar.d();
            }
            int i = 0;
            while (true) {
                int[] iArr = this.f11522a;
                if (i < iArr.length) {
                    int z = z(i);
                    int i2 = 1048575 & z;
                    int y = y(z);
                    long j = i2;
                    if (y != 9) {
                        if (y != 60 && y != 68) {
                            switch (y) {
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
                                    ((zzga) zzij.h(j, obj)).zzb();
                                    break;
                                case 50:
                                    Unsafe unsafe = m;
                                    Object object = unsafe.getObject(obj, j);
                                    if (object == null) {
                                        break;
                                    } else {
                                        ((zzgw) object).f11517c = false;
                                        unsafe.putObject(obj, j, object);
                                        break;
                                    }
                            }
                        } else if (r(iArr[i], i, obj)) {
                            C(i).a(m.getObject(obj, j));
                        }
                        i += 3;
                    }
                    if (o(i, obj)) {
                        C(i).a(m.getObject(obj, j));
                    }
                    i += 3;
                } else {
                    this.j.b(obj);
                    if (this.f) {
                        this.k.a(obj);
                        return;
                    }
                    return;
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final boolean b(Object obj) {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int i5 = 0;
        int i6 = 1048575;
        while (i5 < this.h) {
            int i7 = this.g[i5];
            int[] iArr = this.f11522a;
            int i8 = iArr[i7];
            int z = z(i7);
            int i9 = iArr[i7 + 2];
            int i10 = i9 & 1048575;
            int i11 = 1 << (i9 >>> 20);
            if (i10 != i6) {
                if (i10 != 1048575) {
                    i4 = m.getInt(obj, i10);
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
            if ((268435456 & z) == 0 || p(i2, i, i3, i11, obj)) {
                int y = y(z);
                if (y != 9 && y != 17) {
                    if (y != 27) {
                        if (y != 60 && y != 68) {
                            if (y != 49) {
                                if (y != 50) {
                                    continue;
                                } else {
                                    zzgw zzgwVar = (zzgw) zzij.h(z & 1048575, obj);
                                    if (zzgwVar.isEmpty()) {
                                        continue;
                                    } else {
                                        int i13 = i2 / 3;
                                        if (((zzgv) this.b[i13 + i13]).f11516a.b.f11543c == zzit.m) {
                                            zzhm zzhmVar = null;
                                            for (Object obj2 : zzgwVar.values()) {
                                                if (zzhmVar == null) {
                                                    zzhmVar = zzhj.f11527c.a(obj2.getClass());
                                                }
                                                if (!zzhmVar.b(obj2)) {
                                                }
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                                i5++;
                                i6 = i;
                                i4 = i3;
                            }
                        } else {
                            if (r(i8, i2, obj) && !C(i2).b(zzij.h(z & 1048575, obj))) {
                            }
                            i5++;
                            i6 = i;
                            i4 = i3;
                        }
                    }
                    List list = (List) zzij.h(z & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzhm C = C(i2);
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            if (C.b(list.get(i14))) {
                            }
                        }
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                } else {
                    if (p(i2, i, i3, i11, obj) && !C(i2).b(zzij.h(z & 1048575, obj))) {
                    }
                    i5++;
                    i6 = i;
                    i4 = i3;
                }
            }
            return false;
        }
        if (this.f) {
            ((zzfs) obj).zzb.e();
        }
        return true;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.play_billing.zzhm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(com.google.android.gms.internal.play_billing.zzfv r8, com.google.android.gms.internal.play_billing.zzfv r9) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhf.c(com.google.android.gms.internal.play_billing.zzfv, com.google.android.gms.internal.play_billing.zzfv):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final int d(zzfv zzfvVar) {
        int i;
        int x;
        int y;
        int g;
        int c2;
        int i2;
        int d;
        int x2;
        int size;
        int k;
        int x3;
        int x4;
        int x5;
        int i3;
        int x6;
        int y2;
        zzhf<T> zzhfVar = this;
        zzfv zzfvVar2 = zzfvVar;
        Unsafe unsafe = m;
        int i4 = 1048575;
        int i5 = 1048575;
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        while (true) {
            int[] iArr = zzhfVar.f11522a;
            if (i6 < iArr.length) {
                int z = zzhfVar.z(i6);
                int y3 = y(z);
                int i9 = iArr[i6];
                int i10 = iArr[i6 + 2];
                int i11 = i10 & i4;
                if (y3 <= 17) {
                    if (i11 != i5) {
                        if (i11 == i4) {
                            i7 = 0;
                        } else {
                            i7 = unsafe.getInt(zzfvVar2, i11);
                        }
                        i5 = i11;
                    }
                    i = 1 << (i10 >>> 20);
                } else {
                    i = 0;
                }
                int i12 = z & i4;
                if (y3 >= zzfn.f.f11502c) {
                    zzfn.g.getClass();
                }
                long j = i12;
                switch (y3) {
                    case 0:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 2:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            long j2 = unsafe.getLong(zzfvVar2, j);
                            x = zzfc.x(i9 << 3);
                            y = zzfc.y(j2);
                            i8 += y + x;
                        }
                        zzhfVar = this;
                        break;
                    case 3:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            long j3 = unsafe.getLong(zzfvVar2, j);
                            x = zzfc.x(i9 << 3);
                            y = zzfc.y(j3);
                            i8 += y + x;
                        }
                        zzhfVar = this;
                        break;
                    case 4:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            long j4 = unsafe.getInt(zzfvVar2, j);
                            x = zzfc.x(i9 << 3);
                            y = zzfc.y(j4);
                            i8 += y + x;
                        }
                        zzhfVar = this;
                        break;
                    case 5:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 6:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 7:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 1, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 8:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            int i13 = i9 << 3;
                            Object object = unsafe.getObject(zzfvVar2, j);
                            if (object instanceof zzev) {
                                int x7 = zzfc.x(i13);
                                int i14 = ((zzev) object).i();
                                i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(i14, i14, x7, i8);
                            } else {
                                int x8 = zzfc.x(i13);
                                int b = zzio.b((String) object);
                                i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(b, b, x8, i8);
                            }
                        }
                        zzhfVar = this;
                        break;
                    case 9:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            g = zzho.g(i9, unsafe.getObject(zzfvVar2, j), zzhfVar.C(i6));
                            i8 += g;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            zzev zzevVar = (zzev) unsafe.getObject(zzfvVar2, j);
                            int x9 = zzfc.x(i9 << 3);
                            int i15 = zzevVar.i();
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(i15, i15, x9, i8);
                        }
                        zzhfVar = this;
                        break;
                    case 11:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(unsafe.getInt(zzfvVar2, j), zzfc.x(i9 << 3), i8);
                        }
                        zzhfVar = this;
                        break;
                    case 12:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            long j5 = unsafe.getInt(zzfvVar2, j);
                            x = zzfc.x(i9 << 3);
                            y = zzfc.y(j5);
                            i8 += y + x;
                        }
                        zzhfVar = this;
                        break;
                    case 13:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 14:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                        }
                        zzhfVar = this;
                        zzfvVar2 = zzfvVar;
                        break;
                    case 15:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            int i16 = unsafe.getInt(zzfvVar2, j);
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a((i16 >> 31) ^ (i16 + i16), zzfc.x(i9 << 3), i8);
                        }
                        zzhfVar = this;
                        break;
                    case 16:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            long j6 = unsafe.getLong(zzfvVar2, j);
                            x = zzfc.x(i9 << 3);
                            y = zzfc.y((j6 >> 63) ^ (j6 + j6));
                            i8 += y + x;
                        }
                        zzhfVar = this;
                        break;
                    case 17:
                        if (zzhfVar.p(i6, i5, i7, i, zzfvVar2)) {
                            zzhc zzhcVar = (zzhc) unsafe.getObject(zzfvVar2, j);
                            zzhm C = zzhfVar.C(i6);
                            zzie zzieVar = zzho.f11531a;
                            int x10 = zzfc.x(i9 << 3);
                            c2 = ((zzeg) zzhcVar).c(C) + x10 + x10;
                            i8 += c2;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        i2 = i5;
                        d = zzho.d(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case 19:
                        i2 = i5;
                        d = zzho.c(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case 20:
                        i2 = i5;
                        List list = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar2 = zzho.f11531a;
                        if (list.size() != 0) {
                            x2 = (zzfc.x(i9 << 3) * list.size()) + zzho.f(list);
                            i8 += x2;
                            i5 = i2;
                            break;
                        }
                        x2 = 0;
                        i8 += x2;
                        i5 = i2;
                    case 21:
                        i2 = i5;
                        List list2 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar3 = zzho.f11531a;
                        size = list2.size();
                        if (size != 0) {
                            k = zzho.k(list2);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 22:
                        i2 = i5;
                        List list3 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar4 = zzho.f11531a;
                        size = list3.size();
                        if (size != 0) {
                            k = zzho.e(list3);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        i2 = i5;
                        d = zzho.d(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        i2 = i5;
                        d = zzho.c(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case 25:
                        i2 = i5;
                        List list4 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar5 = zzho.f11531a;
                        int size2 = list4.size();
                        if (size2 != 0) {
                            x2 = (zzfc.x(i9 << 3) + 1) * size2;
                            i8 += x2;
                            i5 = i2;
                            break;
                        }
                        x2 = 0;
                        i8 += x2;
                        i5 = i2;
                    case 26:
                        i2 = i5;
                        List list5 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar6 = zzho.f11531a;
                        int size3 = list5.size();
                        if (size3 != 0) {
                            x4 = zzfc.x(i9 << 3) * size3;
                            if (list5 instanceof zzgk) {
                                zzgk zzgkVar = (zzgk) list5;
                                for (int i17 = 0; i17 < size3; i17++) {
                                    Object zza = zzgkVar.zza();
                                    if (zza instanceof zzev) {
                                        int i18 = ((zzev) zza).i();
                                        x4 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i18, i18, x4);
                                    } else {
                                        int b2 = zzio.b((String) zza);
                                        x4 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(b2, b2, x4);
                                    }
                                }
                            } else {
                                for (int i19 = 0; i19 < size3; i19++) {
                                    Object obj = list5.get(i19);
                                    if (obj instanceof zzev) {
                                        int i20 = ((zzev) obj).i();
                                        x4 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i20, i20, x4);
                                    } else {
                                        int b3 = zzio.b((String) obj);
                                        x4 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(b3, b3, x4);
                                    }
                                }
                            }
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 27:
                        i2 = i5;
                        List list6 = (List) unsafe.getObject(zzfvVar2, j);
                        zzhm C2 = zzhfVar.C(i6);
                        zzie zzieVar7 = zzho.f11531a;
                        int size4 = list6.size();
                        if (size4 == 0) {
                            x5 = 0;
                        } else {
                            x5 = zzfc.x(i9 << 3) * size4;
                            for (int i21 = 0; i21 < size4; i21++) {
                                Object obj2 = list6.get(i21);
                                if (obj2 instanceof zzgj) {
                                    int a2 = ((zzgj) obj2).a();
                                    x5 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(a2, a2, x5);
                                } else {
                                    int c3 = ((zzeg) obj2).c(C2);
                                    x5 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(c3, c3, x5);
                                }
                            }
                        }
                        i8 += x5;
                        i5 = i2;
                        break;
                    case 28:
                        i2 = i5;
                        List list7 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar8 = zzho.f11531a;
                        int size5 = list7.size();
                        if (size5 != 0) {
                            x4 = zzfc.x(i9 << 3) * size5;
                            for (int i22 = 0; i22 < list7.size(); i22++) {
                                int i23 = ((zzev) list7.get(i22)).i();
                                x4 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i23, i23, x4);
                            }
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 29:
                        i2 = i5;
                        List list8 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar9 = zzho.f11531a;
                        size = list8.size();
                        if (size != 0) {
                            k = zzho.j(list8);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 30:
                        i2 = i5;
                        List list9 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar10 = zzho.f11531a;
                        size = list9.size();
                        if (size != 0) {
                            k = zzho.b(list9);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 31:
                        i2 = i5;
                        d = zzho.c(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case 32:
                        i2 = i5;
                        d = zzho.d(i9, (List) unsafe.getObject(zzfvVar2, j));
                        i8 += d;
                        i5 = i2;
                        break;
                    case 33:
                        i2 = i5;
                        List list10 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar11 = zzho.f11531a;
                        size = list10.size();
                        if (size != 0) {
                            k = zzho.h(list10);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 34:
                        i2 = i5;
                        List list11 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar12 = zzho.f11531a;
                        size = list11.size();
                        if (size != 0) {
                            k = zzho.i(list11);
                            x3 = zzfc.x(i9 << 3);
                            x4 = (x3 * size) + k;
                            i8 += x4;
                            i5 = i2;
                            break;
                        }
                        x4 = 0;
                        i8 += x4;
                        i5 = i2;
                    case 35:
                        i2 = i5;
                        List list12 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar13 = zzho.f11531a;
                        int size6 = list12.size() * 8;
                        if (size6 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size6, zzfc.x(i9 << 3), size6, i8);
                        }
                        i5 = i2;
                        break;
                    case 36:
                        i2 = i5;
                        List list13 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar14 = zzho.f11531a;
                        int size7 = list13.size() * 4;
                        if (size7 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size7, zzfc.x(i9 << 3), size7, i8);
                        }
                        i5 = i2;
                        break;
                    case 37:
                        i2 = i5;
                        int f = zzho.f((List) unsafe.getObject(zzfvVar2, j));
                        if (f > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(f, zzfc.x(i9 << 3), f, i8);
                        }
                        i5 = i2;
                        break;
                    case 38:
                        i2 = i5;
                        int k2 = zzho.k((List) unsafe.getObject(zzfvVar2, j));
                        if (k2 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(k2, zzfc.x(i9 << 3), k2, i8);
                        }
                        i5 = i2;
                        break;
                    case 39:
                        i2 = i5;
                        int e = zzho.e((List) unsafe.getObject(zzfvVar2, j));
                        if (e > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(e, zzfc.x(i9 << 3), e, i8);
                        }
                        i5 = i2;
                        break;
                    case 40:
                        i2 = i5;
                        List list14 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar15 = zzho.f11531a;
                        int size8 = list14.size() * 8;
                        if (size8 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size8, zzfc.x(i9 << 3), size8, i8);
                        }
                        i5 = i2;
                        break;
                    case 41:
                        i2 = i5;
                        List list15 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar16 = zzho.f11531a;
                        int size9 = list15.size() * 4;
                        if (size9 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size9, zzfc.x(i9 << 3), size9, i8);
                        }
                        i5 = i2;
                        break;
                    case 42:
                        i2 = i5;
                        List list16 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar17 = zzho.f11531a;
                        int size10 = list16.size();
                        if (size10 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size10, zzfc.x(i9 << 3), size10, i8);
                        }
                        i5 = i2;
                        break;
                    case 43:
                        i2 = i5;
                        int j7 = zzho.j((List) unsafe.getObject(zzfvVar2, j));
                        if (j7 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(j7, zzfc.x(i9 << 3), j7, i8);
                        }
                        i5 = i2;
                        break;
                    case 44:
                        i2 = i5;
                        int b4 = zzho.b((List) unsafe.getObject(zzfvVar2, j));
                        if (b4 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(b4, zzfc.x(i9 << 3), b4, i8);
                        }
                        i5 = i2;
                        break;
                    case 45:
                        i2 = i5;
                        List list17 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar18 = zzho.f11531a;
                        int size11 = list17.size() * 4;
                        if (size11 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size11, zzfc.x(i9 << 3), size11, i8);
                        }
                        i5 = i2;
                        break;
                    case 46:
                        i2 = i5;
                        List list18 = (List) unsafe.getObject(zzfvVar2, j);
                        zzie zzieVar19 = zzho.f11531a;
                        int size12 = list18.size() * 8;
                        if (size12 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(size12, zzfc.x(i9 << 3), size12, i8);
                        }
                        i5 = i2;
                        break;
                    case 47:
                        i2 = i5;
                        int h = zzho.h((List) unsafe.getObject(zzfvVar2, j));
                        if (h > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(h, zzfc.x(i9 << 3), h, i8);
                        }
                        i5 = i2;
                        break;
                    case 48:
                        i2 = i5;
                        int i24 = zzho.i((List) unsafe.getObject(zzfvVar2, j));
                        if (i24 > 0) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(i24, zzfc.x(i9 << 3), i24, i8);
                        }
                        i5 = i2;
                        break;
                    case 49:
                        i2 = i5;
                        List list19 = (List) unsafe.getObject(zzfvVar2, j);
                        zzhm C3 = zzhfVar.C(i6);
                        zzie zzieVar20 = zzho.f11531a;
                        int size13 = list19.size();
                        if (size13 == 0) {
                            i3 = 0;
                        } else {
                            i3 = 0;
                            for (int i25 = 0; i25 < size13; i25++) {
                                zzhc zzhcVar2 = (zzhc) list19.get(i25);
                                int x11 = zzfc.x(i9 << 3);
                                i3 += ((zzeg) zzhcVar2).c(C3) + x11 + x11;
                            }
                        }
                        i8 += i3;
                        i5 = i2;
                        break;
                    case 50:
                        int i26 = i6 / 3;
                        zzgw zzgwVar = (zzgw) unsafe.getObject(zzfvVar2, j);
                        zzgv zzgvVar = (zzgv) zzhfVar.b[i26 + i26];
                        if (zzgwVar.isEmpty()) {
                            i3 = 0;
                        } else {
                            i3 = 0;
                            for (Map.Entry entry : zzgwVar.entrySet()) {
                                Object key = entry.getKey();
                                Object value = entry.getValue();
                                zzgu zzguVar = zzgvVar.f11516a;
                                int x12 = zzfc.x(i9 << 3);
                                int i27 = i5;
                                int a3 = zzfm.a(zzguVar.f11514a, 1, key) + zzfm.a(zzguVar.b, 2, value);
                                i3 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(a3, a3, x12, i3);
                                i5 = i27;
                            }
                        }
                        i2 = i5;
                        i8 += i3;
                        i5 = i2;
                        break;
                    case 51:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            long A = A(j, zzfvVar2);
                            x6 = zzfc.x(i9 << 3);
                            y2 = zzfc.y(A);
                            i8 += y2 + x6;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            long A2 = A(j, zzfvVar2);
                            x6 = zzfc.x(i9 << 3);
                            y2 = zzfc.y(A2);
                            i8 += y2 + x6;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            long w = w(j, zzfvVar2);
                            x6 = zzfc.x(i9 << 3);
                            y2 = zzfc.y(w);
                            i8 += y2 + x6;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 1, i8);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            int i28 = i9 << 3;
                            Object object2 = unsafe.getObject(zzfvVar2, j);
                            if (object2 instanceof zzev) {
                                int x13 = zzfc.x(i28);
                                int i29 = ((zzev) object2).i();
                                i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(i29, i29, x13, i8);
                                break;
                            } else {
                                int x14 = zzfc.x(i28);
                                int b5 = zzio.b((String) object2);
                                i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(b5, b5, x14, i8);
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            g = zzho.g(i9, unsafe.getObject(zzfvVar2, j), zzhfVar.C(i6));
                            i8 += g;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            zzev zzevVar2 = (zzev) unsafe.getObject(zzfvVar2, j);
                            int x15 = zzfc.x(i9 << 3);
                            int i30 = zzevVar2.i();
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.b(i30, i30, x15, i8);
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(w(j, zzfvVar2), zzfc.x(i9 << 3), i8);
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            long w2 = w(j, zzfvVar2);
                            x6 = zzfc.x(i9 << 3);
                            y2 = zzfc.y(w2);
                            i8 += y2 + x6;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 4, i8);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a(i9 << 3, 8, i8);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            int w3 = w(j, zzfvVar2);
                            i8 = com.google.android.gms.internal.mlkit_vision_text_common.a.a((w3 >> 31) ^ (w3 + w3), zzfc.x(i9 << 3), i8);
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            long A3 = A(j, zzfvVar2);
                            x6 = zzfc.x(i9 << 3);
                            y2 = zzfc.y((A3 >> 63) ^ (A3 + A3));
                            i8 += y2 + x6;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzhfVar.r(i9, i6, zzfvVar2)) {
                            zzhc zzhcVar3 = (zzhc) unsafe.getObject(zzfvVar2, j);
                            zzhm C4 = zzhfVar.C(i6);
                            zzie zzieVar21 = zzho.f11531a;
                            int x16 = zzfc.x(i9 << 3);
                            c2 = ((zzeg) zzhcVar3).c(C4) + x16 + x16;
                            i8 += c2;
                            break;
                        } else {
                            break;
                        }
                }
                i6 += 3;
                i4 = 1048575;
            } else {
                int a4 = zzfvVar2.zzc.a() + i8;
                if (zzhfVar.f) {
                    zzhp zzhpVar = ((zzfs) zzfvVar2).zzb.f11500a;
                    if (zzhpVar.f <= 0) {
                        Iterator<T> it = zzhpVar.b().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it.next();
                            zzfl zzflVar = (zzfl) entry2.getKey();
                            entry2.getValue();
                            zzflVar.zzb();
                            throw null;
                        }
                    } else {
                        ((zzfl) ((zzhq) zzhpVar.d(0)).f11532c).zzb();
                        throw null;
                    }
                }
                return a4;
            }
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void e(Object obj, byte[] bArr, int i, int i2, zzej zzejVar) {
        t(obj, bArr, i, i2, 0, zzejVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final void f(Object obj, Object obj2) {
        Object obj3;
        if (q(obj)) {
            obj2.getClass();
            int i = 0;
            while (true) {
                int[] iArr = this.f11522a;
                if (i < iArr.length) {
                    int z = z(i);
                    int i2 = z & 1048575;
                    int y = y(z);
                    int i3 = iArr[i];
                    long j = i2;
                    switch (y) {
                        case 0:
                            if (o(i, obj2)) {
                                zzii zziiVar = zzij.f11541c;
                                obj3 = obj;
                                zziiVar.e(obj3, j, zziiVar.a(j, obj2));
                                k(i, obj3);
                                break;
                            }
                            break;
                        case 1:
                            if (o(i, obj2)) {
                                zzii zziiVar2 = zzij.f11541c;
                                zziiVar2.f(obj, j, zziiVar2.b(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 2:
                            if (o(i, obj2)) {
                                zzij.k(obj, j, zzij.f(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 3:
                            if (o(i, obj2)) {
                                zzij.k(obj, j, zzij.f(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 4:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 5:
                            if (o(i, obj2)) {
                                zzij.k(obj, j, zzij.f(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 6:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 7:
                            if (o(i, obj2)) {
                                zzii zziiVar3 = zzij.f11541c;
                                zziiVar3.c(obj, j, zziiVar3.g(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 8:
                            if (o(i, obj2)) {
                                zzij.l(j, obj, zzij.h(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 9:
                            i(i, obj, obj2);
                            break;
                        case 10:
                            if (o(i, obj2)) {
                                zzij.l(j, obj, zzij.h(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 11:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 12:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 13:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 14:
                            if (o(i, obj2)) {
                                zzij.k(obj, j, zzij.f(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 15:
                            if (o(i, obj2)) {
                                zzij.j(zzij.e(j, obj2), j, obj);
                                k(i, obj);
                                break;
                            }
                            break;
                        case 16:
                            if (o(i, obj2)) {
                                zzij.k(obj, j, zzij.f(j, obj2));
                                k(i, obj);
                                break;
                            }
                            break;
                        case 17:
                            i(i, obj, obj2);
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
                            zzga zzgaVar = (zzga) zzij.h(j, obj);
                            zzga zzgaVar2 = (zzga) zzij.h(j, obj2);
                            int size = zzgaVar.size();
                            int size2 = zzgaVar2.size();
                            if (size > 0 && size2 > 0) {
                                if (!zzgaVar.zzc()) {
                                    zzgaVar = zzgaVar.f(size2 + size);
                                }
                                zzgaVar.addAll(zzgaVar2);
                            }
                            if (size > 0) {
                                zzgaVar2 = zzgaVar;
                            }
                            zzij.l(j, obj, zzgaVar2);
                            break;
                        case 50:
                            zzie zzieVar = zzho.f11531a;
                            zzij.l(j, obj, zzgx.a(zzij.h(j, obj), zzij.h(j, obj2)));
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
                            if (r(i3, i, obj2)) {
                                zzij.l(j, obj, zzij.h(j, obj2));
                                zzij.j(i3, iArr[i + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 60:
                            j(i, obj, obj2);
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (r(i3, i, obj2)) {
                                zzij.l(j, obj, zzij.h(j, obj2));
                                zzij.j(i3, iArr[i + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 68:
                            j(i, obj, obj2);
                            break;
                    }
                    obj3 = obj;
                    i += 3;
                    obj = obj3;
                } else {
                    Object obj4 = obj;
                    zzho.l(obj4, obj2);
                    if (this.f && !((zzfs) obj2).zzb.f11500a.isEmpty()) {
                        throw null;
                    }
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
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
    @Override // com.google.android.gms.internal.play_billing.zzhm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int g(com.google.android.gms.internal.play_billing.zzfv r11) {
        /*
            Method dump skipped, instructions count: 744
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhf.g(com.google.android.gms.internal.play_billing.zzfv):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:842:0x0e64 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // com.google.android.gms.internal.play_billing.zzhm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(java.lang.Object r22, com.google.android.gms.internal.play_billing.zzfd r23) {
        /*
            Method dump skipped, instructions count: 3846
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhf.h(java.lang.Object, com.google.android.gms.internal.play_billing.zzfd):void");
    }

    public final void i(int i, Object obj, Object obj2) {
        if (!o(i, obj2)) {
            return;
        }
        int z = z(i) & 1048575;
        Unsafe unsafe = m;
        long j = z;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzhm C = C(i);
            if (!o(i, obj)) {
                if (!q(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zze = C.zze();
                    C.f(zze, object);
                    unsafe.putObject(obj, j, zze);
                }
                k(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!q(object2)) {
                Object zze2 = C.zze();
                C.f(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            C.f(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f11522a[i] + " is present but null: " + obj2.toString());
    }

    public final void j(int i, Object obj, Object obj2) {
        int[] iArr = this.f11522a;
        int i2 = iArr[i];
        if (!r(i2, i, obj2)) {
            return;
        }
        int z = z(i) & 1048575;
        Unsafe unsafe = m;
        long j = z;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzhm C = C(i);
            if (!r(i2, i, obj)) {
                if (!q(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    Object zze = C.zze();
                    C.f(zze, object);
                    unsafe.putObject(obj, j, zze);
                }
                zzij.j(i2, iArr[i + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!q(object2)) {
                Object zze2 = C.zze();
                C.f(zze2, object2);
                unsafe.putObject(obj, j, zze2);
                object2 = zze2;
            }
            C.f(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
    }

    public final void k(int i, Object obj) {
        int i2 = this.f11522a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        zzij.j((1 << (i2 >>> 20)) | zzij.e(j, obj), j, obj);
    }

    public final void l(int i, Object obj, Object obj2) {
        m.putObject(obj, z(i) & 1048575, obj2);
        k(i, obj);
    }

    public final void m(int i, int i2, Object obj, Object obj2) {
        m.putObject(obj, z(i2) & 1048575, obj2);
        zzij.j(i, this.f11522a[i2 + 2] & 1048575, obj);
    }

    public final boolean n(zzfv zzfvVar, zzfv zzfvVar2, int i) {
        if (o(i, zzfvVar) == o(i, zzfvVar2)) {
            return true;
        }
        return false;
    }

    public final boolean o(int i, Object obj) {
        int i2 = this.f11522a[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int z = z(i);
            long j2 = z & 1048575;
            switch (y(z)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzij.f11541c.a(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(zzij.f11541c.b(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (zzij.f(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zzij.f(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zzij.f(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zzij.f11541c.g(j2, obj);
                case 8:
                    Object h = zzij.h(j2, obj);
                    if (h instanceof String) {
                        if (((String) h).isEmpty()) {
                            return false;
                        }
                    } else if (h instanceof zzev) {
                        if (zzev.f.equals(h)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zzij.h(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzev.f.equals(zzij.h(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zzij.f(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zzij.e(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zzij.f(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zzij.h(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & zzij.e(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean p(int i, int i2, int i3, int i4, Object obj) {
        if (i2 == 1048575) {
            return o(i, obj);
        }
        if ((i3 & i4) != 0) {
            return true;
        }
        return false;
    }

    public final boolean r(int i, int i2, Object obj) {
        if (zzij.e(this.f11522a[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public final int t(java.lang.Object r43, byte[] r44, int r45, int r46, int r47, com.google.android.gms.internal.play_billing.zzej r48) {
        /*
            Method dump skipped, instructions count: 4850
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.play_billing.zzhf.t(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.play_billing.zzej):int");
    }

    public final int x(int i, int i2) {
        int[] iArr = this.f11522a;
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

    public final int z(int i) {
        return this.f11522a[i + 1];
    }

    @Override // com.google.android.gms.internal.play_billing.zzhm
    public final Object zze() {
        return ((zzfv) this.e).m();
    }
}
