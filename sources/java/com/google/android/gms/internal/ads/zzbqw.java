package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbqw implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ long f4836a;
    public final /* synthetic */ zzbrq b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbqu f4837c;
    public final /* synthetic */ zzbrr d;

    public zzbqw(zzbrr zzbrrVar, long j, zzbrq zzbrqVar, zzbqu zzbquVar) {
        this.f4836a = j;
        this.b = zzbrqVar;
        this.f4837c = zzbquVar;
        this.d = zzbrrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - this.f4836a;
        StringBuilder sb = new StringBuilder(String.valueOf(currentTimeMillis).length() + 42);
        sb.append("onGmsg /jsLoaded. JsLoaded latency is ");
        sb.append(currentTimeMillis);
        sb.append(" ms.");
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock");
        zzbrr zzbrrVar = this.d;
        synchronized (zzbrrVar.f4861a) {
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock acquired");
            zzbrq zzbrqVar = this.b;
            if (zzbrqVar.b.get() != -1 && zzbrqVar.b.get() != 1) {
                zzbrrVar.i = 0;
                zzbqu zzbquVar = this.f4837c;
                zzbquVar.i0("/log", zzbnm.g);
                zzbquVar.i0("/result", zzbnm.o);
                zzbrqVar.f5076a.a(zzbquVar);
                zzbrrVar.h = zzbrqVar;
                com.google.android.gms.ads.internal.util.zze.zza("Successfully loaded JS Engine.");
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released");
                return;
            }
            com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled");
        }
    }
}
