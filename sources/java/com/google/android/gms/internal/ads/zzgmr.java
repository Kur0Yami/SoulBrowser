package com.google.android.gms.internal.ads;

import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzgmr implements zzglz {

    /* renamed from: a, reason: collision with root package name */
    public long f8134a = -1;
    public long b = -1;

    /* renamed from: c, reason: collision with root package name */
    public long f8135c = -1;
    public long d = -1;
    public long e = -1;
    public long f = -1;
    public long g = -1;
    public long h = -1;
    public final long i = SystemClock.uptimeMillis();

    public static boolean d(View view) {
        try {
            if (view.getClass().getName().contains("DebugGestureViewWrapper")) {
                view = ((ViewGroup) view).getChildAt(0);
            }
            Object invoke = view.getClass().getMethod("getAdConfiguration", null).invoke(view, null);
            Integer num = (Integer) invoke.getClass().getField("adType").get(invoke);
            num.intValue();
            String str = (String) invoke.getClass().getMethod("adTypeToString", Integer.TYPE).invoke(null, num);
            if (!str.contains("INTERSTITIAL") && !str.contains("APP_OPEN")) {
                if (!str.contains("REWARDED")) {
                    return false;
                }
            }
            return true;
        } catch (NullPointerException | ReflectiveOperationException | SecurityException unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final synchronized void a(HashMap hashMap) {
        this.h = this.g;
        this.g = SystemClock.uptimeMillis();
        e(hashMap);
    }

    @Override // com.google.android.gms.internal.ads.zzglz
    public final synchronized void b(HashMap hashMap) {
        this.b = this.f8134a;
        this.f8134a = SystemClock.uptimeMillis();
        e(hashMap);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x006a, code lost:
    
        if (d(r8) != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x004a A[Catch: all -> 0x0016, TryCatch #0 {all -> 0x0016, blocks: (B:3:0x0001, B:5:0x0013, B:6:0x0018, B:8:0x001f, B:12:0x0071, B:13:0x0073, B:18:0x0043, B:20:0x004a, B:23:0x006c, B:25:0x0066, B:27:0x0025, B:30:0x0030, B:32:0x0039, B:34:0x003d), top: B:2:0x0001, inners: #1 }] */
    @Override // com.google.android.gms.internal.ads.zzglz
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void c(java.util.HashMap r6, android.content.Context r7, android.view.View r8) {
        /*
            r5 = this;
            monitor-enter(r5)
            long r0 = r5.f8135c     // Catch: java.lang.Throwable -> L16
            r5.d = r0     // Catch: java.lang.Throwable -> L16
            long r0 = android.os.SystemClock.uptimeMillis()     // Catch: java.lang.Throwable -> L16
            r5.f8135c = r0     // Catch: java.lang.Throwable -> L16
            long r0 = r5.e     // Catch: java.lang.Throwable -> L16
            r2 = -1
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto L18
            r5.f = r0     // Catch: java.lang.Throwable -> L16
            goto L18
        L16:
            r6 = move-exception
            goto L78
        L18:
            int r0 = android.os.Build.VERSION.SDK_INT     // Catch: java.lang.Throwable -> L16
            r1 = 33
            r4 = 0
            if (r0 < r1) goto L25
            boolean r0 = r7.isUiContext()     // Catch: java.lang.Throwable -> L16
            if (r0 == 0) goto L40
        L25:
            java.lang.String r0 = "window"
            java.lang.Object r7 = r7.getSystemService(r0)     // Catch: java.lang.Throwable -> L16
            android.view.WindowManager r7 = (android.view.WindowManager) r7     // Catch: java.lang.Throwable -> L16
            if (r7 != 0) goto L30
            goto L40
        L30:
            android.view.Display r7 = r7.getDefaultDisplay()     // Catch: java.lang.Throwable -> L16
            android.util.DisplayMetrics r4 = new android.util.DisplayMetrics     // Catch: java.lang.Throwable -> L16
            r4.<init>()     // Catch: java.lang.Throwable -> L16
            r7.getRealMetrics(r4)     // Catch: java.lang.Throwable -> L16 java.lang.NoSuchMethodError -> L3d
            goto L40
        L3d:
            r7.getMetrics(r4)     // Catch: java.lang.Throwable -> L16
        L40:
            if (r4 != 0) goto L43
            goto L71
        L43:
            int r7 = r4.widthPixels     // Catch: java.lang.Throwable -> L16
            int r0 = r4.heightPixels     // Catch: java.lang.Throwable -> L16
            int r7 = r7 * r0
            if (r8 == 0) goto L71
            int r0 = r8.getWidth()     // Catch: java.lang.Throwable -> L16
            int r1 = r4.widthPixels     // Catch: java.lang.Throwable -> L16
            int r0 = java.lang.Math.min(r0, r1)     // Catch: java.lang.Throwable -> L16
            int r1 = r8.getHeight()     // Catch: java.lang.Throwable -> L16
            int r4 = r4.heightPixels     // Catch: java.lang.Throwable -> L16
            int r1 = java.lang.Math.min(r1, r4)     // Catch: java.lang.Throwable -> L16
            int r0 = r0 * r1
            int r1 = r0 + r0
            if (r1 < r7) goto L64
            goto L6c
        L64:
            if (r0 != 0) goto L71
            boolean r7 = d(r8)     // Catch: java.lang.Throwable -> L16
            if (r7 == 0) goto L71
        L6c:
            long r7 = r5.f8135c     // Catch: java.lang.Throwable -> L16
            r5.e = r7     // Catch: java.lang.Throwable -> L16
            goto L73
        L71:
            r5.e = r2     // Catch: java.lang.Throwable -> L16
        L73:
            r5.e(r6)     // Catch: java.lang.Throwable -> L16
            monitor-exit(r5)
            return
        L78:
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L16
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgmr.c(java.util.HashMap, android.content.Context, android.view.View):void");
    }

    public final void e(HashMap hashMap) {
        hashMap.put("tcq", Long.valueOf(this.f8134a));
        hashMap.put("tpq", Long.valueOf(this.b));
        hashMap.put("tcc", Long.valueOf(this.g));
        hashMap.put("tpc", Long.valueOf(this.h));
        hashMap.put("tpv", Long.valueOf(this.d));
        hashMap.put("tcv", Long.valueOf(this.f8135c));
        hashMap.put("tchv", Long.valueOf(this.e));
        hashMap.put("tphv", Long.valueOf(this.f));
        hashMap.put("tst", Long.valueOf(this.i));
    }
}
