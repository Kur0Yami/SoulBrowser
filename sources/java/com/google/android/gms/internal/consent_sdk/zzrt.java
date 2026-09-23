package com.google.android.gms.internal.consent_sdk;

import androidx.work.impl.workers.a;
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
public final class zzrt<T> implements zzsa<T> {
    public static final int[] i = new int[0];
    public static final Unsafe j = zzsw.i();

    /* renamed from: a, reason: collision with root package name */
    public final int[] f10099a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final zzrq f10100c;
    public final boolean d;
    public final int[] e;
    public final int f;
    public final zzsp g;
    public final zzqb h;

    public zzrt(int[] iArr, Object[] objArr, zzrq zzrqVar, int[] iArr2, int i2, zzsp zzspVar, zzqb zzqbVar) {
        this.f10099a = iArr;
        this.b = objArr;
        boolean z = false;
        if (zzqbVar != null && (zzrqVar instanceof zzqk)) {
            z = true;
        }
        this.d = z;
        this.e = iArr2;
        this.f = i2;
        this.g = zzspVar;
        this.h = zzqbVar;
        this.f10100c = zzrqVar;
    }

    public static boolean h(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzqm) {
            return ((zzqm) obj).e();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x037f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.consent_sdk.zzrt j(com.google.android.gms.internal.consent_sdk.zzrn r32, com.google.android.gms.internal.consent_sdk.zzsp r33, com.google.android.gms.internal.consent_sdk.zzqc r34) {
        /*
            Method dump skipped, instructions count: 1002
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzrt.j(com.google.android.gms.internal.consent_sdk.zzrn, com.google.android.gms.internal.consent_sdk.zzsp, com.google.android.gms.internal.consent_sdk.zzqc):com.google.android.gms.internal.consent_sdk.zzrt");
    }

    public static int k(long j2, Object obj) {
        return ((Integer) zzsw.h(j2, obj)).intValue();
    }

    public static int l(int i2) {
        return (i2 >>> 20) & KotlinVersion.MAX_COMPONENT_VALUE;
    }

    public static long n(long j2, Object obj) {
        return ((Long) zzsw.h(j2, obj)).longValue();
    }

    public static Field p(Class cls, String str) {
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

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final void a(Object obj) {
        if (h(obj)) {
            if (obj instanceof zzqm) {
                zzqm zzqmVar = (zzqm) obj;
                zzqmVar.d();
                zzqmVar.zza = 0;
                zzqmVar.k();
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.f10099a;
                if (i2 < iArr.length) {
                    int m = m(i2);
                    int i3 = 1048575 & m;
                    int l = l(m);
                    long j2 = i3;
                    if (l != 9) {
                        if (l != 60 && l != 68) {
                            switch (l) {
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
                                    ((zzqr) zzsw.h(j2, obj)).zzb();
                                    break;
                                case 50:
                                    Unsafe unsafe = j;
                                    Object object = unsafe.getObject(obj, j2);
                                    if (object == null) {
                                        break;
                                    } else {
                                        ((zzrk) object).f10096c = false;
                                        unsafe.putObject(obj, j2, object);
                                        break;
                                    }
                            }
                        } else if (i(iArr[i2], i2, obj)) {
                            o(i2).a(j.getObject(obj, j2));
                        }
                        i2 += 3;
                    }
                    if (u(i2, obj)) {
                        o(i2).a(j.getObject(obj, j2));
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

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final boolean b(Object obj) {
        int i2;
        int i3;
        int i4;
        int i5 = 0;
        int i6 = 0;
        int i7 = 1048575;
        while (i6 < this.f) {
            int i8 = this.e[i6];
            int[] iArr = this.f10099a;
            int i9 = iArr[i8];
            int m = m(i8);
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
            if ((268435456 & m) == 0 || v(i3, i2, i4, i12, obj)) {
                int l = l(m);
                if (l != 9 && l != 17) {
                    if (l != 27) {
                        if (l != 60 && l != 68) {
                            if (l != 49) {
                                if (l != 50) {
                                    continue;
                                } else {
                                    zzrk zzrkVar = (zzrk) zzsw.h(m & 1048575, obj);
                                    if (zzrkVar.isEmpty()) {
                                        continue;
                                    } else {
                                        int i14 = i3 / 3;
                                        if (((zzrj) this.b[i14 + i14]).f10095a.b.f10119c == zzta.m) {
                                            zzsa zzsaVar = null;
                                            for (Object obj2 : zzrkVar.values()) {
                                                if (zzsaVar == null) {
                                                    zzsaVar = zzrx.f10104c.a(obj2.getClass());
                                                }
                                                if (!zzsaVar.b(obj2)) {
                                                }
                                            }
                                        } else {
                                            continue;
                                        }
                                    }
                                }
                                i6++;
                                i7 = i2;
                                i5 = i4;
                            }
                        } else {
                            if (i(i9, i3, obj) && !o(i3).b(zzsw.h(m & 1048575, obj))) {
                            }
                            i6++;
                            i7 = i2;
                            i5 = i4;
                        }
                    }
                    List list = (List) zzsw.h(m & 1048575, obj);
                    if (list.isEmpty()) {
                        continue;
                    } else {
                        zzsa o = o(i3);
                        for (int i15 = 0; i15 < list.size(); i15++) {
                            if (o.b(list.get(i15))) {
                            }
                        }
                    }
                    i6++;
                    i7 = i2;
                    i5 = i4;
                } else {
                    if (v(i3, i2, i4, i12, obj) && !o(i3).b(zzsw.h(m & 1048575, obj))) {
                    }
                    i6++;
                    i7 = i2;
                    i5 = i4;
                }
            }
            return false;
        }
        if (this.d) {
            ((zzqk) obj).zzb.e();
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
    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int c(com.google.android.gms.internal.consent_sdk.zzqm r11) {
        /*
            Method dump skipped, instructions count: 746
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzrt.c(com.google.android.gms.internal.consent_sdk.zzqm):int");
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x01d5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x01c7 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.google.android.gms.internal.consent_sdk.zzqm r8, com.google.android.gms.internal.consent_sdk.zzqm r9) {
        /*
            Method dump skipped, instructions count: 632
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzrt.d(com.google.android.gms.internal.consent_sdk.zzqm, com.google.android.gms.internal.consent_sdk.zzqm):boolean");
    }

    /* JADX WARN: Type inference failed for: r3v6, types: [java.util.LinkedHashMap, com.google.android.gms.internal.consent_sdk.zzrk] */
    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final void e(Object obj, Object obj2) {
        Object obj3;
        if (h(obj)) {
            obj2.getClass();
            int i2 = 0;
            while (true) {
                int[] iArr = this.f10099a;
                if (i2 < iArr.length) {
                    int m = m(i2);
                    int i3 = m & 1048575;
                    int l = l(m);
                    int i4 = iArr[i2];
                    long j2 = i3;
                    switch (l) {
                        case 0:
                            if (u(i2, obj2)) {
                                zzsv zzsvVar = zzsw.f10118c;
                                obj3 = obj;
                                zzsvVar.e(obj3, j2, zzsvVar.a(j2, obj2));
                                s(i2, obj3);
                                break;
                            }
                            break;
                        case 1:
                            if (u(i2, obj2)) {
                                zzsv zzsvVar2 = zzsw.f10118c;
                                zzsvVar2.f(obj, j2, zzsvVar2.b(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 2:
                            if (u(i2, obj2)) {
                                zzsw.l(obj, j2, zzsw.f(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 3:
                            if (u(i2, obj2)) {
                                zzsw.l(obj, j2, zzsw.f(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 4:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 5:
                            if (u(i2, obj2)) {
                                zzsw.l(obj, j2, zzsw.f(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 6:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 7:
                            if (u(i2, obj2)) {
                                zzsv zzsvVar3 = zzsw.f10118c;
                                zzsvVar3.c(obj, j2, zzsvVar3.g(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 8:
                            if (u(i2, obj2)) {
                                zzsw.m(j2, obj, zzsw.h(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 9:
                            q(i2, obj, obj2);
                            break;
                        case 10:
                            if (u(i2, obj2)) {
                                zzsw.m(j2, obj, zzsw.h(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 11:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 12:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 13:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 14:
                            if (u(i2, obj2)) {
                                zzsw.l(obj, j2, zzsw.f(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 15:
                            if (u(i2, obj2)) {
                                zzsw.k(zzsw.e(j2, obj2), j2, obj);
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 16:
                            if (u(i2, obj2)) {
                                zzsw.l(obj, j2, zzsw.f(j2, obj2));
                                s(i2, obj);
                                break;
                            }
                            break;
                        case 17:
                            q(i2, obj, obj2);
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
                            zzqr zzqrVar = (zzqr) zzsw.h(j2, obj);
                            zzqr zzqrVar2 = (zzqr) zzsw.h(j2, obj2);
                            int size = zzqrVar.size();
                            int size2 = zzqrVar2.size();
                            if (size > 0 && size2 > 0) {
                                if (!zzqrVar.zzc()) {
                                    zzqrVar = zzqrVar.f(size2 + size);
                                }
                                zzqrVar.addAll(zzqrVar2);
                            }
                            if (size > 0) {
                                zzqrVar2 = zzqrVar;
                            }
                            zzsw.m(j2, obj, zzqrVar2);
                            break;
                        case 50:
                            zzsr zzsrVar = zzsc.f10109a;
                            zzrk zzrkVar = (zzrk) zzsw.h(j2, obj);
                            zzrk zzrkVar2 = (zzrk) zzsw.h(j2, obj2);
                            if (!zzrkVar2.isEmpty()) {
                                if (!zzrkVar.f10096c) {
                                    if (zzrkVar.isEmpty()) {
                                        zzrkVar = new zzrk();
                                    } else {
                                        ?? linkedHashMap = new LinkedHashMap(zzrkVar);
                                        linkedHashMap.f10096c = true;
                                        zzrkVar = linkedHashMap;
                                    }
                                }
                                zzrkVar.b();
                                if (!zzrkVar2.isEmpty()) {
                                    zzrkVar.putAll(zzrkVar2);
                                }
                            }
                            zzsw.m(j2, obj, zzrkVar);
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
                            if (i(i4, i2, obj2)) {
                                zzsw.m(j2, obj, zzsw.h(j2, obj2));
                                zzsw.k(i4, iArr[i2 + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 60:
                            r(i2, obj, obj2);
                            break;
                        case 61:
                        case 62:
                        case 63:
                        case 64:
                        case 65:
                        case 66:
                        case 67:
                            if (i(i4, i2, obj2)) {
                                zzsw.m(j2, obj, zzsw.h(j2, obj2));
                                zzsw.k(i4, iArr[i2 + 2] & 1048575, obj);
                                break;
                            }
                            break;
                        case 68:
                            r(i2, obj, obj2);
                            break;
                    }
                    obj3 = obj;
                    i2 += 3;
                    obj = obj3;
                } else {
                    Object obj4 = obj;
                    zzsc.l(obj4, obj2);
                    if (this.d && !((zzqk) obj2).zzb.f10080a.isEmpty()) {
                        throw null;
                    }
                    return;
                }
            }
        } else {
            throw new IllegalArgumentException("Mutating immutable message: ".concat(String.valueOf(obj)));
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:16:0x004c. Please report as an issue. */
    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final int f(zzqm zzqmVar) {
        int i2;
        int c2;
        int d;
        int c3;
        int g;
        int c4;
        int g2;
        int c5;
        int size;
        int k;
        int c6;
        int i3;
        int c7;
        int c8;
        int size2;
        int c9;
        int c10;
        int i4;
        int c11;
        int g3;
        int c12;
        zzrt<T> zzrtVar = this;
        zzqm zzqmVar2 = zzqmVar;
        Unsafe unsafe = j;
        int i5 = 1048575;
        int i6 = 1048575;
        int i7 = 0;
        int i8 = 0;
        int i9 = 0;
        while (true) {
            int[] iArr = zzrtVar.f10099a;
            if (i7 < iArr.length) {
                int m = zzrtVar.m(i7);
                int l = l(m);
                int i10 = iArr[i7];
                int i11 = iArr[i7 + 2];
                int i12 = i11 & i5;
                if (l <= 17) {
                    if (i12 != i6) {
                        if (i12 == i5) {
                            i8 = 0;
                        } else {
                            i8 = unsafe.getInt(zzqmVar2, i12);
                        }
                        i6 = i12;
                    }
                    i2 = 1 << (i11 >>> 20);
                } else {
                    i2 = 0;
                }
                int i13 = m & i5;
                if (l >= zzqg.f.f10082c) {
                    zzqg.g.getClass();
                }
                long j2 = i13;
                switch (l) {
                    case 0:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 2:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            long j3 = unsafe.getLong(zzqmVar2, j2);
                            c2 = zzpv.c(i10 << 3);
                            d = zzpv.d(j3);
                            i9 += d + c2;
                        }
                        zzrtVar = this;
                        break;
                    case 3:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            long j4 = unsafe.getLong(zzqmVar2, j2);
                            c2 = zzpv.c(i10 << 3);
                            d = zzpv.d(j4);
                            i9 += d + c2;
                        }
                        zzrtVar = this;
                        break;
                    case 4:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            long j5 = unsafe.getInt(zzqmVar2, j2);
                            c2 = zzpv.c(i10 << 3);
                            d = zzpv.d(j5);
                            i9 += d + c2;
                        }
                        zzrtVar = this;
                        break;
                    case 5:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 6:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 7:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 1, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 8:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            int i14 = i10 << 3;
                            Object object = unsafe.getObject(zzqmVar2, j2);
                            if (object instanceof zzpm) {
                                c3 = zzpv.c(i14);
                                g = ((zzpm) object).g();
                                c4 = zzpv.c(g);
                                i9 += c4 + g + c3;
                            } else {
                                c2 = zzpv.c(i14);
                                d = zzpv.b((String) object);
                                i9 += d + c2;
                            }
                        }
                        zzrtVar = this;
                        break;
                    case 9:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            g2 = zzsc.g(i10, unsafe.getObject(zzqmVar2, j2), zzrtVar.o(i7));
                            i9 += g2;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            zzpm zzpmVar = (zzpm) unsafe.getObject(zzqmVar2, j2);
                            c3 = zzpv.c(i10 << 3);
                            g = zzpmVar.g();
                            c4 = zzpv.c(g);
                            i9 += c4 + g + c3;
                        }
                        zzrtVar = this;
                        break;
                    case 11:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(unsafe.getInt(zzqmVar2, j2), zzpv.c(i10 << 3), i9);
                        }
                        zzrtVar = this;
                        break;
                    case 12:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            long j6 = unsafe.getInt(zzqmVar2, j2);
                            c2 = zzpv.c(i10 << 3);
                            d = zzpv.d(j6);
                            i9 += d + c2;
                        }
                        zzrtVar = this;
                        break;
                    case 13:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 14:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                        }
                        zzrtVar = this;
                        zzqmVar2 = zzqmVar;
                        break;
                    case 15:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            int i15 = unsafe.getInt(zzqmVar2, j2);
                            i9 = a.b((i15 >> 31) ^ (i15 + i15), zzpv.c(i10 << 3), i9);
                        }
                        zzrtVar = this;
                        break;
                    case 16:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            long j7 = unsafe.getLong(zzqmVar2, j2);
                            c2 = zzpv.c(i10 << 3);
                            d = zzpv.d((j7 >> 63) ^ (j7 + j7));
                            i9 += d + c2;
                        }
                        zzrtVar = this;
                        break;
                    case 17:
                        if (zzrtVar.v(i7, i6, i8, i2, zzqmVar2)) {
                            zzrq zzrqVar = (zzrq) unsafe.getObject(zzqmVar2, j2);
                            zzsa o = zzrtVar.o(i7);
                            zzsr zzsrVar = zzsc.f10109a;
                            int c13 = zzpv.c(i10 << 3);
                            c5 = ((zzpa) zzrqVar).c(o) + c13 + c13;
                            i9 += c5;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        g2 = zzsc.d(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case 19:
                        g2 = zzsc.c(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case 20:
                        List list = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar2 = zzsc.f10109a;
                        if (list.size() != 0) {
                            g2 = (zzpv.c(i10 << 3) * list.size()) + zzsc.f(list);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 21:
                        List list2 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar3 = zzsc.f10109a;
                        size = list2.size();
                        if (size != 0) {
                            k = zzsc.k(list2);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 22:
                        List list3 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar4 = zzsc.f10109a;
                        size = list3.size();
                        if (size != 0) {
                            k = zzsc.e(list3);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case ConnectionResult.API_DISABLED /* 23 */:
                        g2 = zzsc.d(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                        g2 = zzsc.c(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case 25:
                        List list4 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar5 = zzsc.f10109a;
                        int size3 = list4.size();
                        if (size3 != 0) {
                            g2 = size3 * (zzpv.c(i10 << 3) + 1);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 26:
                        List list5 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar6 = zzsc.f10109a;
                        int size4 = list5.size();
                        if (size4 != 0) {
                            int c14 = zzpv.c(i10 << 3) * size4;
                            if (list5 instanceof zzrb) {
                                zzrb zzrbVar = (zzrb) list5;
                                i3 = c14;
                                for (int i16 = 0; i16 < size4; i16++) {
                                    Object zza = zzrbVar.zza();
                                    if (zza instanceof zzpm) {
                                        int g4 = ((zzpm) zza).g();
                                        i3 = a.b(g4, g4, i3);
                                    } else {
                                        i3 = zzpv.b((String) zza) + i3;
                                    }
                                }
                            } else {
                                i3 = c14;
                                for (int i17 = 0; i17 < size4; i17++) {
                                    Object obj = list5.get(i17);
                                    if (obj instanceof zzpm) {
                                        int g5 = ((zzpm) obj).g();
                                        i3 = a.b(g5, g5, i3);
                                    } else {
                                        i3 = zzpv.b((String) obj) + i3;
                                    }
                                }
                            }
                            i9 += i3;
                            break;
                        }
                        i3 = 0;
                        i9 += i3;
                    case 27:
                        List list6 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsa o2 = zzrtVar.o(i7);
                        zzsr zzsrVar7 = zzsc.f10109a;
                        int size5 = list6.size();
                        if (size5 != 0) {
                            c7 = zzpv.c(i10 << 3) * size5;
                            for (int i18 = 0; i18 < size5; i18++) {
                                Object obj2 = list6.get(i18);
                                if (obj2 instanceof zzra) {
                                    int a2 = ((zzra) obj2).a();
                                    c7 = a.b(a2, a2, c7);
                                } else {
                                    int c15 = ((zzpa) obj2).c(o2);
                                    c7 = a.b(c15, c15, c7);
                                }
                            }
                            i9 += c7;
                            break;
                        }
                        c7 = 0;
                        i9 += c7;
                    case 28:
                        List list7 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar8 = zzsc.f10109a;
                        int size6 = list7.size();
                        if (size6 == 0) {
                            c8 = 0;
                        } else {
                            c8 = zzpv.c(i10 << 3) * size6;
                            for (int i19 = 0; i19 < list7.size(); i19++) {
                                int g6 = ((zzpm) list7.get(i19)).g();
                                c8 = a.b(g6, g6, c8);
                            }
                        }
                        i9 += c8;
                        break;
                    case 29:
                        List list8 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar9 = zzsc.f10109a;
                        size = list8.size();
                        if (size != 0) {
                            k = zzsc.j(list8);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 30:
                        List list9 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar10 = zzsc.f10109a;
                        size = list9.size();
                        if (size != 0) {
                            k = zzsc.b(list9);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 31:
                        g2 = zzsc.c(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case 32:
                        g2 = zzsc.d(i10, (List) unsafe.getObject(zzqmVar2, j2));
                        i9 += g2;
                        break;
                    case 33:
                        List list10 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar11 = zzsc.f10109a;
                        size = list10.size();
                        if (size != 0) {
                            k = zzsc.h(list10);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 34:
                        List list11 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar12 = zzsc.f10109a;
                        size = list11.size();
                        if (size != 0) {
                            k = zzsc.i(list11);
                            c6 = zzpv.c(i10 << 3);
                            g2 = k + (c6 * size);
                            i9 += g2;
                            break;
                        }
                        g2 = 0;
                        i9 += g2;
                    case 35:
                        List list12 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar13 = zzsc.f10109a;
                        size2 = list12.size() * 8;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        List list13 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar14 = zzsc.f10109a;
                        size2 = list13.size() * 4;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        size2 = zzsc.f((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        size2 = zzsc.k((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        size2 = zzsc.e((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        List list14 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar15 = zzsc.f10109a;
                        size2 = list14.size() * 8;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        List list15 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar16 = zzsc.f10109a;
                        size2 = list15.size() * 4;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        List list16 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar17 = zzsc.f10109a;
                        size2 = list16.size();
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        size2 = zzsc.j((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        size2 = zzsc.b((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        List list17 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar18 = zzsc.f10109a;
                        size2 = list17.size() * 4;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        List list18 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsr zzsrVar19 = zzsc.f10109a;
                        size2 = list18.size() * 8;
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        size2 = zzsc.h((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        size2 = zzsc.i((List) unsafe.getObject(zzqmVar2, j2));
                        if (size2 > 0) {
                            c9 = zzpv.c(i10 << 3);
                            c10 = zzpv.c(size2);
                            i4 = c10 + c9;
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        List list19 = (List) unsafe.getObject(zzqmVar2, j2);
                        zzsa o3 = zzrtVar.o(i7);
                        zzsr zzsrVar20 = zzsc.f10109a;
                        int size7 = list19.size();
                        if (size7 != 0) {
                            c7 = 0;
                            for (int i20 = 0; i20 < size7; i20++) {
                                zzrq zzrqVar2 = (zzrq) list19.get(i20);
                                int c16 = zzpv.c(i10 << 3);
                                c7 += ((zzpa) zzrqVar2).c(o3) + c16 + c16;
                            }
                            i9 += c7;
                            break;
                        }
                        c7 = 0;
                        i9 += c7;
                    case 50:
                        int i21 = i7 / 3;
                        zzrk zzrkVar = (zzrk) unsafe.getObject(zzqmVar2, j2);
                        zzrj zzrjVar = (zzrj) zzrtVar.b[i21 + i21];
                        if (!zzrkVar.isEmpty()) {
                            i3 = 0;
                            for (Map.Entry entry : zzrkVar.entrySet()) {
                                Object key = entry.getKey();
                                Object value = entry.getValue();
                                zzri zzriVar = zzrjVar.f10095a;
                                int c17 = zzpv.c(i10 << 3);
                                int a3 = zzqf.a(zzriVar.f10094a, 1, key) + zzqf.a(zzriVar.b, 2, value);
                                i3 += zzpv.c(a3) + a3 + c17;
                            }
                            i9 += i3;
                            break;
                        }
                        i3 = 0;
                        i9 += i3;
                    case 51:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            long n = n(j2, zzqmVar2);
                            size2 = zzpv.c(i10 << 3);
                            i4 = zzpv.d(n);
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            long n2 = n(j2, zzqmVar2);
                            size2 = zzpv.c(i10 << 3);
                            i4 = zzpv.d(n2);
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            long k2 = k(j2, zzqmVar2);
                            size2 = zzpv.c(i10 << 3);
                            i4 = zzpv.d(k2);
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 1, i9);
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            int i22 = i10 << 3;
                            Object object2 = unsafe.getObject(zzqmVar2, j2);
                            if (object2 instanceof zzpm) {
                                c11 = zzpv.c(i22);
                                g3 = ((zzpm) object2).g();
                                c12 = zzpv.c(g3);
                                i9 += c12 + g3 + c11;
                                break;
                            } else {
                                size2 = zzpv.c(i22);
                                i4 = zzpv.b((String) object2);
                                i9 += i4 + size2;
                                break;
                            }
                        } else {
                            break;
                        }
                    case 60:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            g2 = zzsc.g(i10, unsafe.getObject(zzqmVar2, j2), zzrtVar.o(i7));
                            i9 += g2;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            zzpm zzpmVar2 = (zzpm) unsafe.getObject(zzqmVar2, j2);
                            c11 = zzpv.c(i10 << 3);
                            g3 = zzpmVar2.g();
                            c12 = zzpv.c(g3);
                            i9 += c12 + g3 + c11;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(k(j2, zzqmVar2), zzpv.c(i10 << 3), i9);
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            long k3 = k(j2, zzqmVar2);
                            size2 = zzpv.c(i10 << 3);
                            i4 = zzpv.d(k3);
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 4, i9);
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            i9 = a.b(i10 << 3, 8, i9);
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            int k4 = k(j2, zzqmVar2);
                            i9 = a.b((k4 >> 31) ^ (k4 + k4), zzpv.c(i10 << 3), i9);
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            long n3 = n(j2, zzqmVar2);
                            size2 = zzpv.c(i10 << 3);
                            i4 = zzpv.d((n3 >> 63) ^ (n3 + n3));
                            i9 += i4 + size2;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzrtVar.i(i10, i7, zzqmVar2)) {
                            zzrq zzrqVar3 = (zzrq) unsafe.getObject(zzqmVar2, j2);
                            zzsa o4 = zzrtVar.o(i7);
                            zzsr zzsrVar21 = zzsc.f10109a;
                            int c18 = zzpv.c(i10 << 3);
                            c5 = ((zzpa) zzrqVar3).c(o4) + c18 + c18;
                            i9 += c5;
                            break;
                        } else {
                            break;
                        }
                }
                i7 += 3;
                i5 = 1048575;
            } else {
                zzsq zzsqVar = zzqmVar2.zzc;
                int i23 = zzsqVar.f10115c;
                if (i23 == -1) {
                    zzsqVar.f10115c = 0;
                    i23 = 0;
                }
                int i24 = i23 + i9;
                if (zzrtVar.d) {
                    zzsd zzsdVar = ((zzqk) zzqmVar2).zzb.f10080a;
                    if (zzsdVar.f <= 0) {
                        Iterator<T> it = zzsdVar.b().iterator();
                        if (it.hasNext()) {
                            Map.Entry entry2 = (Map.Entry) it.next();
                            zzqe zzqeVar = (zzqe) entry2.getKey();
                            entry2.getValue();
                            zzqeVar.zzb();
                            throw null;
                        }
                    } else {
                        ((zzqe) ((zzse) zzsdVar.d(0)).f10110c).zzb();
                        throw null;
                    }
                }
                return i24;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:842:0x0e64 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0033  */
    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(java.lang.Object r22, com.google.android.gms.internal.consent_sdk.zzpw r23) {
        /*
            Method dump skipped, instructions count: 3844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.zzrt.g(java.lang.Object, com.google.android.gms.internal.consent_sdk.zzpw):void");
    }

    public final boolean i(int i2, int i3, Object obj) {
        if (zzsw.e(this.f10099a[i3 + 2] & 1048575, obj) == i2) {
            return true;
        }
        return false;
    }

    public final int m(int i2) {
        return this.f10099a[i2 + 1];
    }

    public final zzsa o(int i2) {
        int i3 = i2 / 3;
        int i4 = i3 + i3;
        Object[] objArr = this.b;
        zzsa zzsaVar = (zzsa) objArr[i4];
        if (zzsaVar != null) {
            return zzsaVar;
        }
        zzsa a2 = zzrx.f10104c.a((Class) objArr[i4 + 1]);
        objArr[i4] = a2;
        return a2;
    }

    public final void q(int i2, Object obj, Object obj2) {
        if (!u(i2, obj2)) {
            return;
        }
        int m = m(i2) & 1048575;
        Unsafe unsafe = j;
        long j2 = m;
        Object object = unsafe.getObject(obj2, j2);
        if (object != null) {
            zzsa o = o(i2);
            if (!u(i2, obj)) {
                if (!h(object)) {
                    unsafe.putObject(obj, j2, object);
                } else {
                    Object zzc = o.zzc();
                    o.e(zzc, object);
                    unsafe.putObject(obj, j2, zzc);
                }
                s(i2, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!h(object2)) {
                Object zzc2 = o.zzc();
                o.e(zzc2, object2);
                unsafe.putObject(obj, j2, zzc2);
                object2 = zzc2;
            }
            o.e(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + this.f10099a[i2] + " is present but null: " + obj2.toString());
    }

    public final void r(int i2, Object obj, Object obj2) {
        int[] iArr = this.f10099a;
        int i3 = iArr[i2];
        if (!i(i3, i2, obj2)) {
            return;
        }
        int m = m(i2) & 1048575;
        Unsafe unsafe = j;
        long j2 = m;
        Object object = unsafe.getObject(obj2, j2);
        if (object != null) {
            zzsa o = o(i2);
            if (!i(i3, i2, obj)) {
                if (!h(object)) {
                    unsafe.putObject(obj, j2, object);
                } else {
                    Object zzc = o.zzc();
                    o.e(zzc, object);
                    unsafe.putObject(obj, j2, zzc);
                }
                zzsw.k(i3, iArr[i2 + 2] & 1048575, obj);
                return;
            }
            Object object2 = unsafe.getObject(obj, j2);
            if (!h(object2)) {
                Object zzc2 = o.zzc();
                o.e(zzc2, object2);
                unsafe.putObject(obj, j2, zzc2);
                object2 = zzc2;
            }
            o.e(object2, object);
            return;
        }
        throw new IllegalStateException("Source subfield " + iArr[i2] + " is present but null: " + obj2.toString());
    }

    public final void s(int i2, Object obj) {
        int i3 = this.f10099a[i2 + 2];
        long j2 = 1048575 & i3;
        if (j2 == 1048575) {
            return;
        }
        zzsw.k((1 << (i3 >>> 20)) | zzsw.e(j2, obj), j2, obj);
    }

    public final boolean t(zzqm zzqmVar, zzqm zzqmVar2, int i2) {
        if (u(i2, zzqmVar) == u(i2, zzqmVar2)) {
            return true;
        }
        return false;
    }

    public final boolean u(int i2, Object obj) {
        int i3 = this.f10099a[i2 + 2];
        long j2 = i3 & 1048575;
        if (j2 == 1048575) {
            int m = m(i2);
            long j3 = m & 1048575;
            switch (l(m)) {
                case 0:
                    if (Double.doubleToRawLongBits(zzsw.f10118c.a(j3, obj)) == 0) {
                        return false;
                    }
                    break;
                case 1:
                    if (Float.floatToRawIntBits(zzsw.f10118c.b(j3, obj)) == 0) {
                        return false;
                    }
                    break;
                case 2:
                    if (zzsw.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 3:
                    if (zzsw.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 4:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 5:
                    if (zzsw.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 6:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 7:
                    return zzsw.f10118c.g(j3, obj);
                case 8:
                    Object h = zzsw.h(j3, obj);
                    if (h instanceof String) {
                        if (((String) h).isEmpty()) {
                            return false;
                        }
                    } else if (h instanceof zzpm) {
                        if (zzpm.f.equals(h)) {
                            return false;
                        }
                    } else {
                        throw new IllegalArgumentException();
                    }
                    break;
                case 9:
                    if (zzsw.h(j3, obj) == null) {
                        return false;
                    }
                    break;
                case 10:
                    if (zzpm.f.equals(zzsw.h(j3, obj))) {
                        return false;
                    }
                    break;
                case 11:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 12:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 13:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 14:
                    if (zzsw.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 15:
                    if (zzsw.e(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 16:
                    if (zzsw.f(j3, obj) == 0) {
                        return false;
                    }
                    break;
                case 17:
                    if (zzsw.h(j3, obj) == null) {
                        return false;
                    }
                    break;
                default:
                    throw new IllegalArgumentException();
            }
        } else if (((1 << (i3 >>> 20)) & zzsw.e(j2, obj)) == 0) {
            return false;
        }
        return true;
    }

    public final boolean v(int i2, int i3, int i4, int i5, Object obj) {
        if (i3 == 1048575) {
            return u(i2, obj);
        }
        if ((i4 & i5) != 0) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final Object zzc() {
        return (zzqm) ((zzqm) this.f10100c).f(4);
    }
}
