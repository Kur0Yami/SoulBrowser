package com.google.android.gms.internal.auth;

import android.content.Context;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public abstract class zzdc {
    public static final Object f = new Object();
    public static volatile zzcd g;
    public static final AtomicInteger h;

    /* renamed from: a, reason: collision with root package name */
    public final zzcz f9519a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9520c;
    public volatile int d = -1;
    public volatile Object e;

    static {
        new AtomicReference();
        h = new AtomicInteger();
    }

    public /* synthetic */ zzdc(zzcz zzczVar, String str, Object obj) {
        if (zzczVar.f9517a != null) {
            this.f9519a = zzczVar;
            this.b = str;
            this.f9520c = obj;
            return;
        }
        throw new IllegalArgumentException("Must pass a valid SharedPreferences file name or ContentProvider URI");
    }

    public static void c(final Context context) {
        if (g == null && context != null) {
            Object obj = f;
            synchronized (obj) {
                try {
                    if (g == null) {
                        synchronized (obj) {
                            zzcd zzcdVar = g;
                            Context applicationContext = context.getApplicationContext();
                            if (applicationContext != null) {
                                context = applicationContext;
                            }
                            if (zzcdVar != null) {
                                if (zzcdVar.f9504a != context) {
                                }
                            }
                            zzcg.c();
                            zzdd.c();
                            zzco.d();
                            g = new zzcd(context, zzdo.a(new zzdj() { // from class: com.google.android.gms.internal.auth.zzct
                                @Override // com.google.android.gms.internal.auth.zzdj
                                public final Object zza() {
                                    Object obj2 = zzdc.f;
                                    return zzcp.a(context);
                                }
                            }));
                            h.incrementAndGet();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
    }

    public abstract Object a(Object obj);

    /* JADX WARN: Removed duplicated region for block: B:19:0x005b A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x0024, B:13:0x0035, B:16:0x0046, B:19:0x005b, B:21:0x0061, B:23:0x0069, B:25:0x0080, B:27:0x0088, B:29:0x0090, B:31:0x0096, B:34:0x00a6, B:36:0x00ac, B:37:0x00a4, B:39:0x00b2, B:41:0x00b6, B:44:0x00be, B:45:0x00c1, B:46:0x00c5, B:49:0x007a, B:50:0x00ca, B:51:0x00cf, B:55:0x00d0), top: B:4:0x000b }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00ca A[Catch: all -> 0x0053, TryCatch #0 {all -> 0x0053, blocks: (B:5:0x000b, B:7:0x000f, B:9:0x0016, B:11:0x0024, B:13:0x0035, B:16:0x0046, B:19:0x005b, B:21:0x0061, B:23:0x0069, B:25:0x0080, B:27:0x0088, B:29:0x0090, B:31:0x0096, B:34:0x00a6, B:36:0x00ac, B:37:0x00a4, B:39:0x00b2, B:41:0x00b6, B:44:0x00be, B:45:0x00c1, B:46:0x00c5, B:49:0x007a, B:50:0x00ca, B:51:0x00cf, B:55:0x00d0), top: B:4:0x000b }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b() {
        /*
            r7 = this;
            java.util.concurrent.atomic.AtomicInteger r0 = com.google.android.gms.internal.auth.zzdc.h
            int r0 = r0.get()
            int r1 = r7.d
            if (r1 >= r0) goto Ld4
            monitor-enter(r7)
            int r1 = r7.d     // Catch: java.lang.Throwable -> L53
            if (r1 >= r0) goto Ld0
            com.google.android.gms.internal.auth.zzcd r1 = com.google.android.gms.internal.auth.zzdc.g     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzdf r2 = com.google.android.gms.internal.auth.zzdf.f9522c     // Catch: java.lang.Throwable -> L53
            r3 = 0
            if (r1 == 0) goto L56
            com.google.android.gms.internal.auth.zzdj r2 = r1.b     // Catch: java.lang.Throwable -> L53
            java.lang.Object r2 = r2.zza()     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzdh r2 = (com.google.android.gms.internal.auth.zzdh) r2     // Catch: java.lang.Throwable -> L53
            boolean r4 = r2.b()     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L56
            java.lang.Object r4 = r2.a()     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzci r4 = (com.google.android.gms.internal.auth.zzci) r4     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzcz r5 = r7.f9519a     // Catch: java.lang.Throwable -> L53
            android.net.Uri r5 = r5.f9517a     // Catch: java.lang.Throwable -> L53
            java.lang.String r6 = r7.b     // Catch: java.lang.Throwable -> L53
            r4.getClass()     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L42
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L53
            androidx.collection.SimpleArrayMap r4 = r4.f9509a     // Catch: java.lang.Throwable -> L53
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L53
            androidx.collection.SimpleArrayMap r4 = (androidx.collection.SimpleArrayMap) r4     // Catch: java.lang.Throwable -> L53
            goto L43
        L42:
            r4 = r3
        L43:
            if (r4 != 0) goto L46
            goto L56
        L46:
            java.lang.String r5 = ""
            java.lang.String r5 = r5.concat(r6)     // Catch: java.lang.Throwable -> L53
            java.lang.Object r4 = r4.get(r5)     // Catch: java.lang.Throwable -> L53
            java.lang.String r4 = (java.lang.String) r4     // Catch: java.lang.Throwable -> L53
            goto L57
        L53:
            r0 = move-exception
            goto Ld2
        L56:
            r4 = r3
        L57:
            java.lang.String r5 = "Must call PhenotypeFlag.init() first"
            if (r1 == 0) goto Lca
            com.google.android.gms.internal.auth.zzcz r5 = r7.f9519a     // Catch: java.lang.Throwable -> L53
            android.net.Uri r5 = r5.f9517a     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L7a
            android.content.Context r6 = r1.f9504a     // Catch: java.lang.Throwable -> L53
            boolean r5 = com.google.android.gms.internal.auth.zzcq.a(r6, r5)     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L78
            android.content.Context r5 = r1.f9504a     // Catch: java.lang.Throwable -> L53
            android.content.ContentResolver r5 = r5.getContentResolver()     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzcz r6 = r7.f9519a     // Catch: java.lang.Throwable -> L53
            android.net.Uri r6 = r6.f9517a     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzcg r5 = com.google.android.gms.internal.auth.zzcg.b(r5, r6)     // Catch: java.lang.Throwable -> L53
            goto L7e
        L78:
            r5 = r3
            goto L7e
        L7a:
            com.google.android.gms.internal.auth.zzdd r5 = com.google.android.gms.internal.auth.zzdd.b()     // Catch: java.lang.Throwable -> L53
        L7e:
            if (r5 == 0) goto L8d
            java.lang.String r6 = r7.b     // Catch: java.lang.Throwable -> L53
            java.lang.Object r5 = r5.a(r6)     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto L8d
            java.lang.Object r5 = r7.a(r5)     // Catch: java.lang.Throwable -> L53
            goto L8e
        L8d:
            r5 = r3
        L8e:
            if (r5 != 0) goto Lb6
            com.google.android.gms.internal.auth.zzcz r5 = r7.f9519a     // Catch: java.lang.Throwable -> L53
            boolean r5 = r5.f9518c     // Catch: java.lang.Throwable -> L53
            if (r5 != 0) goto Lb0
            android.content.Context r1 = r1.f9504a     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzco r1 = com.google.android.gms.internal.auth.zzco.b(r1)     // Catch: java.lang.Throwable -> L53
            com.google.android.gms.internal.auth.zzcz r5 = r7.f9519a     // Catch: java.lang.Throwable -> L53
            boolean r5 = r5.f9518c     // Catch: java.lang.Throwable -> L53
            if (r5 == 0) goto La4
            r5 = r3
            goto La6
        La4:
            java.lang.String r5 = r7.b     // Catch: java.lang.Throwable -> L53
        La6:
            java.lang.String r1 = r1.a(r5)     // Catch: java.lang.Throwable -> L53
            if (r1 == 0) goto Lb0
            java.lang.Object r3 = r7.a(r1)     // Catch: java.lang.Throwable -> L53
        Lb0:
            if (r3 != 0) goto Lb5
            java.lang.Object r5 = r7.f9520c     // Catch: java.lang.Throwable -> L53
            goto Lb6
        Lb5:
            r5 = r3
        Lb6:
            boolean r1 = r2.b()     // Catch: java.lang.Throwable -> L53
            if (r1 == 0) goto Lc5
            if (r4 != 0) goto Lc1
            java.lang.Object r5 = r7.f9520c     // Catch: java.lang.Throwable -> L53
            goto Lc5
        Lc1:
            java.lang.Object r5 = r7.a(r4)     // Catch: java.lang.Throwable -> L53
        Lc5:
            r7.e = r5     // Catch: java.lang.Throwable -> L53
            r7.d = r0     // Catch: java.lang.Throwable -> L53
            goto Ld0
        Lca:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException     // Catch: java.lang.Throwable -> L53
            r0.<init>(r5)     // Catch: java.lang.Throwable -> L53
            throw r0     // Catch: java.lang.Throwable -> L53
        Ld0:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L53
            goto Ld4
        Ld2:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L53
            throw r0
        Ld4:
            java.lang.Object r0 = r7.e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzdc.b():java.lang.Object");
    }
}
