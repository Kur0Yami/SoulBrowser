package com.google.android.gms.internal.ads;

import j$.util.concurrent.ConcurrentHashMap;

/* loaded from: classes.dex */
public final class zzdyh {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f6260a = new ConcurrentHashMap();

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a9 A[Catch: all -> 0x004c, TryCatch #0 {all -> 0x004c, blocks: (B:3:0x0001, B:11:0x0019, B:13:0x0038, B:15:0x003e, B:17:0x0047, B:19:0x004f, B:25:0x0075, B:27:0x00a9, B:29:0x00b3, B:30:0x00bb, B:31:0x00c2, B:33:0x00c8, B:35:0x00cc, B:37:0x00e1, B:38:0x00ea, B:40:0x00f0, B:43:0x00fe, B:46:0x0104, B:47:0x0116, B:49:0x011c, B:52:0x012e, B:55:0x0136, B:67:0x0147, B:70:0x014f, B:73:0x0155, B:76:0x015e, B:85:0x0167, B:88:0x0086, B:89:0x0097), top: B:2:0x0001 }] */
    /* JADX WARN: Type inference failed for: r12v3, types: [com.google.android.gms.internal.ads.zzdyf, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v0, types: [com.google.android.gms.internal.ads.zzdyf, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void a(long r8, long r10, int r12) {
        /*
            Method dump skipped, instructions count: 368
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyh.a(long, long, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0012 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            r9 = this;
            com.google.android.gms.common.util.Clock r0 = com.google.android.gms.ads.internal.zzt.zzk()
            long r0 = r0.currentTimeMillis()
            j$.util.concurrent.ConcurrentHashMap r2 = r9.f6260a
            java.util.Set r2 = r2.entrySet()
            java.util.Iterator r2 = r2.iterator()
        L12:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto La4
            java.lang.Object r3 = r2.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            com.google.android.gms.internal.ads.zzdyk r4 = (com.google.android.gms.internal.ads.zzdyk) r4
            java.lang.Object r3 = r3.getValue()
            java.util.ArrayDeque r3 = (java.util.ArrayDeque) r3
            int r4 = r4.b()
            r5 = 0
            if (r4 == 0) goto L3b
            r7 = 1
            if (r4 == r7) goto L5f
            r7 = 2
            if (r4 == r7) goto L4e
            r7 = 3
            if (r4 == r7) goto L3d
        L3b:
            r7 = r5
            goto L6f
        L3d:
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.P8
            com.google.android.gms.internal.ads.zzbgi r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r7.a(r4)
            java.lang.Long r4 = (java.lang.Long) r4
            long r7 = r4.longValue()
            goto L6f
        L4e:
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.O8
            com.google.android.gms.internal.ads.zzbgi r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r7.a(r4)
            java.lang.Long r4 = (java.lang.Long) r4
            long r7 = r4.longValue()
            goto L6f
        L5f:
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.N8
            com.google.android.gms.internal.ads.zzbgi r7 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r7.a(r4)
            java.lang.Long r4 = (java.lang.Long) r4
            long r7 = r4.longValue()
        L6f:
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 != 0) goto L77
            r2.remove()
            r7 = r5
        L77:
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 <= 0) goto L12
            java.util.Iterator r4 = r3.iterator()
        L7f:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L99
            java.lang.Object r5 = r4.next()
            java.lang.Long r5 = (java.lang.Long) r5
            long r5 = r5.longValue()
            long r5 = r0 - r5
            int r5 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r5 <= 0) goto L99
            r4.remove()
            goto L7f
        L99:
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L12
            r2.remove()
            goto L12
        La4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdyh.b():void");
    }
}
