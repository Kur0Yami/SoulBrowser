package com.google.android.gms.internal.ads;

import android.view.View;

/* loaded from: classes.dex */
final class zzbdg implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f4567c;
    public final /* synthetic */ zzbdk f;

    public zzbdg(zzbdk zzbdkVar, View view) {
        this.f4567c = view;
        this.f = zzbdkVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x0072, code lost:
    
        if (r1 == 0) goto L25;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzbdk r0 = r11.f
            android.view.View r1 = r11.f4567c
            r0.getClass()
            com.google.android.gms.internal.ads.zzbda r2 = new com.google.android.gms.internal.ads.zzbda     // Catch: java.lang.Exception -> L57
            int r3 = r0.j     // Catch: java.lang.Exception -> L57
            int r4 = r0.k     // Catch: java.lang.Exception -> L57
            int r5 = r0.l     // Catch: java.lang.Exception -> L57
            int r6 = r0.m     // Catch: java.lang.Exception -> L57
            int r7 = r0.n     // Catch: java.lang.Exception -> L57
            int r8 = r0.o     // Catch: java.lang.Exception -> L57
            int r9 = r0.p     // Catch: java.lang.Exception -> L57
            boolean r10 = r0.s     // Catch: java.lang.Exception -> L57
            r2.<init>(r3, r4, r5, r6, r7, r8, r9, r10)     // Catch: java.lang.Exception -> L57
            com.google.android.gms.internal.ads.zzbdf r3 = com.google.android.gms.ads.internal.zzt.zzg()     // Catch: java.lang.Exception -> L57
            android.app.Application r3 = r3.e()     // Catch: java.lang.Exception -> L57
            if (r3 == 0) goto L59
            java.lang.String r4 = r0.q     // Catch: java.lang.Exception -> L57
            boolean r5 = android.text.TextUtils.isEmpty(r4)     // Catch: java.lang.Exception -> L57
            if (r5 != 0) goto L59
            android.content.res.Resources r5 = r3.getResources()     // Catch: java.lang.Exception -> L57
            com.google.android.gms.internal.ads.zzbgb r6 = com.google.android.gms.internal.ads.zzbgk.D0     // Catch: java.lang.Exception -> L57
            com.google.android.gms.internal.ads.zzbgi r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> L57
            java.lang.Object r6 = r7.a(r6)     // Catch: java.lang.Exception -> L57
            java.lang.String r6 = (java.lang.String) r6     // Catch: java.lang.Exception -> L57
            java.lang.String r7 = "id"
            java.lang.String r3 = r3.getPackageName()     // Catch: java.lang.Exception -> L57
            int r3 = r5.getIdentifier(r6, r7, r3)     // Catch: java.lang.Exception -> L57
            java.lang.Object r3 = r1.getTag(r3)     // Catch: java.lang.Exception -> L57
            java.lang.String r3 = (java.lang.String) r3     // Catch: java.lang.Exception -> L57
            if (r3 == 0) goto L59
            boolean r3 = r3.equals(r4)     // Catch: java.lang.Exception -> L57
            if (r3 != 0) goto L71
            goto L59
        L57:
            r0 = move-exception
            goto L8f
        L59:
            com.google.android.gms.internal.ads.zzbdj r1 = r0.b(r1, r2)     // Catch: java.lang.Exception -> L57
            r2.d()     // Catch: java.lang.Exception -> L57
            int r3 = r1.f4571a     // Catch: java.lang.Exception -> L57
            if (r3 != 0) goto L68
            int r3 = r1.b     // Catch: java.lang.Exception -> L57
            if (r3 == 0) goto L71
        L68:
            int r1 = r1.b     // Catch: java.lang.Exception -> L57
            if (r1 != 0) goto L72
            int r1 = r2.k     // Catch: java.lang.Exception -> L57
            if (r1 == 0) goto L71
            goto L74
        L71:
            return
        L72:
            if (r1 != 0) goto L89
        L74:
            com.google.android.gms.internal.ads.zzbdb r1 = r0.h     // Catch: java.lang.Exception -> L57
            java.lang.Object r3 = r1.f4561a     // Catch: java.lang.Exception -> L57
            monitor-enter(r3)     // Catch: java.lang.Exception -> L57
            java.util.LinkedList r1 = r1.f4562c     // Catch: java.lang.Throwable -> L83
            boolean r1 = r1.contains(r2)     // Catch: java.lang.Throwable -> L83
            if (r1 == 0) goto L85
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L83
            return
        L83:
            r0 = move-exception
            goto L87
        L85:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L83
            goto L89
        L87:
            monitor-exit(r3)     // Catch: java.lang.Throwable -> L83
            throw r0     // Catch: java.lang.Exception -> L57
        L89:
            com.google.android.gms.internal.ads.zzbdb r0 = r0.h     // Catch: java.lang.Exception -> L57
            r0.b(r2)     // Catch: java.lang.Exception -> L57
            return
        L8f:
            int r1 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r1 = "Exception in fetchContentOnUIThread"
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r1, r0)
            java.lang.String r1 = "ContentFetchTask.fetchContent"
            com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()
            r2.f(r1, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbdg.run():void");
    }
}
