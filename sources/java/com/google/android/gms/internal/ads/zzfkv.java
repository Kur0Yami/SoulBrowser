package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class zzfkv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfjz f7443a;
    public final zzfks b;
    public zzflb d;
    public int e = 1;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayDeque f7444c = new ArrayDeque();

    public zzfkv(zzfjz zzfjzVar, zzfjv zzfjvVar, zzfks zzfksVar) {
        this.f7443a = zzfjzVar;
        this.b = zzfksVar;
        zzfjvVar.f7421a = new zzfku(this);
    }

    public final synchronized void a(zzfkt zzfktVar) {
        this.f7444c.add(zzfktVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0057, code lost:
    
        r3 = new com.google.android.gms.internal.ads.zzflb(r4.f7443a, r4.b, r0);
        r4.d = r3;
        r3.a(new com.google.android.gms.internal.ads.zzfkq(r4, r0));
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x006b, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void b() {
        /*
            r4 = this;
            monitor-enter(r4)
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.d7     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r0 = r1.a(r0)     // Catch: java.lang.Throwable -> L2b
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> L2b
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L2d
            com.google.android.gms.internal.ads.zzcda r0 = com.google.android.gms.ads.internal.zzt.zzh()     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.ads.internal.util.zzj r0 = r0.i()     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzccv r0 = r0.zzi()     // Catch: java.lang.Throwable -> L2b
            boolean r0 = r0.j     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L24
            goto L2d
        L24:
            java.util.ArrayDeque r0 = r4.f7444c     // Catch: java.lang.Throwable -> L2b
            r0.clear()     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r4)
            return
        L2b:
            r0 = move-exception
            goto L6e
        L2d:
            boolean r0 = r4.c()     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L6c
        L33:
            java.util.ArrayDeque r0 = r4.f7444c     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r0.isEmpty()     // Catch: java.lang.Throwable -> L2b
            if (r1 != 0) goto L6c
            java.lang.Object r0 = r0.pollFirst()     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfkt r0 = (com.google.android.gms.internal.ads.zzfkt) r0     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L57
            com.google.android.gms.internal.ads.zzfkj r1 = r0.zzb()     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L33
            com.google.android.gms.internal.ads.zzfjz r1 = r4.f7443a     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfkj r2 = r0.zzb()     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfka r1 = (com.google.android.gms.internal.ads.zzfka) r1     // Catch: java.lang.Throwable -> L2b
            boolean r1 = r1.b(r2)     // Catch: java.lang.Throwable -> L2b
            if (r1 == 0) goto L33
        L57:
            com.google.android.gms.internal.ads.zzfjz r1 = r4.f7443a     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfks r2 = r4.b     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzflb r3 = new com.google.android.gms.internal.ads.zzflb     // Catch: java.lang.Throwable -> L2b
            r3.<init>(r1, r2, r0)     // Catch: java.lang.Throwable -> L2b
            r4.d = r3     // Catch: java.lang.Throwable -> L2b
            com.google.android.gms.internal.ads.zzfkq r1 = new com.google.android.gms.internal.ads.zzfkq     // Catch: java.lang.Throwable -> L2b
            r1.<init>(r4, r0)     // Catch: java.lang.Throwable -> L2b
            r3.a(r1)     // Catch: java.lang.Throwable -> L2b
            monitor-exit(r4)
            return
        L6c:
            monitor-exit(r4)
            return
        L6e:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L2b
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfkv.b():void");
    }

    public final synchronized boolean c() {
        return this.d == null;
    }
}
