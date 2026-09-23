package com.google.android.gms.internal.consent_sdk;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzqf {

    /* renamed from: a, reason: collision with root package name */
    public final zzsd f10080a = new zzsi();
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10081c;

    static {
        new zzqf(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.consent_sdk.zzsi, com.google.android.gms.internal.consent_sdk.zzsd] */
    public zzqf() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    public static int a(zzsz zzszVar, int i, Object obj) {
        int g;
        int c2;
        int c3 = zzpv.c(i << 3);
        if (zzszVar == zzsz.i) {
            c3 += c3;
        }
        zzsz zzszVar2 = zzsz.g;
        zzta zztaVar = zzta.f10121c;
        int i2 = 4;
        switch (zzszVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                Logger logger = zzpv.b;
                i2 = 8;
                return c3 + i2;
            case 1:
                ((Float) obj).getClass();
                Logger logger2 = zzpv.b;
                return c3 + i2;
            case 2:
                i2 = zzpv.d(((Long) obj).longValue());
                return c3 + i2;
            case 3:
                i2 = zzpv.d(((Long) obj).longValue());
                return c3 + i2;
            case 4:
                i2 = zzpv.d(((Integer) obj).intValue());
                return c3 + i2;
            case 5:
                ((Long) obj).getClass();
                Logger logger3 = zzpv.b;
                i2 = 8;
                return c3 + i2;
            case 6:
                ((Integer) obj).getClass();
                Logger logger4 = zzpv.b;
                return c3 + i2;
            case 7:
                ((Boolean) obj).getClass();
                Logger logger5 = zzpv.b;
                i2 = 1;
                return c3 + i2;
            case 8:
                if (obj instanceof zzpm) {
                    Logger logger6 = zzpv.b;
                    g = ((zzpm) obj).g();
                    c2 = zzpv.c(g);
                    i2 = c2 + g;
                    return c3 + i2;
                }
                i2 = zzpv.b((String) obj);
                return c3 + i2;
            case 9:
                i2 = ((zzrq) obj).zzn();
                return c3 + i2;
            case 10:
                if (obj instanceof zzqz) {
                    g = ((zzqz) obj).a();
                    c2 = zzpv.c(g);
                } else {
                    Logger logger7 = zzpv.b;
                    g = ((zzrq) obj).zzn();
                    c2 = zzpv.c(g);
                }
                i2 = c2 + g;
                return c3 + i2;
            case 11:
                if (obj instanceof zzpm) {
                    Logger logger8 = zzpv.b;
                    g = ((zzpm) obj).g();
                    c2 = zzpv.c(g);
                } else {
                    Logger logger9 = zzpv.b;
                    g = ((byte[]) obj).length;
                    c2 = zzpv.c(g);
                }
                i2 = c2 + g;
                return c3 + i2;
            case 12:
                i2 = zzpv.c(((Integer) obj).intValue());
                return c3 + i2;
            case 13:
                i2 = obj instanceof zzqo ? zzpv.d(((zzqo) obj).zza()) : zzpv.d(((Integer) obj).intValue());
                return c3 + i2;
            case 14:
                ((Integer) obj).getClass();
                Logger logger10 = zzpv.b;
                return c3 + i2;
            case 15:
                ((Long) obj).getClass();
                Logger logger11 = zzpv.b;
                i2 = 8;
                return c3 + i2;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = zzpv.c((intValue >> 31) ^ (intValue + intValue));
                return c3 + i2;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = zzpv.d((longValue >> 63) ^ (longValue + longValue));
                return c3 + i2;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static void d(zzpv zzpvVar, zzsz zzszVar, int i, Object obj) {
        if (zzszVar != zzsz.i) {
            zzpvVar.t(i, zzszVar.f);
            zzta zztaVar = zzta.f10121c;
            switch (zzszVar.ordinal()) {
                case 0:
                    zzpvVar.n(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    zzpvVar.l(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    zzpvVar.x(((Long) obj).longValue());
                    return;
                case 3:
                    zzpvVar.x(((Long) obj).longValue());
                    return;
                case 4:
                    zzpvVar.p(((Integer) obj).intValue());
                    return;
                case 5:
                    zzpvVar.n(((Long) obj).longValue());
                    return;
                case 6:
                    zzpvVar.l(((Integer) obj).intValue());
                    return;
                case 7:
                    zzpvVar.f(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof zzpm) {
                        zzpvVar.j((zzpm) obj);
                        return;
                    } else {
                        zzpvVar.s((String) obj);
                        return;
                    }
                case 9:
                    ((zzrq) obj).a(zzpvVar);
                    return;
                case 10:
                    zzpvVar.q((zzrq) obj);
                    return;
                case 11:
                    if (obj instanceof zzpm) {
                        zzpvVar.j((zzpm) obj);
                        return;
                    } else {
                        byte[] bArr = (byte[]) obj;
                        zzpvVar.h(bArr, bArr.length);
                        return;
                    }
                case 12:
                    zzpvVar.v(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof zzqo) {
                        zzpvVar.p(((zzqo) obj).zza());
                        return;
                    } else {
                        zzpvVar.p(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    zzpvVar.l(((Integer) obj).intValue());
                    return;
                case 15:
                    zzpvVar.n(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    zzpvVar.v((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    zzpvVar.x((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        zzpvVar.t(i, 3);
        ((zzrq) obj).a(zzpvVar);
        zzpvVar.t(i, 4);
    }

    public static boolean f(Map.Entry entry) {
        ((zzqe) entry.getKey()).zzc();
        throw null;
    }

    public static final int g(Map.Entry entry) {
        zzqe zzqeVar = (zzqe) entry.getKey();
        entry.getValue();
        zzqeVar.zzc();
        throw null;
    }

    public final Iterator b() {
        zzsd zzsdVar = this.f10080a;
        if (zzsdVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.f10081c) {
            return new zzqx(((zzsg) zzsdVar.entrySet()).iterator());
        }
        return ((zzsg) zzsdVar.entrySet()).iterator();
    }

    public final void c() {
        if (this.b) {
            return;
        }
        zzsd zzsdVar = this.f10080a;
        int i = zzsdVar.f;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((zzse) zzsdVar.d(i2)).f;
            if (obj instanceof zzqm) {
                ((zzqm) obj).j();
            }
        }
        Iterator it = zzsdVar.b().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzqm) {
                ((zzqm) value).j();
            }
        }
        zzsdVar.a();
        this.b = true;
    }

    public final Object clone() {
        zzqf zzqfVar = new zzqf();
        zzsd zzsdVar = this.f10080a;
        if (zzsdVar.f <= 0) {
            Iterator it = zzsdVar.b().iterator();
            if (!it.hasNext()) {
                zzqfVar.f10081c = this.f10081c;
                return zzqfVar;
            }
            Map.Entry entry = (Map.Entry) it.next();
            zzqe zzqeVar = (zzqe) entry.getKey();
            entry.getValue();
            zzqeVar.zze();
            throw null;
        }
        ((zzqe) ((zzse) zzsdVar.d(0)).f10110c).zze();
        throw null;
    }

    public final boolean e() {
        zzsd zzsdVar = this.f10080a;
        if (zzsdVar.f <= 0) {
            Iterator it = zzsdVar.b().iterator();
            if (!it.hasNext()) {
                return true;
            }
            f((Map.Entry) it.next());
            throw null;
        }
        f(zzsdVar.d(0));
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzqf)) {
            return false;
        }
        return this.f10080a.equals(((zzqf) obj).f10080a);
    }

    public final int hashCode() {
        return this.f10080a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.consent_sdk.zzsi, com.google.android.gms.internal.consent_sdk.zzsd] */
    public zzqf(int i) {
        c();
        c();
    }
}
