package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzln {

    /* renamed from: c, reason: collision with root package name */
    public final zzmu f9095c;
    public final zzdx d;
    public long e;
    public int f;
    public boolean g;
    public zzlk h;
    public zzlk i;
    public zzlk j;
    public zzlk k;
    public zzlk l;
    public int m;
    public Object n;
    public long o;
    public final zzkv q;

    /* renamed from: a, reason: collision with root package name */
    public final zzbd f9094a = new zzbd();
    public final zzbe b = new zzbe();
    public ArrayList p = new ArrayList();

    public zzln(zzmu zzmuVar, zzdx zzdxVar, zzkv zzkvVar, zzjd zzjdVar) {
        this.f9095c = zzmuVar;
        this.d = zzdxVar;
        this.q = zzkvVar;
    }

    public static zzwg a(zzbf zzbfVar, Object obj, long j, zzbe zzbeVar, zzbd zzbdVar) {
        zzbfVar.o(obj, zzbdVar);
        zzbfVar.b(zzbdVar.f4558c, zzbeVar, 0L);
        zzbfVar.e(obj);
        zzbdVar.f.getClass();
        zzbfVar.o(obj, zzbdVar);
        zzbdVar.f.a(-1);
        return new zzwg(-1, j, obj);
    }

    public final zzlk A(zzwe zzweVar) {
        for (int i = 0; i < this.p.size(); i++) {
            zzlk zzlkVar = (zzlk) this.p.get(i);
            if (zzlkVar.f9089a == zzweVar) {
                return zzlkVar;
            }
        }
        return null;
    }

    public final void B() {
        if (this.m == 0) {
            return;
        }
        zzlk zzlkVar = this.h;
        zzlkVar.getClass();
        this.n = zzlkVar.b;
        this.o = zzlkVar.g.f9091a.d;
        while (zzlkVar != null) {
            zzlkVar.h();
            zzlkVar = zzlkVar.m;
        }
        this.h = null;
        this.k = null;
        this.i = null;
        this.j = null;
        this.m = 0;
        b();
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a9, code lost:
    
        return y(r3);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int C(com.google.android.gms.internal.ads.zzbf r17, long r18, long r20, long r22) {
        /*
            r16 = this;
            r0 = r16
            r1 = r17
            com.google.android.gms.internal.ads.zzlk r2 = r0.h
            r3 = 0
        L7:
            r4 = 0
            if (r2 == 0) goto Laa
            com.google.android.gms.internal.ads.zzll r5 = r2.g
            if (r3 != 0) goto L15
            com.google.android.gms.internal.ads.zzll r3 = r0.D(r1, r5)
            r6 = r18
            goto L30
        L15:
            r6 = r18
            com.google.android.gms.internal.ads.zzll r8 = r0.e(r1, r3, r6)
            if (r8 == 0) goto La5
            long r9 = r5.b
            long r11 = r8.b
            int r9 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r9 != 0) goto La5
            com.google.android.gms.internal.ads.zzwg r9 = r5.f9091a
            com.google.android.gms.internal.ads.zzwg r10 = r8.f9091a
            boolean r9 = r9.equals(r10)
            if (r9 == 0) goto La5
            r3 = r8
        L30:
            long r8 = r5.f9092c
            com.google.android.gms.internal.ads.zzll r8 = r3.b(r8)
            r2.g = r8
            long r9 = r5.e
            long r11 = r3.e
            int r3 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
            if (r3 == 0) goto L9e
            java.lang.Object r1 = r2.f9089a
            boolean r3 = r1 instanceof com.google.android.gms.internal.ads.zzvk
            r5 = -9223372036854775808
            r13 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r3 == 0) goto L58
            long r7 = r8.d
            int r3 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1))
            if (r3 != 0) goto L54
            r7 = r5
        L54:
            com.google.android.gms.internal.ads.zzvk r1 = (com.google.android.gms.internal.ads.zzvk) r1
            r1.i = r7
        L58:
            int r1 = (r11 > r13 ? 1 : (r11 == r13 ? 0 : -1))
            if (r1 != 0) goto L62
            r7 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            goto L65
        L62:
            long r7 = r2.p
            long r7 = r7 + r11
        L65:
            com.google.android.gms.internal.ads.zzlk r1 = r0.i
            r3 = 1
            if (r2 != r1) goto L74
            int r1 = (r20 > r5 ? 1 : (r20 == r5 ? 0 : -1))
            if (r1 == 0) goto L72
            int r1 = (r20 > r7 ? 1 : (r20 == r7 ? 0 : -1))
            if (r1 < 0) goto L74
        L72:
            r1 = r3
            goto L75
        L74:
            r1 = r4
        L75:
            com.google.android.gms.internal.ads.zzlk r11 = r0.j
            if (r2 != r11) goto L83
            int r5 = (r22 > r5 ? 1 : (r22 == r5 ? 0 : -1))
            if (r5 == 0) goto L81
            int r5 = (r22 > r7 ? 1 : (r22 == r7 ? 0 : -1))
            if (r5 < 0) goto L83
        L81:
            r5 = r3
            goto L84
        L83:
            r5 = r4
        L84:
            int r2 = r0.y(r2)
            if (r2 == 0) goto L8b
            return r2
        L8b:
            int r2 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r2 != 0) goto L90
            r9 = r13
        L90:
            if (r1 == 0) goto L98
            int r1 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r1 != 0) goto L97
            goto L98
        L97:
            r4 = r3
        L98:
            if (r5 == 0) goto L9d
            r1 = r4 | 2
            return r1
        L9d:
            return r4
        L9e:
            com.google.android.gms.internal.ads.zzlk r3 = r2.m
            r15 = r3
            r3 = r2
            r2 = r15
            goto L7
        La5:
            int r1 = r0.y(r3)
            return r1
        Laa:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzln.C(com.google.android.gms.internal.ads.zzbf, long, long, long):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0069  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzll D(com.google.android.gms.internal.ads.zzbf r19, com.google.android.gms.internal.ads.zzll r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.gms.internal.ads.zzwg r3 = r2.f9091a
            boolean r4 = r3.b()
            int r5 = r3.e
            r6 = -1
            if (r4 != 0) goto L16
            if (r5 != r6) goto L16
            r4 = 1
        L14:
            r11 = r4
            goto L18
        L16:
            r4 = 0
            goto L14
        L18:
            int r4 = r3.b
            boolean r12 = r0.i(r1, r3)
            boolean r13 = r0.j(r1, r3, r11)
            java.lang.Object r7 = r3.f9337a
            com.google.android.gms.internal.ads.zzbd r8 = r0.f9094a
            r1.o(r7, r8)
            boolean r1 = r3.b()
            r9 = 0
            r14 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L38
            if (r5 != r6) goto L3b
        L38:
            r16 = r14
            goto L46
        L3b:
            com.google.android.gms.internal.ads.zzc r1 = r8.f
            com.google.android.gms.internal.ads.zza r1 = r1.a(r5)
            r1.getClass()
            r16 = r9
        L46:
            boolean r1 = r3.b()
            if (r1 == 0) goto L56
            int r1 = r3.f9338c
            long r9 = r8.b(r4, r1)
        L52:
            r14 = r9
            r9 = r16
            goto L5f
        L56:
            int r1 = (r16 > r14 ? 1 : (r16 == r14 ? 0 : -1))
            if (r1 == 0) goto L5c
            r14 = r9
            goto L5f
        L5c:
            long r9 = r8.d
            goto L52
        L5f:
            boolean r1 = r3.b()
            if (r1 == 0) goto L69
            r8.c(r4)
            goto L6e
        L69:
            if (r5 == r6) goto L6e
            r8.c(r5)
        L6e:
            com.google.android.gms.internal.ads.zzll r1 = new com.google.android.gms.internal.ads.zzll
            r5 = r3
            long r3 = r2.b
            long r6 = r2.f9092c
            r2 = r5
            r5 = r6
            r7 = r9
            r9 = r14
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzln.D(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzll):com.google.android.gms.internal.ads.zzll");
    }

    public final zzwg E(zzbf zzbfVar, Object obj) {
        long c2;
        int e;
        zzbd zzbdVar = this.f9094a;
        int i = zzbfVar.o(obj, zzbdVar).f4558c;
        Object obj2 = this.n;
        if (obj2 != null && (e = zzbfVar.e(obj2)) != -1 && zzbfVar.d(e, zzbdVar, false).f4558c == i) {
            c2 = this.o;
        } else {
            zzlk zzlkVar = this.h;
            while (true) {
                if (zzlkVar != null) {
                    if (zzlkVar.b.equals(obj)) {
                        c2 = zzlkVar.g.f9091a.d;
                        break;
                    }
                    zzlkVar = zzlkVar.m;
                } else {
                    zzlk zzlkVar2 = this.h;
                    while (true) {
                        if (zzlkVar2 != null) {
                            int e2 = zzbfVar.e(zzlkVar2.b);
                            if (e2 != -1 && zzbfVar.d(e2, zzbdVar, false).f4558c == i) {
                                c2 = zzlkVar2.g.f9091a.d;
                                break;
                            }
                            zzlkVar2 = zzlkVar2.m;
                        } else {
                            c2 = c(obj);
                            if (c2 == -1) {
                                c2 = this.e;
                                this.e = 1 + c2;
                                if (this.h == null) {
                                    this.n = obj;
                                    this.o = c2;
                                }
                            }
                        }
                    }
                }
            }
        }
        long j = c2;
        zzbfVar.o(obj, zzbdVar);
        int i2 = zzbdVar.f4558c;
        zzbe zzbeVar = this.b;
        zzbfVar.b(i2, zzbeVar, 0L);
        for (int e3 = zzbfVar.e(obj); e3 >= zzbeVar.k; e3--) {
            zzbfVar.d(e3, zzbdVar, true);
            zzbdVar.f.getClass();
            zzbdVar.f.a(-1);
        }
        return a(zzbfVar, obj, j, zzbeVar, zzbdVar);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public final void b() {
        final zzwg zzwgVar;
        zzgvs zzgvsVar = zzgtd.f;
        final ?? zzgsxVar = new zzgsx(4);
        for (zzlk zzlkVar = this.h; zzlkVar != null; zzlkVar = zzlkVar.m) {
            zzgsxVar.c(zzlkVar.g.f9091a);
        }
        zzlk zzlkVar2 = this.i;
        if (zzlkVar2 == null) {
            zzwgVar = null;
        } else {
            zzwgVar = zzlkVar2.g.f9091a;
        }
        this.d.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlm
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzln.this.f9095c.c(zzgsxVar.f(), zzwgVar);
            }
        });
    }

    public final long c(Object obj) {
        for (int i = 0; i < this.p.size(); i++) {
            zzlk zzlkVar = (zzlk) this.p.get(i);
            if (zzlkVar.b.equals(obj)) {
                return zzlkVar.g.f9091a.d;
            }
        }
        return -1L;
    }

    public final int d(zzbf zzbfVar) {
        zzbf zzbfVar2;
        zzlk zzlkVar;
        zzlk zzlkVar2 = this.h;
        if (zzlkVar2 == null) {
            return 0;
        }
        int e = zzbfVar.e(zzlkVar2.b);
        while (true) {
            zzbfVar2 = zzbfVar;
            e = zzbfVar2.l(e, this.f9094a, this.b, this.f, this.g);
            while (true) {
                zzlkVar = zzlkVar2.m;
                if (zzlkVar == null || zzlkVar2.g.f) {
                    break;
                }
                zzlkVar2 = zzlkVar;
            }
            if (e == -1 || zzlkVar == null || zzbfVar2.e(zzlkVar.b) != e) {
                break;
            }
            zzlkVar2 = zzlkVar;
            zzbfVar = zzbfVar2;
        }
        int y = y(zzlkVar2);
        zzlkVar2.g = D(zzbfVar2, zzlkVar2.g);
        return y;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x010d, code lost:
    
        return g(r23, r3, r3, r5, r2.f9092c, r8.d);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzll e(com.google.android.gms.internal.ads.zzbf r23, com.google.android.gms.internal.ads.zzlk r24, long r25) {
        /*
            Method dump skipped, instructions count: 456
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzln.e(com.google.android.gms.internal.ads.zzbf, com.google.android.gms.internal.ads.zzlk, long):com.google.android.gms.internal.ads.zzll");
    }

    public final zzll f(zzbf zzbfVar, zzwg zzwgVar, long j, long j2) {
        Object obj = zzwgVar.f9337a;
        zzbfVar.o(obj, this.f9094a);
        if (zzwgVar.b()) {
            return g(zzbfVar, obj, zzwgVar.b, zzwgVar.f9338c, j, zzwgVar.d);
        }
        return h(zzbfVar, obj, j2, j, zzwgVar.d);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0030, code lost:
    
        r4.f.getClass();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzll g(com.google.android.gms.internal.ads.zzbf r14, java.lang.Object r15, int r16, int r17, long r18, long r20) {
        /*
            r13 = this;
            com.google.android.gms.internal.ads.zzwg r0 = new com.google.android.gms.internal.ads.zzwg
            r6 = -1
            r1 = r15
            r2 = r16
            r3 = r17
            r4 = r20
            r0.<init>(r1, r2, r3, r4, r6)
            com.google.android.gms.internal.ads.zzbd r4 = r13.f9094a
            com.google.android.gms.internal.ads.zzbd r14 = r14.o(r15, r4)
            long r8 = r14.b(r2, r3)
            com.google.android.gms.internal.ads.zzc r14 = r4.f
            com.google.android.gms.internal.ads.zza r14 = r14.a(r2)
            r15 = 0
        L1e:
            int[] r1 = r14.d
            int r5 = r1.length
            if (r15 >= r5) goto L2e
            r1 = r1[r15]
            if (r1 == 0) goto L2e
            r5 = 1
            if (r1 != r5) goto L2b
            goto L2e
        L2b:
            int r15 = r15 + 1
            goto L1e
        L2e:
            if (r3 != r15) goto L35
            com.google.android.gms.internal.ads.zzc r14 = r4.f
            r14.getClass()
        L35:
            r4.c(r2)
            r14 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r14 = (r8 > r14 ? 1 : (r8 == r14 ? 0 : -1))
            r1 = 0
            if (r14 == 0) goto L4e
            int r14 = (r8 > r1 ? 1 : (r8 == r1 ? 0 : -1))
            if (r14 > 0) goto L4e
            r14 = -1
            long r14 = r14 + r8
            long r1 = java.lang.Math.max(r1, r14)
        L4e:
            r2 = r1
            r1 = r0
            com.google.android.gms.internal.ads.zzll r0 = new com.google.android.gms.internal.ads.zzll
            r11 = 0
            r12 = 0
            r6 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r10 = 0
            r4 = r18
            r0.<init>(r1, r2, r4, r6, r8, r10, r11, r12)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzln.g(com.google.android.gms.internal.ads.zzbf, java.lang.Object, int, int, long, long):com.google.android.gms.internal.ads.zzll");
    }

    public final zzll h(zzbf zzbfVar, Object obj, long j, long j2, long j3) {
        long j4;
        zzbd zzbdVar = this.f9094a;
        zzbfVar.o(obj, zzbdVar);
        zzbdVar.getClass();
        zzbdVar.f.getClass();
        zzwg zzwgVar = new zzwg(-1, j3, obj);
        boolean z = !zzwgVar.b();
        boolean i = i(zzbfVar, zzwgVar);
        boolean j5 = j(zzbfVar, zzwgVar, z);
        long j6 = zzbdVar.d;
        if (j6 != -9223372036854775807L && j >= j6) {
            j4 = Math.max(0L, (-1) + j6);
        } else {
            j4 = j;
        }
        return new zzll(zzwgVar, j4, j2, -9223372036854775807L, j6, z, i, j5);
    }

    public final boolean i(zzbf zzbfVar, zzwg zzwgVar) {
        if (!zzwgVar.b() && zzwgVar.e == -1) {
            Object obj = zzwgVar.f9337a;
            int i = zzbfVar.o(obj, this.f9094a).f4558c;
            if (zzbfVar.b(i, this.b, 0L).l == zzbfVar.e(obj)) {
                return true;
            }
        }
        return false;
    }

    public final boolean j(zzbf zzbfVar, zzwg zzwgVar, boolean z) {
        int e = zzbfVar.e(zzwgVar.f9337a);
        zzbd zzbdVar = this.f9094a;
        int i = zzbfVar.d(e, zzbdVar, false).f4558c;
        zzbe zzbeVar = this.b;
        if (zzbfVar.b(i, zzbeVar, 0L).g || zzbfVar.l(e, zzbdVar, zzbeVar, this.f, this.g) != -1 || !z) {
            return false;
        }
        return true;
    }

    public final int k(zzbf zzbfVar, int i) {
        this.f = i;
        return d(zzbfVar);
    }

    public final int l(zzbf zzbfVar, boolean z) {
        this.g = z;
        return d(zzbfVar);
    }

    public final void m(zzjd zzjdVar) {
        zzjdVar.getClass();
        r();
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, com.google.android.gms.internal.ads.zzxy] */
    public final void n(long j) {
        boolean z;
        zzlk zzlkVar = this.k;
        if (zzlkVar != null) {
            if (zzlkVar.m == null) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.f(z);
            if (zzlkVar.e) {
                zzlkVar.f9089a.i(j - zzlkVar.p);
            }
        }
    }

    public final boolean o() {
        zzlk zzlkVar = this.k;
        if (zzlkVar == null) {
            return true;
        }
        if (!zzlkVar.g.h && zzlkVar.b() && this.k.g.e != -9223372036854775807L && this.m < 100) {
            return true;
        }
        return false;
    }

    public final zzll p(long j, zzma zzmaVar) {
        zzlk zzlkVar = this.k;
        if (zzlkVar == null) {
            return f(zzmaVar.f9110a, zzmaVar.b, zzmaVar.f9111c, zzmaVar.r);
        }
        return e(zzmaVar.f9110a, zzlkVar, j);
    }

    public final zzlk q(zzll zzllVar) {
        long j;
        zzlk zzlkVar;
        long j2 = zzllVar.b;
        zzlk zzlkVar2 = this.k;
        if (zzlkVar2 == null) {
            j = 1000000000000L;
        } else {
            j = (zzlkVar2.p + zzlkVar2.g.e) - j2;
        }
        int i = 0;
        while (true) {
            if (i < this.p.size()) {
                zzll zzllVar2 = ((zzlk) this.p.get(i)).g;
                long j3 = zzllVar2.e;
                long j4 = zzllVar.e;
                if ((j3 == -9223372036854775807L || j3 == j4) && zzllVar2.b == j2 && zzllVar2.f9091a.equals(zzllVar.f9091a)) {
                    zzlkVar = (zzlk) this.p.remove(i);
                    break;
                }
                i++;
            } else {
                zzlkVar = null;
                break;
            }
        }
        if (zzlkVar == null) {
            zzlc zzlcVar = this.q.f9073a;
            zzaah c2 = zzlcVar.j.c(zzlcVar.y);
            zzlcVar.c0.getClass();
            zzaae zzaaeVar = zzlcVar.i;
            zzlkVar = new zzlk(zzlcVar.f, j, zzlcVar.h, c2, zzlcVar.w, zzllVar, zzaaeVar);
        } else {
            zzlkVar.g = zzllVar;
            zzlkVar.p = j;
        }
        zzlk zzlkVar3 = this.k;
        if (zzlkVar3 != null) {
            if (zzlkVar != zzlkVar3.m) {
                zzlkVar3.l();
                zzlkVar3.m = zzlkVar;
            }
        } else {
            this.h = zzlkVar;
            this.i = zzlkVar;
            this.j = zzlkVar;
        }
        this.n = null;
        this.k = zzlkVar;
        this.m++;
        b();
        return zzlkVar;
    }

    public final void r() {
        if (!this.p.isEmpty()) {
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < this.p.size(); i++) {
                ((zzlk) this.p.get(i)).h();
            }
            this.p = arrayList;
            this.l = null;
            z();
        }
    }

    public final zzlk s() {
        return this.h;
    }

    public final zzlk t() {
        return this.i;
    }

    public final zzlk u() {
        return this.j;
    }

    public final zzlk v() {
        zzlk zzlkVar = this.j;
        zzlk zzlkVar2 = this.i;
        if (zzlkVar == zzlkVar2) {
            zzlkVar2.getClass();
            this.j = zzlkVar2.m;
        }
        zzlkVar2.getClass();
        this.i = zzlkVar2.m;
        b();
        zzlk zzlkVar3 = this.i;
        zzlkVar3.getClass();
        return zzlkVar3;
    }

    public final void w() {
        zzlk zzlkVar = this.j;
        zzlkVar.getClass();
        this.j = zzlkVar.m;
        b();
        this.j.getClass();
    }

    public final zzlk x() {
        zzlk zzlkVar = this.h;
        if (zzlkVar == null) {
            return null;
        }
        if (zzlkVar == this.i) {
            this.i = zzlkVar.m;
        }
        if (zzlkVar == this.j) {
            this.j = zzlkVar.m;
        }
        zzlkVar.h();
        int i = this.m - 1;
        this.m = i;
        if (i == 0) {
            this.k = null;
            zzlk zzlkVar2 = this.h;
            this.n = zzlkVar2.b;
            this.o = zzlkVar2.g.f9091a.d;
        }
        this.h = this.h.m;
        b();
        return this.h;
    }

    public final int y(zzlk zzlkVar) {
        zzlkVar.getClass();
        int i = 0;
        if (zzlkVar.equals(this.k)) {
            return 0;
        }
        this.k = zzlkVar;
        int i2 = 0;
        while (true) {
            zzlkVar = zzlkVar.m;
            if (zzlkVar == null) {
                break;
            }
            if (zzlkVar == this.i) {
                zzlk zzlkVar2 = this.h;
                this.i = zzlkVar2;
                this.j = zzlkVar2;
                i2 = 3;
            }
            if (zzlkVar == this.j) {
                this.j = this.i;
                i2 |= 2;
            }
            zzlkVar.h();
            this.m--;
        }
        zzlk zzlkVar3 = this.k;
        zzlkVar3.getClass();
        if (zzlkVar3.m != null) {
            zzlkVar3.l();
            zzlkVar3.m = null;
            while (true) {
                zzaae zzaaeVar = zzlkVar3.o;
                if (i >= zzaaeVar.f3844a) {
                    break;
                }
                zzaaeVar.a(i);
                zzzw zzzwVar = zzlkVar3.o.f3845c[i];
                i++;
            }
        }
        b();
        return i2;
    }

    public final void z() {
        zzlk zzlkVar = this.l;
        if (zzlkVar == null || zzlkVar.c()) {
            this.l = null;
            for (int i = 0; i < this.p.size(); i++) {
                zzlk zzlkVar2 = (zzlk) this.p.get(i);
                if (!zzlkVar2.c()) {
                    this.l = zzlkVar2;
                    return;
                }
            }
        }
    }
}
