package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzbqz implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbrq f4841c;
    public final /* synthetic */ zzbqu f;
    public final /* synthetic */ ArrayList g;
    public final /* synthetic */ long h;
    public final /* synthetic */ zzbrr i;

    public zzbqz(long j, zzbqu zzbquVar, zzbrq zzbrqVar, zzbrr zzbrrVar, ArrayList arrayList) {
        this.f4841c = zzbrqVar;
        this.f = zzbquVar;
        this.g = arrayList;
        this.h = j;
        this.i = zzbrrVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String sb;
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Trying to acquire lock");
        zzbrr zzbrrVar = this.i;
        synchronized (zzbrrVar.f4861a) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock acquired");
                zzbrq zzbrqVar = this.f4841c;
                if (zzbrqVar.b.get() != -1 && zzbrqVar.b.get() != 1) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F8)).booleanValue()) {
                        zzbrqVar.c("SdkJavascriptFactory.loadJavascriptEngine.Runnable", new TimeoutException("Unable to fully load JS engine."));
                    } else {
                        zzbrqVar.b();
                    }
                    zzgyw zzgywVar = zzcdo.f;
                    final zzbqu zzbquVar = this.f;
                    ((zzcdn) zzgywVar).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqy
                        @Override // java.lang.Runnable
                        public final /* synthetic */ void run() {
                            zzbqu.this.zzj();
                        }
                    });
                    String valueOf = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e));
                    int i = zzbrqVar.b.get();
                    int i2 = zzbrrVar.i;
                    ArrayList arrayList = this.g;
                    if (arrayList.isEmpty()) {
                        sb = ". Still waiting for the engine to be loaded";
                    } else {
                        String valueOf2 = String.valueOf(arrayList.get(0));
                        StringBuilder sb2 = new StringBuilder(valueOf2.length() + 88);
                        sb2.append(". While waiting for the /jsLoaded gmsg, observed the loadNewJavascriptEngine latency is ");
                        sb2.append(valueOf2);
                        sb = sb2.toString();
                    }
                    long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.h;
                    StringBuilder sb3 = new StringBuilder(valueOf.length() + 107 + String.valueOf(i).length() + 36 + String.valueOf(i2).length() + sb.length() + 39 + String.valueOf(currentTimeMillis).length() + 26);
                    sb3.append("Could not finish the full JS engine loading in ");
                    sb3.append(valueOf);
                    sb3.append(" ms. JS engine session reference status(fullLoadTimeout) is ");
                    sb3.append(i);
                    sb3.append(". Update status(fullLoadTimeout) is ");
                    sb3.append(i2);
                    sb3.append(sb);
                    sb3.append(" ms. Total latency(fullLoadTimeout) is ");
                    sb3.append(currentTimeMillis);
                    sb3.append(" ms at timeout. Rejecting.");
                    com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released");
                    return;
                }
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > ADMOB_UI_HANDLER.postDelayed: Lock released, the promise is already settled");
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
