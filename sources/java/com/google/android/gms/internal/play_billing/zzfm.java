package com.google.android.gms.internal.play_billing;

import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzfm {

    /* renamed from: a, reason: collision with root package name */
    public final zzhp f11500a = new zzhu();
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f11501c;

    static {
        new zzfm(0);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.zzhp, com.google.android.gms.internal.play_billing.zzhu] */
    public zzfm() {
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0016. Please report as an issue. */
    public static int a(zzis zzisVar, int i, Object obj) {
        int b;
        int x;
        int x2 = zzfc.x(i << 3);
        if (zzisVar == zzis.h) {
            x2 += x2;
        }
        zzis zzisVar2 = zzis.g;
        zzit zzitVar = zzit.f11544c;
        int i2 = 4;
        switch (zzisVar.ordinal()) {
            case 0:
                ((Double) obj).getClass();
                boolean z = zzfc.b;
                i2 = 8;
                return x2 + i2;
            case 1:
                ((Float) obj).getClass();
                boolean z2 = zzfc.b;
                return x2 + i2;
            case 2:
                i2 = zzfc.y(((Long) obj).longValue());
                return x2 + i2;
            case 3:
                i2 = zzfc.y(((Long) obj).longValue());
                return x2 + i2;
            case 4:
                i2 = zzfc.y(((Integer) obj).intValue());
                return x2 + i2;
            case 5:
                ((Long) obj).getClass();
                boolean z3 = zzfc.b;
                i2 = 8;
                return x2 + i2;
            case 6:
                ((Integer) obj).getClass();
                boolean z4 = zzfc.b;
                return x2 + i2;
            case 7:
                ((Boolean) obj).getClass();
                boolean z5 = zzfc.b;
                i2 = 1;
                return x2 + i2;
            case 8:
                if (obj instanceof zzev) {
                    boolean z6 = zzfc.b;
                    b = ((zzev) obj).i();
                    x = zzfc.x(b);
                } else {
                    boolean z7 = zzfc.b;
                    b = zzio.b((String) obj);
                    x = zzfc.x(b);
                }
                i2 = x + b;
                return x2 + i2;
            case 9:
                i2 = ((zzhc) obj).zzn();
                return x2 + i2;
            case 10:
                if (obj instanceof zzgi) {
                    b = ((zzgi) obj).a();
                    x = zzfc.x(b);
                } else {
                    boolean z8 = zzfc.b;
                    b = ((zzhc) obj).zzn();
                    x = zzfc.x(b);
                }
                i2 = x + b;
                return x2 + i2;
            case 11:
                if (obj instanceof zzev) {
                    boolean z9 = zzfc.b;
                    b = ((zzev) obj).i();
                    x = zzfc.x(b);
                } else {
                    boolean z10 = zzfc.b;
                    b = ((byte[]) obj).length;
                    x = zzfc.x(b);
                }
                i2 = x + b;
                return x2 + i2;
            case 12:
                i2 = zzfc.x(((Integer) obj).intValue());
                return x2 + i2;
            case 13:
                i2 = obj instanceof zzfx ? zzfc.y(((zzfx) obj).zza()) : zzfc.y(((Integer) obj).intValue());
                return x2 + i2;
            case 14:
                ((Integer) obj).getClass();
                boolean z11 = zzfc.b;
                return x2 + i2;
            case 15:
                ((Long) obj).getClass();
                boolean z12 = zzfc.b;
                i2 = 8;
                return x2 + i2;
            case 16:
                int intValue = ((Integer) obj).intValue();
                i2 = zzfc.x((intValue >> 31) ^ (intValue + intValue));
                return x2 + i2;
            case 17:
                long longValue = ((Long) obj).longValue();
                i2 = zzfc.y((longValue >> 63) ^ (longValue + longValue));
                return x2 + i2;
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static void d(zzfc zzfcVar, zzis zzisVar, int i, Object obj) {
        if (zzisVar != zzis.h) {
            zzfcVar.s(i, zzisVar.f);
            zzit zzitVar = zzit.f11544c;
            switch (zzisVar.ordinal()) {
                case 0:
                    zzfcVar.k(Double.doubleToRawLongBits(((Double) obj).doubleValue()));
                    return;
                case 1:
                    zzfcVar.i(Float.floatToRawIntBits(((Float) obj).floatValue()));
                    return;
                case 2:
                    zzfcVar.w(((Long) obj).longValue());
                    return;
                case 3:
                    zzfcVar.w(((Long) obj).longValue());
                    return;
                case 4:
                    zzfcVar.m(((Integer) obj).intValue());
                    return;
                case 5:
                    zzfcVar.k(((Long) obj).longValue());
                    return;
                case 6:
                    zzfcVar.i(((Integer) obj).intValue());
                    return;
                case 7:
                    zzfcVar.c(((Boolean) obj).booleanValue() ? (byte) 1 : (byte) 0);
                    return;
                case 8:
                    if (obj instanceof zzev) {
                        zzfcVar.g((zzev) obj);
                        return;
                    } else {
                        zzfcVar.r((String) obj);
                        return;
                    }
                case 9:
                    ((zzhc) obj).a(zzfcVar);
                    return;
                case 10:
                    zzfcVar.n((zzhc) obj);
                    return;
                case 11:
                    if (obj instanceof zzev) {
                        zzfcVar.g((zzev) obj);
                        return;
                    } else {
                        byte[] bArr = (byte[]) obj;
                        zzfcVar.e(bArr, bArr.length);
                        return;
                    }
                case 12:
                    zzfcVar.u(((Integer) obj).intValue());
                    return;
                case 13:
                    if (obj instanceof zzfx) {
                        zzfcVar.m(((zzfx) obj).zza());
                        return;
                    } else {
                        zzfcVar.m(((Integer) obj).intValue());
                        return;
                    }
                case 14:
                    zzfcVar.i(((Integer) obj).intValue());
                    return;
                case 15:
                    zzfcVar.k(((Long) obj).longValue());
                    return;
                case 16:
                    int intValue = ((Integer) obj).intValue();
                    zzfcVar.u((intValue >> 31) ^ (intValue + intValue));
                    return;
                case 17:
                    long longValue = ((Long) obj).longValue();
                    zzfcVar.w((longValue >> 63) ^ (longValue + longValue));
                    return;
                default:
                    return;
            }
        }
        zzfcVar.s(i, 3);
        ((zzhc) obj).a(zzfcVar);
        zzfcVar.s(i, 4);
    }

    public static boolean f(Map.Entry entry) {
        ((zzfl) entry.getKey()).zzc();
        throw null;
    }

    public static final int g(Map.Entry entry) {
        zzfl zzflVar = (zzfl) entry.getKey();
        entry.getValue();
        zzflVar.zzc();
        throw null;
    }

    public final Iterator b() {
        zzhp zzhpVar = this.f11500a;
        if (zzhpVar.isEmpty()) {
            return Collections.emptyIterator();
        }
        if (this.f11501c) {
            return new zzgg(((zzhs) zzhpVar.entrySet()).iterator());
        }
        return ((zzhs) zzhpVar.entrySet()).iterator();
    }

    public final void c() {
        if (this.b) {
            return;
        }
        zzhp zzhpVar = this.f11500a;
        int i = zzhpVar.f;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = ((zzhq) zzhpVar.d(i2)).f;
            if (obj instanceof zzfv) {
                ((zzfv) obj).p();
            }
        }
        Iterator it = zzhpVar.b().iterator();
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            if (value instanceof zzfv) {
                ((zzfv) value).p();
            }
        }
        zzhpVar.a();
        this.b = true;
    }

    public final Object clone() {
        zzfm zzfmVar = new zzfm();
        zzhp zzhpVar = this.f11500a;
        if (zzhpVar.f <= 0) {
            Iterator it = zzhpVar.b().iterator();
            if (!it.hasNext()) {
                zzfmVar.f11501c = this.f11501c;
                return zzfmVar;
            }
            Map.Entry entry = (Map.Entry) it.next();
            zzfl zzflVar = (zzfl) entry.getKey();
            entry.getValue();
            zzflVar.zze();
            throw null;
        }
        ((zzfl) ((zzhq) zzhpVar.d(0)).f11532c).zze();
        throw null;
    }

    public final boolean e() {
        zzhp zzhpVar = this.f11500a;
        if (zzhpVar.f <= 0) {
            Iterator it = zzhpVar.b().iterator();
            if (!it.hasNext()) {
                return true;
            }
            f((Map.Entry) it.next());
            throw null;
        }
        f(zzhpVar.d(0));
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfm)) {
            return false;
        }
        return this.f11500a.equals(((zzfm) obj).f11500a);
    }

    public final int hashCode() {
        return this.f11500a.hashCode();
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.play_billing.zzhp, com.google.android.gms.internal.play_billing.zzhu] */
    public zzfm(int i) {
        c();
        c();
    }
}
