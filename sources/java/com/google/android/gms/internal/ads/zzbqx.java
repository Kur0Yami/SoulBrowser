package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbqx implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbqu f4838a;
    public final /* synthetic */ com.google.android.gms.ads.internal.util.zzbv b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbrr f4839c;

    public zzbqx(zzbrr zzbrrVar, zzbqu zzbquVar, com.google.android.gms.ads.internal.util.zzbv zzbvVar) {
        this.f4838a = zzbquVar;
        this.b = zzbvVar;
        this.f4839c = zzbrrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Trying to acquire lock");
        zzbrr zzbrrVar = this.f4839c;
        synchronized (zzbrrVar.f4861a) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock acquired");
                com.google.android.gms.ads.internal.util.client.zzo.zzh("JS Engine is requesting an update");
                if (zzbrrVar.i == 0) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzh("Starting reload.");
                    zzbrrVar.i = 2;
                    zzbrrVar.a();
                }
                this.f4838a.U("/requestReload", (zzbnn) this.b.zza());
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > /requestReload handler: Lock released");
    }
}
