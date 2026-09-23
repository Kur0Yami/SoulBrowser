package com.google.android.gms.internal.drive;

import androidx.work.impl.workers.a;
import com.google.android.gms.internal.drive.zzkd;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzkb<FieldDescriptorType extends zzkd<FieldDescriptorType>> {

    /* renamed from: a, reason: collision with root package name */
    public final zzmj f10213a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f10214c;

    static {
        new zzkb(0);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.drive.zzmi, com.google.android.gms.internal.drive.zzmj] */
    public zzkb() {
        this.f10214c = false;
        this.f10213a = new zzmi(16);
    }

    public static int c(zznm zznmVar, int i, Object obj) {
        int g = zzjr.g(i);
        if (zznmVar == zznm.o) {
            Charset charset = zzkm.f10222a;
            g <<= 1;
        }
        return g + g(zznmVar, obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0024, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.drive.zzkn) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        if ((r3 instanceof byte[]) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001b, code lost:
    
        if ((r3 instanceof com.google.android.gms.internal.drive.zzkt) == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0027, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0011. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void e(com.google.android.gms.internal.drive.zznm r2, java.lang.Object r3) {
        /*
            java.nio.charset.Charset r0 = com.google.android.gms.internal.drive.zzkm.f10222a
            r3.getClass()
            int[] r0 = com.google.android.gms.internal.drive.zzkc.f10215a
            com.google.android.gms.internal.drive.zznr r2 = r2.f10264c
            int r2 = r2.ordinal()
            r2 = r0[r2]
            r0 = 1
            r1 = 0
            switch(r2) {
                case 1: goto L42;
                case 2: goto L3f;
                case 3: goto L3c;
                case 4: goto L39;
                case 5: goto L36;
                case 6: goto L33;
                case 7: goto L2a;
                case 8: goto L1e;
                case 9: goto L15;
                default: goto L14;
            }
        L14:
            goto L45
        L15:
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzlq
            if (r2 != 0) goto L28
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzkt
            if (r2 == 0) goto L27
            goto L28
        L1e:
            boolean r2 = r3 instanceof java.lang.Integer
            if (r2 != 0) goto L28
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzkn
            if (r2 == 0) goto L27
            goto L28
        L27:
            r0 = r1
        L28:
            r1 = r0
            goto L45
        L2a:
            boolean r2 = r3 instanceof com.google.android.gms.internal.drive.zzjc
            if (r2 != 0) goto L28
            boolean r2 = r3 instanceof byte[]
            if (r2 == 0) goto L27
            goto L28
        L33:
            boolean r0 = r3 instanceof java.lang.String
            goto L28
        L36:
            boolean r0 = r3 instanceof java.lang.Boolean
            goto L28
        L39:
            boolean r0 = r3 instanceof java.lang.Double
            goto L28
        L3c:
            boolean r0 = r3 instanceof java.lang.Float
            goto L28
        L3f:
            boolean r0 = r3 instanceof java.lang.Long
            goto L28
        L42:
            boolean r0 = r3 instanceof java.lang.Integer
            goto L28
        L45:
            if (r1 == 0) goto L48
            return
        L48:
            java.lang.IllegalArgumentException r2 = new java.lang.IllegalArgumentException
            java.lang.String r3 = "Wrong object type used with protocol message reflection."
            r2.<init>(r3)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzkb.e(com.google.android.gms.internal.drive.zznm, java.lang.Object):void");
    }

    public static int f(zzkd zzkdVar, Object obj) {
        zznm A0 = zzkdVar.A0();
        int m = zzkdVar.m();
        if (zzkdVar.k0()) {
            int i = 0;
            if (zzkdVar.F()) {
                Iterator it = ((List) obj).iterator();
                while (it.hasNext()) {
                    i += g(A0, it.next());
                }
                return zzjr.i(i) + zzjr.g(m) + i;
            }
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                i += c(A0, m, it2.next());
            }
            return i;
        }
        return c(A0, m, obj);
    }

    public static int g(zznm zznmVar, Object obj) {
        int d;
        int i;
        switch (zzkc.b[zznmVar.ordinal()]) {
            case 1:
                ((Double) obj).getClass();
                Logger logger = zzjr.b;
                return 8;
            case 2:
                ((Float) obj).getClass();
                Logger logger2 = zzjr.b;
                return 4;
            case 3:
                return zzjr.A(((Long) obj).longValue());
            case 4:
                return zzjr.A(((Long) obj).longValue());
            case 5:
                return zzjr.h(((Integer) obj).intValue());
            case 6:
                ((Long) obj).getClass();
                Logger logger3 = zzjr.b;
                return 8;
            case 7:
                ((Integer) obj).getClass();
                Logger logger4 = zzjr.b;
                return 4;
            case 8:
                ((Boolean) obj).getClass();
                Logger logger5 = zzjr.b;
                return 1;
            case 9:
                Logger logger6 = zzjr.b;
                return ((zzlq) obj).d();
            case 10:
                if (obj instanceof zzkt) {
                    Logger logger7 = zzjr.b;
                    d = ((zzkt) obj).b();
                    i = zzjr.i(d);
                    break;
                } else {
                    Logger logger8 = zzjr.b;
                    d = ((zzlq) obj).d();
                    i = zzjr.i(d);
                    break;
                }
            case 11:
                if (obj instanceof zzjc) {
                    Logger logger9 = zzjr.b;
                    d = ((zzjc) obj).size();
                    i = zzjr.i(d);
                    break;
                } else {
                    return zzjr.y((String) obj);
                }
            case 12:
                if (obj instanceof zzjc) {
                    Logger logger10 = zzjr.b;
                    d = ((zzjc) obj).size();
                    i = zzjr.i(d);
                    break;
                } else {
                    Logger logger11 = zzjr.b;
                    d = ((byte[]) obj).length;
                    i = zzjr.i(d);
                    break;
                }
            case 13:
                return zzjr.i(((Integer) obj).intValue());
            case 14:
                ((Integer) obj).getClass();
                Logger logger12 = zzjr.b;
                return 4;
            case 15:
                ((Long) obj).getClass();
                Logger logger13 = zzjr.b;
                return 8;
            case 16:
                int intValue = ((Integer) obj).intValue();
                return zzjr.i((intValue >> 31) ^ (intValue << 1));
            case 17:
                long longValue = ((Long) obj).longValue();
                return zzjr.A((longValue >> 63) ^ (longValue << 1));
            case 18:
                if (obj instanceof zzkn) {
                    return zzjr.h(((zzkn) obj).m());
                }
                return zzjr.h(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
        return i + d;
    }

    public static boolean h(Map.Entry entry) {
        zzkd zzkdVar = (zzkd) entry.getKey();
        if (zzkdVar.X() == zznr.MESSAGE) {
            if (zzkdVar.k0()) {
                Iterator it = ((List) entry.getValue()).iterator();
                while (it.hasNext()) {
                    if (!((zzlq) it.next()).isInitialized()) {
                        return false;
                    }
                }
            } else {
                Object value = entry.getValue();
                if (value instanceof zzlq) {
                    if (!((zzlq) value).isInitialized()) {
                        return false;
                    }
                } else {
                    if (value instanceof zzkt) {
                        return true;
                    }
                    throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
                }
            }
        }
        return true;
    }

    public static int j(Map.Entry entry) {
        int g = zzjr.g(3);
        int g2 = zzjr.g(1);
        zzkd zzkdVar = (zzkd) entry.getKey();
        Object value = entry.getValue();
        if (zzkdVar.X() == zznr.MESSAGE && !zzkdVar.k0() && !zzkdVar.F()) {
            if (value instanceof zzkt) {
                int v = zzjr.v(2, ((zzkd) entry.getKey()).m()) + (g2 << 1);
                int b = ((zzkt) value).b();
                return a.c(b, b, g, v);
            }
            int v2 = zzjr.v(2, ((zzkd) entry.getKey()).m()) + (g2 << 1);
            int d = ((zzlq) value).d();
            return a.c(d, d, g, v2);
        }
        return f(zzkdVar, value);
    }

    public static Object k(Object obj) {
        if (obj instanceof zzlx) {
            return ((zzlx) obj).C0();
        }
        if (obj instanceof byte[]) {
            byte[] bArr = (byte[]) obj;
            byte[] bArr2 = new byte[bArr.length];
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return bArr2;
        }
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x0034, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean a() {
        /*
            r4 = this;
            r0 = 0
            r1 = r0
        L2:
            com.google.android.gms.internal.drive.zzmj r2 = r4.f10213a
            java.util.List r3 = r2.f
            int r3 = r3.size()
            if (r1 >= r3) goto L1a
            java.util.Map$Entry r2 = r2.c(r1)
            boolean r2 = h(r2)
            if (r2 != 0) goto L17
            goto L34
        L17:
            int r1 = r1 + 1
            goto L2
        L1a:
            java.lang.Iterable r1 = r2.f()
            java.util.Iterator r1 = r1.iterator()
        L22:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto L35
            java.lang.Object r2 = r1.next()
            java.util.Map$Entry r2 = (java.util.Map.Entry) r2
            boolean r2 = h(r2)
            if (r2 != 0) goto L22
        L34:
            return r0
        L35:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.drive.zzkb.a():boolean");
    }

    public final Iterator b() {
        boolean z = this.f10214c;
        zzmj zzmjVar = this.f10213a;
        if (z) {
            return new zzkw(((zzmr) zzmjVar.entrySet()).iterator());
        }
        return ((zzmr) zzmjVar.entrySet()).iterator();
    }

    public final Object clone() {
        zzmj zzmjVar;
        zzkb zzkbVar = new zzkb();
        int i = 0;
        while (true) {
            zzmjVar = this.f10213a;
            if (i >= zzmjVar.f.size()) {
                break;
            }
            Map.Entry c2 = zzmjVar.c(i);
            zzkbVar.d((zzkd) c2.getKey(), c2.getValue());
            i++;
        }
        for (Map.Entry entry : zzmjVar.f()) {
            zzkbVar.d((zzkd) entry.getKey(), entry.getValue());
        }
        zzkbVar.f10214c = this.f10214c;
        return zzkbVar;
    }

    public final void d(zzkd zzkdVar, Object obj) {
        if (zzkdVar.k0()) {
            if (obj instanceof List) {
                ArrayList arrayList = new ArrayList();
                arrayList.addAll((List) obj);
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj2 = arrayList.get(i);
                    i++;
                    e(zzkdVar.A0(), obj2);
                }
                obj = arrayList;
            } else {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
        } else {
            e(zzkdVar.A0(), obj);
        }
        if (obj instanceof zzkt) {
            this.f10214c = true;
        }
        this.f10213a.put(zzkdVar, obj);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkb)) {
            return false;
        }
        return this.f10213a.equals(((zzkb) obj).f10213a);
    }

    public final int hashCode() {
        return this.f10213a.hashCode();
    }

    public final void i(Map.Entry entry) {
        Object G;
        zzkd zzkdVar = (zzkd) entry.getKey();
        Object value = entry.getValue();
        if (!(value instanceof zzkt)) {
            boolean k0 = zzkdVar.k0();
            zzmj zzmjVar = this.f10213a;
            if (k0) {
                Object obj = zzmjVar.get(zzkdVar);
                if (!(obj instanceof zzkt)) {
                    if (obj == null) {
                        obj = new ArrayList();
                    }
                    Iterator it = ((List) value).iterator();
                    while (it.hasNext()) {
                        ((List) obj).add(k(it.next()));
                    }
                    zzmjVar.put(zzkdVar, obj);
                    return;
                }
                int i = zzkt.f10225c;
                throw new NoSuchMethodError();
            }
            if (zzkdVar.X() == zznr.MESSAGE) {
                Object obj2 = zzmjVar.get(zzkdVar);
                if (!(obj2 instanceof zzkt)) {
                    if (obj2 == null) {
                        zzmjVar.put(zzkdVar, k(value));
                        return;
                    }
                    if (obj2 instanceof zzlx) {
                        G = zzkdVar.m4zza();
                    } else {
                        ((zzlq) obj2).e();
                        G = zzkdVar.zza().G();
                    }
                    zzmjVar.put(zzkdVar, G);
                    return;
                }
                int i2 = zzkt.f10225c;
                throw new NoSuchMethodError();
            }
            zzmjVar.put(zzkdVar, k(value));
            return;
        }
        int i3 = zzkt.f10225c;
        throw new NoSuchMethodError();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.drive.zzmi, com.google.android.gms.internal.drive.zzmj] */
    public zzkb(int i) {
        this.f10214c = false;
        ?? zzmiVar = new zzmi(0);
        this.f10213a = zzmiVar;
        if (this.b) {
            return;
        }
        zzmiVar.e();
        this.b = true;
    }
}
