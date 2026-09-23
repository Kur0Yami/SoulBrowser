package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;

/* loaded from: classes.dex */
public final class zzpc implements zzpl {
    public static final zzgqs h = null;
    public static final Random i = new Random();
    public zzpj d;
    public String f;

    /* renamed from: a, reason: collision with root package name */
    public final zzbe f9153a = new zzbe();
    public final zzbd b = new zzbd();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f9154c = new HashMap();
    public zzbf e = zzbf.f4601a;
    public long g = -1;

    public final synchronized String a(zzbf zzbfVar, zzwg zzwgVar) {
        return g(zzbfVar.o(zzwgVar.f9337a, this.b).f4558c, zzwgVar).f9151a;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0039 A[Catch: all -> 0x0052, TryCatch #0 {all -> 0x0052, blocks: (B:4:0x0007, B:6:0x000b, B:12:0x0015, B:14:0x0019, B:16:0x0027, B:19:0x0033, B:21:0x0039, B:23:0x0045, B:25:0x004b, B:28:0x002e, B:29:0x0054, B:31:0x005e, B:34:0x0065, B:36:0x006b, B:38:0x007e, B:39:0x0092, B:41:0x0096, B:42:0x0098, B:44:0x00a2, B:46:0x00a6, B:50:0x00b4), top: B:3:0x0007 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b(com.google.android.gms.internal.ads.zzmv r14) {
        /*
            r13 = this;
            r0 = 0
            long r2 = com.google.android.gms.internal.ads.zzfj.r(r0)
            monitor-enter(r13)
            com.google.android.gms.internal.ads.zzpj r4 = r13.d     // Catch: java.lang.Throwable -> L52
            if (r4 == 0) goto Lb3
            com.google.android.gms.internal.ads.zzbf r4 = r14.b     // Catch: java.lang.Throwable -> L52
            boolean r5 = r4.g()     // Catch: java.lang.Throwable -> L52
            if (r5 == 0) goto L15
            goto Lb1
        L15:
            com.google.android.gms.internal.ads.zzwg r5 = r14.d     // Catch: java.lang.Throwable -> L52
            if (r5 == 0) goto L54
            java.util.HashMap r6 = r13.f9154c     // Catch: java.lang.Throwable -> L52
            java.lang.String r7 = r13.f     // Catch: java.lang.Throwable -> L52
            java.lang.Object r6 = r6.get(r7)     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzpb r6 = (com.google.android.gms.internal.ads.zzpb) r6     // Catch: java.lang.Throwable -> L52
            r7 = -1
            if (r6 == 0) goto L2e
            long r9 = r6.f9152c     // Catch: java.lang.Throwable -> L52
            int r6 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r6 == 0) goto L2e
            goto L33
        L2e:
            long r9 = r13.g     // Catch: java.lang.Throwable -> L52
            r11 = 1
            long r9 = r9 + r11
        L33:
            long r11 = r5.d     // Catch: java.lang.Throwable -> L52
            int r6 = (r11 > r9 ? 1 : (r11 == r9 ? 0 : -1))
            if (r6 < 0) goto Lb1
            java.util.HashMap r6 = r13.f9154c     // Catch: java.lang.Throwable -> L52
            java.lang.String r9 = r13.f     // Catch: java.lang.Throwable -> L52
            java.lang.Object r6 = r6.get(r9)     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzpb r6 = (com.google.android.gms.internal.ads.zzpb) r6     // Catch: java.lang.Throwable -> L52
            if (r6 == 0) goto L54
            long r9 = r6.f9152c     // Catch: java.lang.Throwable -> L52
            int r7 = (r9 > r7 ? 1 : (r9 == r7 ? 0 : -1))
            if (r7 != 0) goto L54
            int r6 = r6.b     // Catch: java.lang.Throwable -> L52
            int r7 = r14.f9128c     // Catch: java.lang.Throwable -> L52
            if (r6 != r7) goto Lb1
            goto L54
        L52:
            r14 = move-exception
            goto Lb5
        L54:
            int r6 = r14.f9128c     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzpb r7 = r13.g(r6, r5)     // Catch: java.lang.Throwable -> L52
            java.lang.String r8 = r13.f     // Catch: java.lang.Throwable -> L52
            if (r8 != 0) goto L62
            java.lang.String r8 = r7.f9151a     // Catch: java.lang.Throwable -> L52
            r13.f = r8     // Catch: java.lang.Throwable -> L52
        L62:
            r8 = 1
            if (r5 == 0) goto L92
            boolean r9 = r5.b()     // Catch: java.lang.Throwable -> L52
            if (r9 == 0) goto L92
            java.lang.Object r9 = r5.f9337a     // Catch: java.lang.Throwable -> L52
            long r10 = r5.d     // Catch: java.lang.Throwable -> L52
            int r5 = r5.b     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzwg r12 = new com.google.android.gms.internal.ads.zzwg     // Catch: java.lang.Throwable -> L52
            r12.<init>(r5, r10, r9)     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzpb r6 = r13.g(r6, r12)     // Catch: java.lang.Throwable -> L52
            boolean r10 = r6.e     // Catch: java.lang.Throwable -> L52
            if (r10 != 0) goto L92
            r6.e = r8     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzbd r6 = r13.b     // Catch: java.lang.Throwable -> L52
            r4.o(r9, r6)     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzc r4 = r6.f     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zza r4 = r4.a(r5)     // Catch: java.lang.Throwable -> L52
            r4.getClass()     // Catch: java.lang.Throwable -> L52
            long r2 = r2 + r2
            java.lang.Math.max(r0, r2)     // Catch: java.lang.Throwable -> L52
        L92:
            boolean r0 = r7.e     // Catch: java.lang.Throwable -> L52
            if (r0 != 0) goto L98
            r7.e = r8     // Catch: java.lang.Throwable -> L52
        L98:
            java.lang.String r0 = r7.f9151a     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = r13.f     // Catch: java.lang.Throwable -> L52
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> L52
            if (r0 == 0) goto Lb1
            boolean r0 = r7.f     // Catch: java.lang.Throwable -> L52
            if (r0 != 0) goto Lb1
            r7.f = r8     // Catch: java.lang.Throwable -> L52
            com.google.android.gms.internal.ads.zzpj r0 = r13.d     // Catch: java.lang.Throwable -> L52
            java.lang.String r1 = r7.f9151a     // Catch: java.lang.Throwable -> L52
            r0.r(r14, r1)     // Catch: java.lang.Throwable -> L52
            monitor-exit(r13)
            return
        Lb1:
            monitor-exit(r13)
            return
        Lb3:
            r14 = 0
            throw r14     // Catch: java.lang.Throwable -> L52
        Lb5:
            monitor-exit(r13)     // Catch: java.lang.Throwable -> L52
            throw r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpc.b(com.google.android.gms.internal.ads.zzmv):void");
    }

    public final synchronized void c(zzmv zzmvVar, int i2) {
        try {
            if (this.d != null) {
                Iterator it = this.f9154c.values().iterator();
                while (it.hasNext()) {
                    zzpb zzpbVar = (zzpb) it.next();
                    if (zzpbVar.b(zzmvVar)) {
                        it.remove();
                        if (zzpbVar.e) {
                            if (zzpbVar.f9151a.equals(this.f)) {
                                f(zzpbVar);
                            }
                            this.d.s(zzmvVar, zzpbVar.f9151a);
                        }
                    }
                }
                e(zzmvVar);
            } else {
                throw null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void d(zzmv zzmvVar) {
        zzpj zzpjVar;
        try {
            String str = this.f;
            if (str != null) {
                zzpb zzpbVar = (zzpb) this.f9154c.get(str);
                if (zzpbVar != null) {
                    f(zzpbVar);
                } else {
                    throw null;
                }
            }
            Iterator it = this.f9154c.values().iterator();
            while (it.hasNext()) {
                zzpb zzpbVar2 = (zzpb) it.next();
                it.remove();
                if (zzpbVar2.e && (zzpjVar = this.d) != null) {
                    zzpjVar.s(zzmvVar, zzpbVar2.f9151a);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final void e(zzmv zzmvVar) {
        zzwg zzwgVar;
        boolean g = zzmvVar.b.g();
        HashMap hashMap = this.f9154c;
        if (g) {
            String str = this.f;
            if (str != null) {
                zzpb zzpbVar = (zzpb) hashMap.get(str);
                zzpbVar.getClass();
                f(zzpbVar);
                return;
            }
            return;
        }
        zzpb zzpbVar2 = (zzpb) hashMap.get(this.f);
        int i2 = zzmvVar.f9128c;
        zzwg zzwgVar2 = zzmvVar.d;
        this.f = g(i2, zzwgVar2).f9151a;
        b(zzmvVar);
        if (zzwgVar2 != null) {
            long j = zzwgVar2.d;
            if (zzwgVar2.b()) {
                if (zzpbVar2 != null && zzpbVar2.f9152c == j && (zzwgVar = zzpbVar2.d) != null) {
                    if (zzwgVar.b == zzwgVar2.b) {
                        if (zzwgVar.f9338c == zzwgVar2.f9338c) {
                            return;
                        }
                    }
                }
                g(i2, new zzwg(zzwgVar2.f9337a, j));
            }
        }
    }

    public final void f(zzpb zzpbVar) {
        long j = zzpbVar.f9152c;
        if (j != -1) {
            this.g = j;
        }
        this.f = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0048, code lost:
    
        if (r12 != (-1)) goto L16;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x009b A[ADDED_TO_REGION, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.ads.zzpb g(int r19, com.google.android.gms.internal.ads.zzwg r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            java.util.HashMap r3 = r0.f9154c
            java.util.Collection r4 = r3.values()
            java.util.Iterator r4 = r4.iterator()
            r5 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r7 = 0
        L16:
            boolean r8 = r4.hasNext()
            if (r8 == 0) goto L9f
            java.lang.Object r8 = r4.next()
            com.google.android.gms.internal.ads.zzpb r8 = (com.google.android.gms.internal.ads.zzpb) r8
            long r9 = r8.f9152c
            com.google.android.gms.internal.ads.zzwg r11 = r8.d
            r12 = -1
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L57
            int r9 = r8.b
            if (r1 != r9) goto L57
            if (r2 == 0) goto L57
            com.google.android.gms.internal.ads.zzpc r9 = r8.g
            long r14 = r2.d
            java.util.HashMap r10 = r9.f9154c
            r16 = r12
            java.lang.String r12 = r9.f
            java.lang.Object r10 = r10.get(r12)
            com.google.android.gms.internal.ads.zzpb r10 = (com.google.android.gms.internal.ads.zzpb) r10
            if (r10 == 0) goto L4b
            long r12 = r10.f9152c
            int r10 = (r12 > r16 ? 1 : (r12 == r16 ? 0 : -1))
            if (r10 == 0) goto L4b
            goto L50
        L4b:
            long r9 = r9.g
            r12 = 1
            long r12 = r12 + r9
        L50:
            int r9 = (r14 > r12 ? 1 : (r14 == r12 ? 0 : -1))
            if (r9 < 0) goto L59
            r8.f9152c = r14
            goto L59
        L57:
            r16 = r12
        L59:
            if (r2 != 0) goto L60
            int r9 = r8.b
            if (r1 != r9) goto L16
            goto L83
        L60:
            long r9 = r2.d
            if (r11 != 0) goto L71
            boolean r12 = r2.b()
            if (r12 != 0) goto L16
            long r12 = r8.f9152c
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L16
            goto L83
        L71:
            long r12 = r11.d
            int r9 = (r9 > r12 ? 1 : (r9 == r12 ? 0 : -1))
            if (r9 != 0) goto L16
            int r9 = r2.b
            int r10 = r11.b
            if (r9 != r10) goto L16
            int r9 = r2.f9338c
            int r10 = r11.f9338c
            if (r9 != r10) goto L16
        L83:
            long r9 = r8.f9152c
            int r12 = (r9 > r16 ? 1 : (r9 == r16 ? 0 : -1))
            if (r12 == 0) goto L9b
            int r12 = (r9 > r5 ? 1 : (r9 == r5 ? 0 : -1))
            if (r12 >= 0) goto L8e
            goto L9b
        L8e:
            if (r12 != 0) goto L16
            java.lang.String r9 = com.google.android.gms.internal.ads.zzfj.f7405a
            com.google.android.gms.internal.ads.zzwg r9 = r7.d
            if (r9 == 0) goto L16
            if (r11 == 0) goto L16
            r7 = r8
            goto L16
        L9b:
            r7 = r8
            r5 = r9
            goto L16
        L9f:
            if (r7 != 0) goto Lb9
            r4 = 12
            byte[] r4 = new byte[r4]
            java.util.Random r5 = com.google.android.gms.internal.ads.zzpc.i
            r5.nextBytes(r4)
            r5 = 10
            java.lang.String r4 = android.util.Base64.encodeToString(r4, r5)
            com.google.android.gms.internal.ads.zzpb r5 = new com.google.android.gms.internal.ads.zzpb
            r5.<init>(r0, r4, r1, r2)
            r3.put(r4, r5)
            return r5
        Lb9:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpc.g(int, com.google.android.gms.internal.ads.zzwg):com.google.android.gms.internal.ads.zzpb");
    }
}
