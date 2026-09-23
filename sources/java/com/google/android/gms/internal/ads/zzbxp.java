package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbxp {
    public static zzccj e;

    /* renamed from: a, reason: collision with root package name */
    public final Context f4962a;
    public final AdFormat b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzek f4963c;
    public final String d;

    public zzbxp(Context context, AdFormat adFormat, com.google.android.gms.ads.internal.client.zzek zzekVar, String str) {
        this.f4962a = context;
        this.b = adFormat;
        this.f4963c = zzekVar;
        this.d = str;
    }

    public static zzccj a(Context context) {
        zzccj zzccjVar;
        synchronized (zzbxp.class) {
            try {
                if (e == null) {
                    e = com.google.android.gms.ads.internal.client.zzbb.zzb().zzj(context, new zzbsv());
                }
                zzccjVar = e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzccjVar;
    }

    public final void b(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        com.google.android.gms.ads.internal.client.zzm zza;
        long currentTimeMillis = System.currentTimeMillis();
        Context context = this.f4962a;
        zzccj a2 = a(context);
        if (a2 == null) {
            queryInfoGenerationCallback.onFailure("Internal Error, query info generator is null.");
            return;
        }
        ObjectWrapper objectWrapper = new ObjectWrapper(context);
        com.google.android.gms.ads.internal.client.zzek zzekVar = this.f4963c;
        if (zzekVar == null) {
            com.google.android.gms.ads.internal.client.zzn zznVar = new com.google.android.gms.ads.internal.client.zzn();
            zznVar.zzi(currentTimeMillis);
            zza = zznVar.zza();
        } else {
            zzekVar.zzp(currentTimeMillis);
            zza = com.google.android.gms.ads.internal.client.zzq.zza.zza(context, zzekVar);
        }
        com.google.android.gms.ads.internal.client.zzm zzmVar = zza;
        try {
            a2.zze(objectWrapper, new zzccn(this.d, this.b.name(), null, zzmVar, 0, null), new zzbxo(this, queryInfoGenerationCallback));
        } catch (RemoteException unused) {
            queryInfoGenerationCallback.onFailure("Internal Error.");
        }
    }
}
