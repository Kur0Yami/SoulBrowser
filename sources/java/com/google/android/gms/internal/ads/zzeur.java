package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzeur implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f6956a;
    public final zzduz b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6957c;
    public final zzfik d;

    public zzeur(zzgyw zzgywVar, zzduz zzduzVar, zzfik zzfikVar, String str) {
        this.f6956a = zzgywVar;
        this.b = zzduzVar;
        this.d = zzfikVar;
        this.f6957c = str;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f6956a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzeuq
            /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    r6 = this;
                    com.google.android.gms.internal.ads.zzeur r0 = com.google.android.gms.internal.ads.zzeur.this
                    com.google.android.gms.internal.ads.zzfik r1 = r0.d
                    com.google.android.gms.internal.ads.zzduz r2 = r0.b
                    java.lang.String r1 = r1.g
                    java.lang.String r0 = r0.f6957c
                    r2.getClass()
                    com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.S4
                    com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
                    java.lang.Object r3 = r4.a(r3)
                    java.lang.Boolean r3 = (java.lang.Boolean) r3
                    boolean r3 = r3.booleanValue()
                    r4 = 0
                    if (r3 != 0) goto L21
                    goto L7a
                L21:
                    if (r1 == 0) goto L7a
                    if (r0 == 0) goto L7a
                    boolean r3 = r2.d
                    if (r3 != 0) goto L57
                    r2.a()
                    com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.T4
                    com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()
                    java.lang.Object r3 = r5.a(r3)
                    java.lang.Boolean r3 = (java.lang.Boolean) r3
                    boolean r3 = r3.booleanValue()
                    if (r3 == 0) goto L57
                    java.util.concurrent.atomic.AtomicBoolean r3 = r2.f
                    r5 = 1
                    boolean r3 = r3.getAndSet(r5)
                    if (r3 != 0) goto L57
                    com.google.android.gms.internal.ads.zzcda r3 = com.google.android.gms.ads.internal.zzt.zzh()
                    com.google.android.gms.ads.internal.util.zzj r3 = r3.i()
                    com.google.android.gms.internal.ads.zzduw r5 = new com.google.android.gms.internal.ads.zzduw
                    r5.<init>(r2)
                    r3.zzk(r5)
                L57:
                    j$.util.concurrent.ConcurrentHashMap r3 = r2.f6171a
                    java.lang.Object r3 = r3.get(r0)
                    java.util.Map r3 = (java.util.Map) r3
                    if (r3 == 0) goto L7a
                    java.lang.Object r5 = r3.get(r1)
                    org.json.JSONObject r5 = (org.json.JSONObject) r5
                    if (r5 == 0) goto L6a
                    goto L7b
                L6a:
                    org.json.JSONObject r5 = r2.e
                    java.lang.String r0 = com.google.android.gms.internal.ads.zzdvb.a(r5, r1, r0)
                    if (r0 == 0) goto L7a
                    java.lang.Object r0 = r3.get(r0)
                    r5 = r0
                    org.json.JSONObject r5 = (org.json.JSONObject) r5
                    goto L7b
                L7a:
                    r5 = r4
                L7b:
                    com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.U4
                    com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
                    java.lang.Object r0 = r1.a(r0)
                    java.lang.Boolean r0 = (java.lang.Boolean) r0
                    boolean r0 = r0.booleanValue()
                    if (r0 != 0) goto L8e
                    goto L90
                L8e:
                    org.json.JSONObject r4 = r2.b
                L90:
                    com.google.android.gms.internal.ads.zzeus r0 = new com.google.android.gms.internal.ads.zzeus
                    r0.<init>(r5, r4)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeuq.call():java.lang.Object");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 17;
    }
}
