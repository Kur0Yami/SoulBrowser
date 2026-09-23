package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class zzgxe extends zzgyd implements Runnable {
    public static final /* synthetic */ int o = 0;
    public ListenableFuture l;
    public Class m;
    public Object n;

    public zzgxe(ListenableFuture listenableFuture, Class cls, Object obj) {
        listenableFuture.getClass();
        this.l = listenableFuture;
        this.m = cls;
        this.n = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final void e() {
        n(this.l);
        this.l = null;
        this.m = null;
        this.n = null;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final String f() {
        String str;
        ListenableFuture listenableFuture = this.l;
        Class cls = this.m;
        Object obj = this.n;
        String f = super.f();
        if (listenableFuture != null) {
            String obj2 = listenableFuture.toString();
            str = android.support.v4.media.a.q(new StringBuilder(obj2.length() + 16), "inputFuture=[", obj2, "], ");
        } else {
            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        if (cls != null && obj != null) {
            int length = str.length();
            String obj3 = cls.toString();
            int length2 = obj3.length();
            String obj4 = obj.toString();
            StringBuilder sb = new StringBuilder(obj4.length() + length + 15 + length2 + 13 + 1);
            android.support.v4.media.a.z(sb, str, "exceptionType=[", obj3, "], fallback=[");
            return android.support.v4.media.a.p(sb, obj4, "]");
        }
        if (f != null) {
            return str.concat(f);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0083  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            com.google.common.util.concurrent.ListenableFuture r0 = r10.l
            java.lang.Class r1 = r10.m
            java.lang.Object r2 = r10.n
            r3 = 0
            r4 = 1
            if (r0 != 0) goto Lc
            r5 = r4
            goto Ld
        Lc:
            r5 = r3
        Ld:
            if (r1 != 0) goto L11
            r6 = r4
            goto L12
        L11:
            r6 = r3
        L12:
            r5 = r5 | r6
            if (r2 != 0) goto L16
            r3 = r4
        L16:
            r3 = r3 | r5
            if (r3 != 0) goto Lb2
            boolean r3 = r10.isCancelled()
            if (r3 == 0) goto L21
            goto Lb2
        L21:
            r3 = 0
            r10.l = r3
            boolean r4 = r0 instanceof com.google.android.gms.internal.ads.zzgzo     // Catch: java.lang.Throwable -> L30 java.util.concurrent.ExecutionException -> L32
            if (r4 == 0) goto L34
            r4 = r0
            com.google.android.gms.internal.ads.zzgzo r4 = (com.google.android.gms.internal.ads.zzgzo) r4     // Catch: java.lang.Throwable -> L30 java.util.concurrent.ExecutionException -> L32
            java.lang.Throwable r4 = r4.a()     // Catch: java.lang.Throwable -> L30 java.util.concurrent.ExecutionException -> L32
            goto L35
        L30:
            r4 = move-exception
            goto L3c
        L32:
            r4 = move-exception
            goto L3e
        L34:
            r4 = r3
        L35:
            if (r4 != 0) goto L3c
            java.lang.Object r5 = com.google.android.gms.internal.ads.zzgym.l(r0)     // Catch: java.lang.Throwable -> L30 java.util.concurrent.ExecutionException -> L32
            goto L7d
        L3c:
            r5 = r3
            goto L7d
        L3e:
            java.lang.Throwable r5 = r4.getCause()
            if (r5 != 0) goto L7b
            java.lang.NullPointerException r5 = new java.lang.NullPointerException
            java.lang.Class r6 = r0.getClass()
            java.lang.String r6 = java.lang.String.valueOf(r6)
            java.lang.Class r4 = r4.getClass()
            java.lang.String r4 = java.lang.String.valueOf(r4)
            int r7 = r6.length()
            int r7 = r7 + 19
            int r8 = r4.length()
            int r8 = r8 + r7
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            int r8 = r8 + 16
            r7.<init>(r8)
            java.lang.String r8 = "Future type "
            java.lang.String r9 = " threw "
            android.support.v4.media.a.z(r7, r8, r6, r9, r4)
            java.lang.String r4 = " without a cause"
            r7.append(r4)
            java.lang.String r4 = r7.toString()
            r5.<init>(r4)
        L7b:
            r4 = r5
            goto L3c
        L7d:
            if (r4 != 0) goto L83
            r10.c(r5)
            return
        L83:
            boolean r1 = r1.isInstance(r4)
            if (r1 == 0) goto Laf
            java.lang.Object r0 = r10.t(r2, r4)     // Catch: java.lang.Throwable -> L95
            r10.m = r3
            r10.n = r3
            r10.s(r0)
            return
        L95:
            r0 = move-exception
            boolean r1 = r0 instanceof java.lang.InterruptedException     // Catch: java.lang.Throwable -> La9
            if (r1 == 0) goto La1
            java.lang.Thread r1 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> La9
            r1.interrupt()     // Catch: java.lang.Throwable -> La9
        La1:
            r10.d(r0)     // Catch: java.lang.Throwable -> La9
            r10.m = r3
            r10.n = r3
            return
        La9:
            r0 = move-exception
            r10.m = r3
            r10.n = r3
            throw r0
        Laf:
            r10.m(r0)
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgxe.run():void");
    }

    public abstract void s(Object obj);

    public abstract Object t(Object obj, Throwable th);
}
