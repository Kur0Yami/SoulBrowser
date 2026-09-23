package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzfjg {
    public static zzfjg d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f7410a;
    public final com.google.android.gms.ads.internal.client.zzcy b;

    /* renamed from: c, reason: collision with root package name */
    public final AtomicReference f7411c = new AtomicReference();

    public zzfjg(Context context, com.google.android.gms.ads.internal.client.zzcy zzcyVar) {
        this.f7410a = context;
        this.b = zzcyVar;
    }

    public static zzfjg a(Context context) {
        synchronized (zzfjg.class) {
            try {
                zzfjg zzfjgVar = d;
                if (zzfjgVar != null) {
                    return zzfjgVar;
                }
                Context applicationContext = context.getApplicationContext();
                long longValue = ((Long) zzbil.b.c()).longValue();
                com.google.android.gms.ads.internal.client.zzcy zzcyVar = null;
                if (longValue > 0 && longValue <= 254380000) {
                    try {
                        zzcyVar = com.google.android.gms.ads.internal.client.zzcx.asInterface((IBinder) applicationContext.getClassLoader().loadClass("com.google.android.gms.ads.internal.client.LiteSdkInfo").getConstructor(Context.class).newInstance(applicationContext));
                    } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException | NoSuchMethodException | InvocationTargetException e) {
                        int i = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Failed to retrieve lite SDK info.", e);
                    }
                }
                zzfjg zzfjgVar2 = new zzfjg(applicationContext, zzcyVar);
                d = zzfjgVar2;
                return zzfjgVar2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x001e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.google.android.gms.internal.ads.zzbsz r4) {
        /*
            r3 = this;
            com.google.android.gms.internal.ads.zzbhu r0 = com.google.android.gms.internal.ads.zzbil.f4717a
            java.lang.Object r0 = r0.c()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            java.util.concurrent.atomic.AtomicReference r1 = r3.f7411c
            r2 = 0
            if (r0 == 0) goto L2d
            com.google.android.gms.ads.internal.client.zzcy r0 = r3.b
            if (r0 != 0) goto L17
        L15:
            r0 = r2
            goto L1b
        L17:
            com.google.android.gms.internal.ads.zzbsz r0 = r0.getAdapterCreator()     // Catch: android.os.RemoteException -> L15
        L1b:
            if (r0 == 0) goto L1e
            goto L1f
        L1e:
            r0 = r4
        L1f:
            boolean r4 = r1.compareAndSet(r2, r0)
            if (r4 == 0) goto L26
            goto L3a
        L26:
            java.lang.Object r4 = r1.get()
            if (r4 == 0) goto L1f
            goto L3a
        L2d:
            boolean r0 = r1.compareAndSet(r2, r4)
            if (r0 == 0) goto L34
            goto L3a
        L34:
            java.lang.Object r0 = r1.get()
            if (r0 == 0) goto L2d
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfjg.b(com.google.android.gms.internal.ads.zzbsz):void");
    }
}
