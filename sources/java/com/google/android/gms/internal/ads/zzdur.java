package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzdur {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f6164a = new HashMap();

    /* JADX WARN: Removed duplicated region for block: B:16:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0023 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(java.lang.String r6, com.google.android.gms.internal.ads.zzfji r7) {
        /*
            r5 = this;
            monitor-enter(r5)
            java.util.HashMap r0 = r5.f6164a     // Catch: java.lang.Throwable -> L4e
            boolean r0 = r0.containsKey(r6)     // Catch: java.lang.Throwable -> L4e
            if (r0 == 0) goto Lb
            monitor-exit(r5)
            return
        Lb:
            com.google.android.gms.internal.ads.zzduq r0 = new com.google.android.gms.internal.ads.zzduq     // Catch: java.lang.Throwable -> L4e
            r1 = 0
            if (r7 != 0) goto L12
        L10:
            r2 = r1
            goto L20
        L12:
            com.google.android.gms.internal.ads.zzbtc r2 = r7.f7412a     // Catch: java.lang.Throwable -> L19
            com.google.android.gms.internal.ads.zzbvn r2 = r2.zzH()     // Catch: java.lang.Throwable -> L19
            goto L20
        L19:
            r2 = move-exception
            com.google.android.gms.internal.ads.zzfir r3 = new com.google.android.gms.internal.ads.zzfir     // Catch: com.google.android.gms.internal.ads.zzfir -> L10 java.lang.Throwable -> L4e
            r3.<init>(r2)     // Catch: com.google.android.gms.internal.ads.zzfir -> L10 java.lang.Throwable -> L4e
            throw r3     // Catch: com.google.android.gms.internal.ads.zzfir -> L10 java.lang.Throwable -> L4e
        L20:
            if (r7 != 0) goto L23
            goto L31
        L23:
            com.google.android.gms.internal.ads.zzbtc r3 = r7.f7412a     // Catch: java.lang.Throwable -> L2a
            com.google.android.gms.internal.ads.zzbvn r1 = r3.r()     // Catch: java.lang.Throwable -> L2a
            goto L31
        L2a:
            r3 = move-exception
            com.google.android.gms.internal.ads.zzfir r4 = new com.google.android.gms.internal.ads.zzfir     // Catch: com.google.android.gms.internal.ads.zzfir -> L31 java.lang.Throwable -> L4e
            r4.<init>(r3)     // Catch: com.google.android.gms.internal.ads.zzfir -> L31 java.lang.Throwable -> L4e
            throw r4     // Catch: com.google.android.gms.internal.ads.zzfir -> L31 java.lang.Throwable -> L4e
        L31:
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.Ia     // Catch: java.lang.Throwable -> L4e
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r3 = r4.a(r3)     // Catch: java.lang.Throwable -> L4e
            java.lang.Boolean r3 = (java.lang.Boolean) r3     // Catch: java.lang.Throwable -> L4e
            boolean r3 = r3.booleanValue()     // Catch: java.lang.Throwable -> L4e
            r4 = 1
            if (r3 != 0) goto L45
            goto L50
        L45:
            r3 = 0
            if (r7 != 0) goto L4a
        L48:
            r4 = r3
            goto L50
        L4a:
            r7.a()     // Catch: com.google.android.gms.internal.ads.zzfir -> L48 java.lang.Throwable -> L4e
            goto L50
        L4e:
            r6 = move-exception
            goto L5a
        L50:
            r0.<init>(r6, r2, r1, r4)     // Catch: java.lang.Throwable -> L4e
            java.util.HashMap r7 = r5.f6164a     // Catch: java.lang.Throwable -> L4e
            r7.put(r6, r0)     // Catch: java.lang.Throwable -> L4e
            monitor-exit(r5)
            return
        L5a:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4e
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdur.a(java.lang.String, com.google.android.gms.internal.ads.zzfji):void");
    }

    public final synchronized zzduq b(String str) {
        return (zzduq) this.f6164a.get(str);
    }
}
