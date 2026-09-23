package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zziag {

    /* renamed from: a, reason: collision with root package name */
    public final zzicx f8908a = new zzidb();
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f8909c;

    static {
        new zziag(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzidb, com.google.android.gms.internal.ads.zzicx] */
    public zziag() {
    }

    public static void e(zzhzw zzhzwVar, zzids zzidsVar, int i, Object obj) {
        if (zzidsVar != zzids.h) {
            zzhzwVar.g(i, zzidsVar.f);
            zzidt zzidtVar = zzidt.f8957c;
            switch (zzidsVar.ordinal()) {
                case 0:
                    zzhzwVar.A(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    zzhzwVar.y(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    zzhzwVar.z(((Long) obj).longValue());
                    return;
                case 3:
                    zzhzwVar.z(((Long) obj).longValue());
                    return;
                case 4:
                    zzhzwVar.w(((Integer) obj).intValue());
                    return;
                case 5:
                    zzhzwVar.A(((Long) obj).longValue());
                    return;
                case 6:
                    zzhzwVar.y(((Integer) obj).intValue());
                    return;
                case 7:
                    zzhzwVar.v(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof zzhzl) {
                        zzhzwVar.q((zzhzl) obj);
                        return;
                    } else {
                        zzhzwVar.B((String) obj);
                        return;
                    }
                case 9:
                    ((zzicc) obj).c(zzhzwVar);
                    return;
                case 10:
                    zzhzwVar.u((zzicc) obj);
                    return;
                case 11:
                    if (obj instanceof zzhzl) {
                        zzhzwVar.q((zzhzl) obj);
                        return;
                    } else {
                        byte[] bArr = (byte[]) obj;
                        zzhzwVar.r(bArr, bArr.length);
                        return;
                    }
                case 12:
                    zzhzwVar.x(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof zziav) {
                        zzhzwVar.w(((zziav) obj).zza());
                        return;
                    } else {
                        zzhzwVar.w(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    zzhzwVar.y(((Integer) obj).intValue());
                    return;
                case 15:
                    zzhzwVar.A(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    zzhzwVar.x((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    zzhzwVar.z((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        zzhzwVar.g(i, 3);
        ((zzicc) obj).c(zzhzwVar);
        zzhzwVar.g(i, 4);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    public static int f(zzids zzidsVar, int i, Object obj) {
        int k;
        int b;
        int b2 = zzhzw.b(i << 3);
        if (zzidsVar == zzids.h) {
            b2 += b2;
        }
        zzids zzidsVar2 = zzids.g;
        zzidt zzidtVar = zzidt.f8957c;
        int i2 = 4;
        switch (zzidsVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = zzhzw.b;
                i2 = 8;
                return b2 + i2;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = zzhzw.b;
                return b2 + i2;
            case 2:
                i2 = zzhzw.c(((Long) obj).longValue());
                return b2 + i2;
            case 3:
                i2 = zzhzw.c(((Long) obj).longValue());
                return b2 + i2;
            case 4:
                i2 = zzhzw.c(((Integer) obj).intValue());
                return b2 + i2;
            case 5:
                ((Long) obj).getClass();
                Logger logger3 = zzhzw.b;
                i2 = 8;
                return b2 + i2;
            case 6:
                ((Integer) obj).getClass();
                Logger logger4 = zzhzw.b;
                return b2 + i2;
            case 7:
                ((Boolean) obj).getClass();
                Logger logger5 = zzhzw.b;
                i2 = 1;
                return b2 + i2;
            case 8:
                if (obj instanceof zzhzl) {
                    Logger logger6 = zzhzw.b;
                    k = ((zzhzl) obj).k();
                    b = zzhzw.b(k);
                    i2 = b + k;
                    return b2 + i2;
                }
                i2 = zzhzw.d((String) obj);
                return b2 + i2;
            case 9:
                i2 = ((zzicc) obj).d();
                return b2 + i2;
            case 10:
                if (obj instanceof zzibl) {
                    k = ((zzibl) obj).a();
                    b = zzhzw.b(k);
                } else {
                    Logger logger7 = zzhzw.b;
                    k = ((zzicc) obj).d();
                    b = zzhzw.b(k);
                }
                i2 = b + k;
                return b2 + i2;
            case 11:
                if (obj instanceof zzhzl) {
                    Logger logger8 = zzhzw.b;
                    k = ((zzhzl) obj).k();
                    b = zzhzw.b(k);
                } else {
                    Logger logger9 = zzhzw.b;
                    k = ((byte[]) obj).length;
                    b = zzhzw.b(k);
                }
                i2 = b + k;
                return b2 + i2;
            case 12:
                i2 = zzhzw.b(((Integer) obj).intValue());
                return b2 + i2;
            case 13:
                i2 = obj instanceof zziav ? zzhzw.c(((zziav) obj).zza()) : zzhzw.c(((Integer) obj).intValue());
                return b2 + i2;
            case 14:
                ((Integer) obj).getClass();
                Logger logger10 = zzhzw.b;
                return b2 + i2;
            case 15:
                ((Long) obj).getClass();
                Logger logger11 = zzhzw.b;
                i2 = 8;
                return b2 + i2;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = zzhzw.b((intValue >> 31) ^ (intValue + intValue));
                return b2 + i2;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = zzhzw.c((longValue >> 63) ^ (longValue + longValue));
                return b2 + i2;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int g(zziaf zziafVar, Object obj) {
        zziafVar.getClass();
        return f(null, 0, obj);
    }

    public static boolean h(Map.Entry entry) {
        ((zziaf) entry.getKey()).zzc();
        throw null;
    }

    public static final int i(Map.Entry entry) {
        zziaf zziafVar = (zziaf) entry.getKey();
        entry.getValue();
        zziafVar.zzc();
        throw null;
    }

    public final void a() {
        if (this.b) {
            return;
        }
        zzicx zzicxVar = this.f8908a;
        int i = zzicxVar.f;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((zzicy) zzicxVar.b(i2)).f;
            if (obj instanceof zziar) {
                zziar zziarVar = (zziar) obj;
                zzicm.f8938c.a(zziarVar.getClass()).b(zziarVar);
                zziarVar.o();
            }
        }
        Iterator it = zzicxVar.c().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zziar) {
                zziar zziarVar2 = (zziar) value;
                zzicm.f8938c.a(zziarVar2.getClass()).b(zziarVar2);
                zziarVar2.o();
            }
        }
        zzicxVar.a();
        this.b = true;
    }

    public final Iterator b() {
        zzicx zzicxVar = this.f8908a;
        if (zzicxVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.f8909c) {
            return new zzibk(((zzida) zzicxVar.entrySet()).iterator());
        }
        return ((zzida) zzicxVar.entrySet()).iterator();
    }

    public final void c(zziaf zziafVar, Object obj) {
        zziafVar.getClass();
        zziafVar.getClass();
        Charset charset = zzibe.f8915a;
        obj.getClass();
        zzids zzidsVar = zzids.g;
        zzidt zzidtVar = zzidt.f8957c;
        throw null;
    }

    public final Object clone() {
        zziag zziagVar = new zziag();
        zzicx zzicxVar = this.f8908a;
        if (zzicxVar.f <= 0) {
            Iterator it = zzicxVar.c().iterator();
            if (!it.hasNext()) {
                zziagVar.f8909c = this.f8909c;
                return zziagVar;
            }
            Map.Entry entry = (Map.Entry) it.next();
            zziagVar.c((zziaf) entry.getKey(), entry.getValue());
            throw null;
        }
        zzicy zzicyVar = (zzicy) zzicxVar.b(0);
        zziagVar.c((zziaf) zzicyVar.f8945c, zzicyVar.f);
        throw null;
    }

    public final boolean d() {
        zzicx zzicxVar = this.f8908a;
        if (zzicxVar.f <= 0) {
            Iterator it = zzicxVar.c().iterator();
            if (!it.hasNext()) {
                return true;
            }
            h((Map.Entry) it.next());
            throw null;
        }
        h(zzicxVar.b(0));
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zziag)) {
            return false;
        }
        return this.f8908a.equals(((zziag) obj).f8908a);
    }

    public final int hashCode() {
        return this.f8908a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.ads.zzidb, com.google.android.gms.internal.ads.zzicx] */
    public zziag(int i) {
        a();
        a();
    }
}
