package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfaw implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7175a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f7176c;
    public final boolean d;
    public final boolean e;
    public final zzccs f;

    public zzfaw(zzccs zzccsVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, boolean z, boolean z2) {
        this.f = zzccsVar;
        this.f7175a = context;
        this.b = scheduledExecutorService;
        this.f7176c = executor;
        this.d = z;
        this.e = z2;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        zzcdt zzcdtVar = new zzcdt();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        Context context = this.f7175a;
        if (com.google.android.gms.ads.internal.util.client.zzf.zzy(context)) {
            ((zzcdn) zzcdo.f5068a).execute(new zzccr(this.f, context, zzcdtVar));
        }
        zzgye r = zzgye.r(zzcdtVar);
        zzgpr zzgprVar = new zzgpr() { // from class: com.google.android.gms.internal.ads.zzfav
            /* JADX WARN: Code restructure failed: missing block: B:23:0x0033, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.V3)).booleanValue() == false) goto L22;
             */
            /* JADX WARN: Code restructure failed: missing block: B:4:0x0020, code lost:
            
                if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.U3)).booleanValue() == false) goto L22;
             */
            @Override // com.google.android.gms.internal.ads.zzgpr
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object apply(java.lang.Object r9) {
                /*
                    r8 = this;
                    com.google.android.gms.internal.ads.zzfaw r0 = com.google.android.gms.internal.ads.zzfaw.this
                    com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r9 = (com.google.android.gms.ads.identifier.AdvertisingIdClient.Info) r9
                    r0.getClass()
                    com.google.android.gms.internal.ads.zzfzf r1 = new com.google.android.gms.internal.ads.zzfzf
                    r1.<init>()
                    boolean r2 = r0.d
                    if (r2 != 0) goto L23
                    com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.U3
                    com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
                    java.lang.Object r2 = r3.a(r2)
                    java.lang.Boolean r2 = (java.lang.Boolean) r2
                    boolean r2 = r2.booleanValue()
                    if (r2 != 0) goto L36
                    goto L7d
                L23:
                    com.google.android.gms.internal.ads.zzbgb r2 = com.google.android.gms.internal.ads.zzbgk.V3
                    com.google.android.gms.internal.ads.zzbgi r3 = com.google.android.gms.ads.internal.client.zzbd.zzc()
                    java.lang.Object r2 = r3.a(r2)
                    java.lang.Boolean r2 = (java.lang.Boolean) r2
                    boolean r2 = r2.booleanValue()
                    if (r2 != 0) goto L36
                    goto L7d
                L36:
                    android.content.Context r1 = r0.f7175a     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    com.google.android.gms.internal.ads.zzfzj r2 = com.google.android.gms.internal.ads.zzfzj.f(r1)     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    j$.util.Objects.requireNonNull(r9)     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    java.lang.String r3 = r9.getId()     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    j$.util.Objects.requireNonNull(r3)     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    java.lang.String r4 = r1.getPackageName()     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    com.google.android.gms.internal.ads.zzbgb r1 = com.google.android.gms.internal.ads.zzbgk.a4     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    com.google.android.gms.internal.ads.zzbgi r5 = com.google.android.gms.ads.internal.client.zzbd.zzc()     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    java.lang.Object r1 = r5.a(r1)     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    java.lang.Long r1 = (java.lang.Long) r1     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    long r5 = r1.longValue()     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    boolean r7 = r0.e     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    r2.getClass()     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    java.lang.Class<com.google.android.gms.internal.ads.zzfzj> r1 = com.google.android.gms.internal.ads.zzfzj.class
                    monitor-enter(r1)     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                    com.google.android.gms.internal.ads.zzfzf r0 = r2.a(r3, r4, r5, r7)     // Catch: java.lang.Throwable -> L69
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L69
                    r1 = r0
                    goto L7d
                L69:
                    r0 = move-exception
                    monitor-exit(r1)     // Catch: java.lang.Throwable -> L69
                    throw r0     // Catch: java.lang.IllegalArgumentException -> L6c java.io.IOException -> L6e
                L6c:
                    r0 = move-exception
                    goto L6f
                L6e:
                    r0 = move-exception
                L6f:
                    java.lang.String r1 = "AdIdInfoSignalSource.getPaidV1"
                    com.google.android.gms.internal.ads.zzcda r2 = com.google.android.gms.ads.internal.zzt.zzh()
                    r2.f(r1, r0)
                    com.google.android.gms.internal.ads.zzfzf r1 = new com.google.android.gms.internal.ads.zzfzf
                    r1.<init>()
                L7d:
                    com.google.android.gms.internal.ads.zzfax r0 = new com.google.android.gms.internal.ads.zzfax
                    r2 = 0
                    r0.<init>(r9, r2, r1)
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfav.apply(java.lang.Object):java.lang.Object");
            }
        };
        Executor executor = this.f7176c;
        return (zzgye) zzgym.e((zzgye) zzgym.g((zzgye) zzgym.i(r, zzgprVar, executor), ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A1)).longValue(), TimeUnit.MILLISECONDS, this.b), Throwable.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzfau
            @Override // com.google.android.gms.internal.ads.zzgpr
            public final /* synthetic */ Object apply(Object obj) {
                String string;
                zzfaw zzfawVar = zzfaw.this;
                zzfawVar.getClass();
                com.google.android.gms.ads.internal.client.zzbb.zza();
                ContentResolver contentResolver = zzfawVar.f7175a.getContentResolver();
                if (contentResolver == null) {
                    string = null;
                } else {
                    string = Settings.Secure.getString(contentResolver, "android_id");
                }
                return new zzfax(null, string, new zzfzf());
            }
        }, executor);
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 40;
    }
}
