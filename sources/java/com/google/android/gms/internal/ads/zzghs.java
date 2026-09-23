package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzghs implements zzfvz {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7964a;
    public final zzglx b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7965c;
    public final long d;
    public final long e;

    public zzghs(Context context, zzgad zzgadVar, zzglx zzglxVar) {
        this.f7964a = context;
        this.f7965c = zzgadVar.J();
        this.d = zzgadVar.Q();
        this.e = zzgadVar.R();
        this.b = zzglxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x004c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.HashMap r6) {
        /*
            r5 = this;
            java.lang.String r0 = "v"
            java.lang.String r1 = r5.f7965c
            r6.put(r0, r1)
            java.lang.Throwable r0 = new java.lang.Throwable
            r0.<init>()
            java.lang.String r1 = "t"
            r6.put(r1, r0)
            java.lang.String r0 = "E"
            java.lang.String r1 = "gs"
            java.lang.Object r1 = r6.get(r1)     // Catch: java.lang.Throwable -> L45
            com.google.common.util.concurrent.ListenableFuture r1 = (com.google.common.util.concurrent.ListenableFuture) r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L45
            int r2 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L45
            r3 = 31
            if (r2 < r3) goto L29
            boolean r2 = r1.isDone()     // Catch: java.lang.Throwable -> L45
            if (r2 == 0) goto L45
        L29:
            long r2 = r5.d     // Catch: java.lang.Throwable -> L45
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L45
            java.lang.Object r1 = r1.get(r2, r4)     // Catch: java.lang.Throwable -> L45
            com.google.android.gms.internal.ads.zzawp r1 = (com.google.android.gms.internal.ads.zzawp) r1     // Catch: java.lang.Throwable -> L45
            if (r1 == 0) goto L45
            java.lang.String r2 = r1.y0()     // Catch: java.lang.Throwable -> L45
            int r2 = r2.length()     // Catch: java.lang.Throwable -> L45
            r3 = 1
            if (r2 <= r3) goto L45
            java.lang.String r1 = r1.y0()     // Catch: java.lang.Throwable -> L45
            goto L46
        L45:
            r1 = r0
        L46:
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L67
            java.lang.String r0 = "ai"
            java.lang.Object r0 = r6.get(r0)     // Catch: java.lang.Throwable -> L67
            com.google.common.util.concurrent.ListenableFuture r0 = (com.google.common.util.concurrent.ListenableFuture) r0     // Catch: java.lang.Throwable -> L67
            if (r0 == 0) goto L67
            long r2 = r5.e     // Catch: java.lang.Throwable -> L67
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Throwable -> L67
            java.lang.Object r0 = r0.get(r2, r4)     // Catch: java.lang.Throwable -> L67
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Throwable -> L67
            boolean r2 = com.google.android.gms.internal.ads.zzgpz.a(r0)     // Catch: java.lang.Throwable -> L67
            if (r2 != 0) goto L67
            r1 = r0
        L67:
            java.lang.String r0 = "int"
            r6.put(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzghs.a(java.util.HashMap):void");
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzb() {
        HashMap a2 = this.b.a();
        a(a2);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzc() {
        HashMap b = this.b.b(this.f7964a, null);
        a(b);
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zzd() {
        HashMap c2 = this.b.c();
        a(c2);
        return c2;
    }

    @Override // com.google.android.gms.internal.ads.zzfvz
    public final HashMap zze() {
        HashMap hashMap = new HashMap();
        hashMap.put("t", new Throwable());
        return hashMap;
    }
}
