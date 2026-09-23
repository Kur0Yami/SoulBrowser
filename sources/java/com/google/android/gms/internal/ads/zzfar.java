package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzfar implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f7168a;
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyw f7169c;
    public final ScheduledExecutorService d;
    public final zzeje e;
    public final zzfik f;
    public final VersionInfoParcel g;

    public zzfar(com.google.android.gms.ads.internal.util.zzj zzjVar, Context context, zzgyw zzgywVar, ScheduledExecutorService scheduledExecutorService, zzeje zzejeVar, zzfik zzfikVar, VersionInfoParcel versionInfoParcel) {
        this.f7168a = zzjVar;
        this.b = context;
        this.f7169c = zzgywVar;
        this.d = scheduledExecutorService;
        this.e = zzejeVar;
        this.f = zzfikVar;
        this.g = versionInfoParcel;
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a0, code lost:
    
        if (java.util.Arrays.asList(r1.split(",")).contains(r5.b.getPackageName()) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003a, code lost:
    
        if (r5.f.d.zzy != com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED.getValue()) goto L10;
     */
    @Override // com.google.android.gms.internal.ads.zzezx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture zza() {
        /*
            r5 = this;
            java.util.concurrent.ScheduledExecutorService r0 = r5.d
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Mb
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto Lf9
            com.google.android.gms.ads.internal.util.zzg r1 = r5.f7168a
            boolean r1 = r1.zzz()
            if (r1 == 0) goto Lf9
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Qb
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 == 0) goto L3c
            com.google.android.gms.ads.RequestConfiguration$PublisherPrivacyPersonalizationState r1 = com.google.android.gms.ads.RequestConfiguration.PublisherPrivacyPersonalizationState.DISABLED
            int r1 = r1.getValue()
            com.google.android.gms.internal.ads.zzfik r2 = r5.f
            com.google.android.gms.ads.internal.client.zzm r2 = r2.d
            int r2 = r2.zzy
            if (r2 == r1) goto Lf9
        L3c:
            com.google.android.gms.ads.internal.util.client.VersionInfoParcel r1 = r5.g
            int r1 = r1.clientJarVersion
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Kb
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            if (r1 < r2) goto Lf9
            int r1 = android.os.Build.VERSION.SDK_INT
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Lb
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            if (r1 < r2) goto Lf9
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Ib
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            if (r1 != 0) goto L79
            goto La2
        L79:
            com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.Jb
            com.google.android.gms.internal.ads.zzbgi r2 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r1 = r2.a(r1)
            java.lang.String r1 = (java.lang.String) r1
            boolean r2 = android.text.TextUtils.isEmpty(r1)
            if (r2 == 0) goto L8c
            goto Lf9
        L8c:
            java.lang.String r2 = ","
            java.lang.String[] r1 = r1.split(r2)
            java.util.List r1 = java.util.Arrays.asList(r1)
            android.content.Context r2 = r5.b
            java.lang.String r2 = r2.getPackageName()
            boolean r1 = r1.contains(r2)
            if (r1 == 0) goto Lf9
        La2:
            com.google.android.gms.internal.ads.zzeje r1 = r5.e     // Catch: java.lang.Exception -> Lc1
            r2 = 0
            com.google.common.util.concurrent.ListenableFuture r1 = r1.a(r2)     // Catch: java.lang.Exception -> Lc1
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Ob     // Catch: java.lang.Exception -> Lc1
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.Exception -> Lc1
            java.lang.Object r2 = r3.a(r2)     // Catch: java.lang.Exception -> Lc1
            java.lang.Integer r2 = (java.lang.Integer) r2     // Catch: java.lang.Exception -> Lc1
            int r2 = r2.intValue()     // Catch: java.lang.Exception -> Lc1
            long r2 = (long) r2     // Catch: java.lang.Exception -> Lc1
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> Lc1
            com.google.common.util.concurrent.ListenableFuture r1 = com.google.android.gms.internal.ads.zzgym.g(r1, r2, r4, r0)     // Catch: java.lang.Exception -> Lc1
            goto Lc6
        Lc1:
            r1 = move-exception
            com.google.common.util.concurrent.ListenableFuture r1 = com.google.android.gms.internal.ads.zzgym.b(r1)
        Lc6:
            com.google.android.gms.internal.ads.zzgye r1 = com.google.android.gms.internal.ads.zzgye.r(r1)
            com.google.android.gms.internal.ads.zzfaq r2 = com.google.android.gms.internal.ads.zzfaq.f7167a
            com.google.android.gms.internal.ads.zzgyw r3 = r5.f7169c
            com.google.common.util.concurrent.ListenableFuture r1 = com.google.android.gms.internal.ads.zzgym.h(r1, r2, r3)
            com.google.android.gms.internal.ads.zzgye r1 = (com.google.android.gms.internal.ads.zzgye) r1
            com.google.android.gms.internal.ads.zzfao r2 = new com.google.android.gms.internal.ads.zzfao
            r2.<init>()
            java.lang.Class<java.lang.Throwable> r4 = java.lang.Throwable.class
            com.google.common.util.concurrent.ListenableFuture r1 = com.google.android.gms.internal.ads.zzgym.f(r1, r4, r2, r3)
            com.google.android.gms.internal.ads.zzgye r1 = (com.google.android.gms.internal.ads.zzgye) r1
            com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.Ob
            com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r2 = r3.a(r2)
            java.lang.Integer r2 = (java.lang.Integer) r2
            int r2 = r2.intValue()
            long r2 = (long) r2
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgym.g(r1, r2, r4, r0)
            return r0
        Lf9:
            com.google.android.gms.internal.ads.zzfas r0 = new com.google.android.gms.internal.ads.zzfas
            java.lang.String r1 = ""
            r2 = -1
            r0.<init>(r1, r2)
            com.google.common.util.concurrent.ListenableFuture r0 = com.google.android.gms.internal.ads.zzgym.a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfar.zza():com.google.common.util.concurrent.ListenableFuture");
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 56;
    }
}
