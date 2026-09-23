package com.google.android.gms.internal.auth;

import androidx.work.impl.workers.a;
import com.google.android.gms.common.ConnectionResult;
import java.lang.reflect.Field;
import java.util.Arrays;
import kotlin.KotlinVersion;
import sun.misc.Unsafe;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzga<T> implements zzgi<T> {
    public static final int[] k = new int[0];
    public static final Unsafe l = zzhj.e();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f9548a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9549c;
    public final int d;
    public final zzfx e;
    public final int[] f;
    public final int g;
    public final int h;
    public final zzfl i;
    public final zzgz j;

    public zzga(int[] iArr, Object[] objArr, int i, int i2, zzfx zzfxVar, int[] iArr2, int i3, int i4, zzfl zzflVar, zzgz zzgzVar) {
        this.f9548a = iArr;
        this.b = objArr;
        this.f9549c = i;
        this.d = i2;
        this.f = iArr2;
        this.g = i3;
        this.h = i4;
        this.i = zzflVar;
        this.j = zzgzVar;
        this.e = zzfxVar;
    }

    public static boolean k(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzev) {
            return ((zzev) obj).g();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0347  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x03a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.auth.zzga n(com.google.android.gms.internal.auth.zzfu r32, com.google.android.gms.internal.auth.zzfl r33, com.google.android.gms.internal.auth.zzgz r34) {
        /*
            Method dump skipped, instructions count: 1036
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.n(com.google.android.gms.internal.auth.zzfu, com.google.android.gms.internal.auth.zzfl, com.google.android.gms.internal.auth.zzgz):com.google.android.gms.internal.auth.zzga");
    }

    public static int o(zzev zzevVar, long j) {
        return ((Integer) zzhj.d(j, zzevVar)).intValue();
    }

    public static int q(int i) {
        return (i >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public static Field w(Class cls, String str) {
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
            StringBuilder u = a.u("Field ", str, " for ", name, " not found. Known fields are ");
            u.append(arrays);
            throw new RuntimeException(u.toString());
        }
    }

    public final void a(int i, Object obj, Object obj2) {
        l.putObject(obj, r(i) & 1048575, obj2);
        z(i, obj);
    }

    public final void b(int i, int i2, Object obj, Object obj2) {
        l.putObject(obj, r(i2) & 1048575, obj2);
        zzhj.h(i, this.f9548a[i2 + 2] & 1048575, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x00e0, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.auth.zzgi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.c(java.lang.Object):boolean");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01db A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.auth.zzgi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.google.android.gms.internal.auth.zzev r11, com.google.android.gms.internal.auth.zzev r12) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.d(com.google.android.gms.internal.auth.zzev, com.google.android.gms.internal.auth.zzev):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x0207, code lost:
    
        if (r4 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
    
        if (r4 != false) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        r8 = 1231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00e9, code lost:
    
        r3 = r8 + r3;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001e. Please report as an issue. */
    @Override // com.google.android.gms.internal.auth.zzgi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.auth.zzev r13) {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.e(com.google.android.gms.internal.auth.zzev):int");
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void f(Object obj) {
        if (!k(obj)) {
            return;
        }
        if (obj instanceof zzev) {
            zzev zzevVar = (zzev) obj;
            zzevVar.f();
            zzevVar.zza = 0;
            zzevVar.d();
        }
        int[] iArr = this.f9548a;
        int length = iArr.length;
        for (int i = 0; i < length; i += 3) {
            int r = r(i);
            int i2 = 1048575 & r;
            int q = q(r);
            long j = i2;
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
                            this.i.a(j, obj);
                            break;
                        case 50:
                            Unsafe unsafe = l;
                            Object object = unsafe.getObject(obj, j);
                            if (object != null) {
                                ((zzfr) object).f9545c = false;
                                unsafe.putObject(obj, j, object);
                                break;
                            } else {
                                break;
                            }
                    }
                } else if (l(iArr[i], i, obj)) {
                    t(i).f(l.getObject(obj, j));
                }
            }
            if (j(i, obj)) {
                t(i).f(l.getObject(obj, j));
            }
        }
        this.j.e(obj);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void g(Object obj, byte[] bArr, int i, int i2, zzdt zzdtVar) {
        m(obj, bArr, i, i2, 0, zzdtVar);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final void h(Object obj, Object obj2) {
        Object obj3;
        if (k(obj)) {
            obj2.getClass();
            int i = 0;
            while (true) {
                int[] iArr = this.f9548a;
                if (i < iArr.length) {
                    int r = r(i);
                    int i2 = iArr[i];
                    long j = r & 1048575;
                    switch (q(r)) {
                        case 0:
                            if (j(i, obj2)) {
                                zzhi zzhiVar = zzhj.f9571c;
                                obj3 = obj;
                                zzhiVar.d(obj3, j, zzhiVar.a(j, obj2));
                                z(i, obj3);
                                break;
                            }
                            break;
                        case 1:
                            if (j(i, obj2)) {
                                zzhi zzhiVar2 = zzhj.f9571c;
                                zzhiVar2.e(obj, j, zzhiVar2.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 2:
                            if (j(i, obj2)) {
                                zzhj.i(obj, j, zzhj.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 3:
                            if (j(i, obj2)) {
                                zzhj.i(obj, j, zzhj.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 4:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 5:
                            if (j(i, obj2)) {
                                zzhj.i(obj, j, zzhj.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 6:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 7:
                            if (j(i, obj2)) {
                                zzhi zzhiVar3 = zzhj.f9571c;
                                zzhiVar3.c(obj, j, zzhiVar3.f(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 8:
                            if (j(i, obj2)) {
                                zzhj.j(j, obj, zzhj.d(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 9:
                            x(i, obj, obj2);
                            break;
                        case 10:
                            if (j(i, obj2)) {
                                zzhj.j(j, obj, zzhj.d(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 11:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 12:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 13:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 14:
                            if (j(i, obj2)) {
                                zzhj.i(obj, j, zzhj.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 15:
                            if (j(i, obj2)) {
                                zzhj.h(zzhj.a(j, obj2), j, obj);
                                z(i, obj);
                                break;
                            }
                            break;
                        case 16:
                            if (j(i, obj2)) {
                                zzhj.i(obj, j, zzhj.b(j, obj2));
                                z(i, obj);
                                break;
                            }
                            break;
                        case 17:
                            x(i, obj, obj2);
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
                            this.i.b(j, obj, obj2);
                            break;
                        case 50:
                            Class cls = zzgk.f9557a;
                            zzhj.j(j, obj, zzfs.a(zzhj.d(j, obj), zzhj.d(j, obj2)));
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
                            if (l(i2, i, obj2)) {
                                zzhj.j(j, obj, zzhj.d(j, obj2));
                                zzhj.h(i2, iArr[i + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 60:
                            y(i, obj, obj2);
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (l(i2, i, obj2)) {
                                zzhj.j(j, obj, zzhj.d(j, obj2));
                                zzhj.h(i2, iArr[i + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 68:
                            y(i, obj, obj2);
                            break;
                    }
                    obj3 = obj;
                    i += 3;
                    obj = obj3;
                } else {
                    Object obj4 = obj;
                    Class cls2 = zzgk.f9557a;
                    zzgz zzgzVar = this.j;
                    zzgzVar.f(obj4, zzgzVar.c(zzgzVar.b(obj4), zzgzVar.b(obj2)));
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    public final boolean i(zzev zzevVar, zzev zzevVar2, int i) {
        if (j(i, zzevVar) == j(i, zzevVar2)) {
            return true;
        }
        return false;
    }

    public final boolean j(int i, Object obj) {
        int i2 = this.f9548a[i + 2];
        long j = i2 & 1048575;
        if (j == 1048575) {
            int r = r(i);
            long j2 = r & 1048575;
            switch (q(r)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzhj.f9571c.a(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(zzhj.f9571c.b(j2, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (zzhj.b(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zzhj.b(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zzhj.b(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zzhj.f9571c.f(j2, obj);
                case 8:
                    Object d = zzhj.d(j2, obj);
                    if (d instanceof String) {
                        if (((String) d).isEmpty()) {
                            return false;
                        }
                    } else if (d instanceof zzef) {
                        if (zzef.f.equals(d)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zzhj.d(j2, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzef.f.equals(zzhj.d(j2, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zzhj.b(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zzhj.a(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zzhj.b(j2, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zzhj.d(j2, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i2 >>> 20)) & zzhj.a(j, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean l(int i, int i2, Object obj) {
        if (zzhj.a(this.f9548a[i2 + 2] & 1048575, obj) == i) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:141:0x03b5, code lost:
    
        r14 = r27 | r24;
        r5 = r40;
        r3 = r1;
        r6 = r2;
        r2 = r9;
        r8 = r10;
        r7 = r11;
        r9 = r12;
        r1 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03c0, code lost:
    
        r15 = r20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02f8, code lost:
    
        throw com.google.android.gms.internal.auth.zzfb.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x035a, code lost:
    
        throw com.google.android.gms.internal.auth.zzfb.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x02a5, code lost:
    
        throw com.google.android.gms.internal.auth.zzfb.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:270:0x0445, code lost:
    
        r5 = r40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:271:0x0447, code lost:
    
        r8 = r10;
        r7 = r11;
        r9 = r12;
        r3 = r13;
        r6 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:331:0x0b64, code lost:
    
        r14 = r24;
        r9 = r28;
        r1 = r29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0e0f, code lost:
    
        if (r9 == 1048575) goto L610;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0e11, code lost:
    
        r29.putInt(r8, r9, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0e17, code lost:
    
        r2 = r36.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0e1d, code lost:
    
        if (r2 >= r36.h) goto L720;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0e1f, code lost:
    
        r3 = r36.f[r2];
        r6 = r22[r3];
        r6 = com.google.android.gms.internal.auth.zzhj.d(r(r3) & 1048575, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0e33, code lost:
    
        if (r6 != null) goto L616;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0e3a, code lost:
    
        if (s(r3) != null) goto L719;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0e3f, code lost:
    
        r6 = (com.google.android.gms.internal.auth.zzfr) r6;
        r3 = r3 / 3;
        r0 = (com.google.android.gms.internal.auth.zzfq) r17[r3 + r3];
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0e48, code lost:
    
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0e3c, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0e4b, code lost:
    
        if (r0 != 0) goto L627;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0e4d, code lost:
    
        if (r4 != r5) goto L625;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0e55, code lost:
    
        throw new java.io.IOException("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0e5a, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0e56, code lost:
    
        if (r4 > r5) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0e58, code lost:
    
        if (r15 != r0) goto L630;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0e60, code lost:
    
        throw new java.io.IOException("Failed to parse the message.");
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00e6, code lost:
    
        r5 = r40;
        r4 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00e9, code lost:
    
        r3 = r9;
        r8 = r10;
        r7 = r11;
        r9 = r12;
        r6 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x015b, code lost:
    
        r14 = r14 | r24;
        r3 = r2;
        r2 = r1;
        r1 = r3;
        r5 = r40;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:28:0x00b8. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:316:0x05b6. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:694:0x0bd5. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:154:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:328:0x0b6c  */
    /* JADX WARN: Removed duplicated region for block: B:329:0x0b5d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0dc5 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:698:0x0dbe  */
    /* JADX WARN: Removed duplicated region for block: B:699:0x0db2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0dda  */
    /* JADX WARN: Removed duplicated region for block: B:774:0x005f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v19, types: [java.util.LinkedHashMap, com.google.android.gms.internal.auth.zzfr] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m(java.lang.Object r37, byte[] r38, int r39, int r40, int r41, com.google.android.gms.internal.auth.zzdt r42) {
        /*
            Method dump skipped, instructions count: 3844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzga.m(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.auth.zzdt):int");
    }

    public final int p(int i, int i2) {
        int[] iArr = this.f9548a;
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

    public final int r(int i) {
        return this.f9548a[i + 1];
    }

    public final zzey s(int i) {
        int i2 = i / 3;
        return (zzey) this.b[i2 + i2 + 1];
    }

    public final zzgi t(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        Object[] objArr = this.b;
        zzgi zzgiVar = (zzgi) objArr[i3];
        if (zzgiVar != null) {
            return zzgiVar;
        }
        zzgi a2 = zzgf.f9553c.a((Class) objArr[i3 + 1]);
        objArr[i3] = a2;
        return a2;
    }

    public final Object u(int i, Object obj) {
        zzgi t = t(i);
        int r = r(i) & 1048575;
        if (!j(i, obj)) {
            return t.zzd();
        }
        Object object = l.getObject(obj, r);
        if (k(object)) {
            return object;
        }
        zzev zzd = t.zzd();
        if (object != null) {
            t.h(zzd, object);
        }
        return zzd;
    }

    public final Object v(int i, int i2, Object obj) {
        zzgi t = t(i2);
        if (!l(i, i2, obj)) {
            return t.zzd();
        }
        Object object = l.getObject(obj, r(i2) & 1048575);
        if (k(object)) {
            return object;
        }
        zzev zzd = t.zzd();
        if (object != null) {
            t.h(zzd, object);
        }
        return zzd;
    }

    public final void x(int i, Object obj, Object obj2) {
        if (!j(i, obj2)) {
            return;
        }
        int r = r(i) & 1048575;
        Unsafe unsafe = l;
        long j = r;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzgi t = t(i);
            if (!j(i, obj)) {
                if (!k(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    zzev zzd = t.zzd();
                    t.h(zzd, object);
                    unsafe.putObject(obj, j, zzd);
                }
                z(i, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                zzev zzd2 = t.zzd();
                t.h(zzd2, object2);
                unsafe.putObject(obj, j, zzd2);
                object2 = zzd2;
            }
            t.h(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f9548a[i] + " is present but null: " + obj2.toString());
    }

    public final void y(int i, Object obj, Object obj2) {
        int[] iArr = this.f9548a;
        int i2 = iArr[i];
        if (!l(i2, i, obj2)) {
            return;
        }
        int r = r(i) & 1048575;
        Unsafe unsafe = l;
        long j = r;
        Object object = unsafe.getObject(obj2, j);
        if (object != null) {
            zzgi t = t(i);
            if (!l(i2, i, obj)) {
                if (!k(object)) {
                    unsafe.putObject(obj, j, object);
                } else {
                    zzev zzd = t.zzd();
                    t.h(zzd, object);
                    unsafe.putObject(obj, j, zzd);
                }
                zzhj.h(i2, iArr[i + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j);
            if (!k(object2)) {
                zzev zzd2 = t.zzd();
                t.h(zzd2, object2);
                unsafe.putObject(obj, j, zzd2);
                object2 = zzd2;
            }
            t.h(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i] + " is present but null: " + obj2.toString());
    }

    public final void z(int i, Object obj) {
        int i2 = this.f9548a[i + 2];
        long j = 1048575 & i2;
        if (j == 1048575) {
            return;
        }
        zzhj.h((1 << (i2 >>> 20)) | zzhj.a(j, obj), j, obj);
    }

    @Override // com.google.android.gms.internal.auth.zzgi
    public final zzev zzd() {
        return ((zzev) this.e).b();
    }
}
