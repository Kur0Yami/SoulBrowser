package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class zzbfo {

    /* renamed from: a, reason: collision with root package name */
    public zzbcg f4619a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f4620c;

    public zzbfo() {
        this.f4620c = com.google.android.gms.ads.internal.util.client.zzb.zzb;
    }

    public zzbfo(final Context context) {
        ExecutorService executorService = com.google.android.gms.ads.internal.util.client.zzb.zzb;
        this.f4620c = executorService;
        executorService.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbfk
            @Override // java.lang.Runnable
            public final void run() {
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Y5)).booleanValue();
                Context context2 = context;
                zzbfo zzbfoVar = zzbfo.this;
                if (booleanValue) {
                    try {
                        zzbfoVar.f4619a = (zzbcg) com.google.android.gms.ads.internal.util.client.zzs.zza(context2, "com.google.android.gms.ads.clearcut.DynamiteClearcutLogger", zzbfl.f4615a);
                        zzbfoVar.f4619a.C(new ObjectWrapper(context2));
                        zzbfoVar.b = true;
                    } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException unused) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Cannot dynamite load clearcut");
                    }
                }
            }
        });
    }
}
