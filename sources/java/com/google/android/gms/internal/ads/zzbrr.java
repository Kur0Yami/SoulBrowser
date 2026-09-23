package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbrr {
    public final Context b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4862c;
    public final VersionInfoParcel d;
    public final zzfnr e;
    public zzbrq h;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4861a = new Object();
    public int i = 1;
    public final com.google.android.gms.ads.internal.util.zzbc f = zzbsf.b;
    public final com.google.android.gms.ads.internal.util.zzbc g = zzbsf.f4868c;

    public zzbrr(Context context, VersionInfoParcel versionInfoParcel, String str, zzfnr zzfnrVar) {
        this.f4862c = str;
        this.b = context.getApplicationContext();
        this.d = versionInfoParcel;
        this.e = zzfnrVar;
    }

    public final zzbrq a() {
        zzfne o = a.o(this.b, 6);
        o.zza();
        final zzbrq zzbrqVar = new zzbrq(this.g);
        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before UI_THREAD_EXECUTOR");
        ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbrh
            /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzbqu, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                zzbrq zzbrqVar2 = zzbrqVar;
                zzbrr zzbrrVar = zzbrr.this;
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                ArrayList arrayList = new ArrayList();
                try {
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before createJavascriptEngine");
                    Context context = zzbrrVar.b;
                    VersionInfoParcel versionInfoParcel = zzbrrVar.d;
                    final ?? obj = new Object();
                    com.google.android.gms.ads.internal.zzt.zzd();
                    zzcir a2 = zzcjh.a(context, versionInfoParcel, null, null, null, new zzbfj(), null, new zzclb(0, 0, 0), null, null, null, null, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, false);
                    obj.f4835c = a2;
                    a2.zzE().setWillNotDraw(true);
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After createJavascriptEngine");
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before setting new engine loaded listener");
                    final zzbrf zzbrfVar = new zzbrf(currentTimeMillis, obj, zzbrqVar2, zzbrrVar, arrayList);
                    zzcir zzcirVar = obj.f4835c;
                    if (zzcirVar != null) {
                        zzcirVar.D().l = new zzcko() { // from class: com.google.android.gms.internal.ads.zzbqo
                            @Override // com.google.android.gms.internal.ads.zzcko
                            public final /* synthetic */ void zza() {
                                zzbrf zzbrfVar2 = (zzbrf) zzbql.this;
                                long currentTimeMillis2 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
                                final long j = zzbrfVar2.f4851c;
                                final ArrayList arrayList2 = zzbrfVar2.b;
                                arrayList2.add(Long.valueOf(currentTimeMillis2 - j));
                                String valueOf = String.valueOf(arrayList2.get(0));
                                StringBuilder sb = new StringBuilder(valueOf.length() + 52);
                                sb.append("LoadNewJavascriptEngine(onEngLoaded) latency is ");
                                sb.append(valueOf);
                                sb.append(" ms.");
                                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                                zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
                                final zzbrr zzbrrVar2 = zzbrfVar2.f4850a;
                                final zzbrq zzbrqVar3 = zzbrfVar2.d;
                                final zzbqu zzbquVar = zzbrfVar2.e;
                                zzfxlVar.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbrg
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        zzbrr zzbrrVar3 = zzbrrVar2;
                                        zzbrq zzbrqVar4 = zzbrqVar3;
                                        final zzbqu zzbquVar2 = zzbquVar;
                                        ArrayList arrayList3 = arrayList2;
                                        long j2 = j;
                                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Trying to acquire lock");
                                        synchronized (zzbrrVar3.f4861a) {
                                            try {
                                                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock acquired");
                                                if (zzbrqVar4.b.get() != -1 && zzbrqVar4.b.get() != 1) {
                                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F8)).booleanValue()) {
                                                        zzbrqVar4.c("SdkJavascriptFactory.loadJavascriptEngine.setLoadedListener", new TimeoutException("Unable to receive /jsLoaded GMSG."));
                                                    } else {
                                                        zzbrqVar4.b();
                                                    }
                                                    ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbrc
                                                        @Override // java.lang.Runnable
                                                        public final /* synthetic */ void run() {
                                                            zzbqu.this.zzj();
                                                        }
                                                    });
                                                    String valueOf2 = String.valueOf(com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d));
                                                    int i = zzbrqVar4.b.get();
                                                    int i2 = zzbrrVar3.i;
                                                    String valueOf3 = String.valueOf(arrayList3.get(0));
                                                    long currentTimeMillis3 = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() - j2;
                                                    StringBuilder sb2 = new StringBuilder(valueOf2.length() + 94 + String.valueOf(i).length() + 39 + String.valueOf(i2).length() + 57 + valueOf3.length() + 42 + String.valueOf(currentTimeMillis3).length() + 15);
                                                    sb2.append("Could not receive /jsLoaded in ");
                                                    sb2.append(valueOf2);
                                                    sb2.append(" ms. JS engine session reference status(onEngLoadedTimeout) is ");
                                                    sb2.append(i);
                                                    sb2.append(". Update status(onEngLoadedTimeout) is ");
                                                    sb2.append(i2);
                                                    sb2.append(". LoadNewJavascriptEngine(onEngLoadedTimeout) latency is ");
                                                    sb2.append(valueOf3);
                                                    sb2.append(" ms. Total latency(onEngLoadedTimeout) is ");
                                                    sb2.append(currentTimeMillis3);
                                                    sb2.append(" ms. Rejecting.");
                                                    com.google.android.gms.ads.internal.util.zze.zza(sb2.toString());
                                                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released");
                                                    return;
                                                }
                                                com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > newEngine.setLoadedListener(postDelayed): Lock released, the promise is already settled");
                                            } catch (Throwable th) {
                                                throw th;
                                            }
                                        }
                                    }
                                }, ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d)).intValue());
                            }
                        };
                    }
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /jsLoaded");
                    obj.i0("/jsLoaded", new zzbqw(zzbrrVar, currentTimeMillis, zzbrqVar2, obj));
                    com.google.android.gms.ads.internal.util.zzbv zzbvVar = new com.google.android.gms.ads.internal.util.zzbv();
                    zzbqx zzbqxVar = new zzbqx(zzbrrVar, obj, zzbvVar);
                    zzbvVar.zzb(zzbqxVar);
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before registering GmsgHandler for /requestReload");
                    if (!((Boolean) zzbik.d.c()).booleanValue() || TextUtils.equals(zzbrrVar.b.getPackageName(), "com.google.android.gms")) {
                        obj.i0("/requestReload", zzbqxVar);
                    }
                    final String str = zzbrrVar.f4862c;
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > javascriptPath: ".concat(String.valueOf(str)));
                    if (str.endsWith(".js")) {
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadJavascript");
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascript on adWebView from path: ".concat(str));
                        final String str2 = "<!DOCTYPE html><html><head><script src=\"" + str + "\"></script></head><body></body></html>";
                        zzbqu.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqp
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcir zzcirVar2 = zzbqu.this.f4835c;
                                if (zzcirVar2 != null) {
                                    zzcirVar2.loadData(str2, "text/html", "UTF-8");
                                }
                            }
                        });
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadJavascript");
                    } else if (str.startsWith("<html>")) {
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtml");
                        com.google.android.gms.ads.internal.util.zze.zza("loadHtml on adWebView from html");
                        zzbqu.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqq
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcir zzcirVar2 = zzbqu.this.f4835c;
                                if (zzcirVar2 != null) {
                                    zzcirVar2.loadData(str, "text/html", "UTF-8");
                                }
                            }
                        });
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtml");
                    } else {
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before newEngine.loadHtmlWrapper");
                        com.google.android.gms.ads.internal.util.zze.zza("loadHtmlWrapper on adWebView from path: ".concat(str));
                        zzbqu.i(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbqr
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzcir zzcirVar2 = zzbqu.this.f4835c;
                                if (zzcirVar2 != null) {
                                    zzcirVar2.loadUrl(str);
                                }
                            }
                        });
                        com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > After newEngine.loadHtmlWrapper");
                    }
                    com.google.android.gms.ads.internal.util.zze.zza("loadJavascriptEngine > Before calling ADMOB_UI_HANDLER.postDelayed");
                    com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new zzbqz(currentTimeMillis, obj, zzbrqVar2, zzbrrVar, arrayList), ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e)).intValue());
                } catch (Throwable th) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Error creating webview.", th);
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F8)).booleanValue()) {
                        zzbrqVar2.c("SdkJavascriptFactory.loadJavascriptEngine.createJavascriptEngine", th);
                        return;
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.H8)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzh().g("SdkJavascriptFactory.loadJavascriptEngine", th);
                        zzbrqVar2.b();
                    } else {
                        com.google.android.gms.ads.internal.zzt.zzh().f("SdkJavascriptFactory.loadJavascriptEngine", th);
                        zzbrqVar2.b();
                    }
                }
            }
        });
        com.google.android.gms.ads.internal.util.zze.zza("loadNewJavascriptEngine: Promise created");
        zzbrqVar.a(new zzbra(this, zzbrqVar, o), new zzbrb(this, zzbrqVar, o));
        return zzbrqVar;
    }

    public final zzbrl b() {
        com.google.android.gms.ads.internal.util.zze.zza("getEngine: Trying to acquire lock");
        Object obj = this.f4861a;
        synchronized (obj) {
            try {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine: Lock acquired");
                com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Trying to acquire lock");
                synchronized (obj) {
                    try {
                        com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock acquired");
                        zzbrq zzbrqVar = this.h;
                        if (zzbrqVar != null && this.i == 0) {
                            zzbrqVar.a(new zzcdx() { // from class: com.google.android.gms.internal.ads.zzbrd
                                @Override // com.google.android.gms.internal.ads.zzcdx
                                public final /* synthetic */ void zza(Object obj2) {
                                    zzbrr zzbrrVar = zzbrr.this;
                                    zzbrrVar.getClass();
                                    if (((zzbqm) obj2).zzk()) {
                                        zzbrrVar.i = 1;
                                    }
                                }
                            }, zzbre.f4849a);
                        }
                    } finally {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        com.google.android.gms.ads.internal.util.zze.zza("refreshIfDestroyed: Lock released");
        zzbrq zzbrqVar2 = this.h;
        if (zzbrqVar2 != null && zzbrqVar2.b.get() != -1) {
            int i = this.i;
            if (i == 0) {
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (NO_UPDATE): Lock released");
                return this.h.d();
            }
            if (i == 1) {
                this.i = 2;
                a();
                com.google.android.gms.ads.internal.util.zze.zza("getEngine (PENDING_UPDATE): Lock released");
                return this.h.d();
            }
            com.google.android.gms.ads.internal.util.zze.zza("getEngine (UPDATING): Lock released");
            return this.h.d();
        }
        this.i = 2;
        this.h = a();
        com.google.android.gms.ads.internal.util.zze.zza("getEngine (NULL or REJECTED): Lock released");
        return this.h.d();
    }
}
