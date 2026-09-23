package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.app.Application;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.view.WindowManager;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Timer;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzeiv implements zzeiw {
    public static zzfru j(String str) {
        if ("native".equals(str)) {
            return zzfru.NATIVE;
        }
        if ("javascript".equals(str)) {
            return zzfru.JAVASCRIPT;
        }
        return zzfru.NONE;
    }

    public static zzfrp k(String str) {
        int hashCode = str.hashCode();
        if (hashCode != -1104128070) {
            if (hashCode != 1318088141) {
                if (hashCode == 1988248512 && str.equals("onePixel")) {
                    return zzfrp.ONE_PIXEL;
                }
            } else if (str.equals("definedByJavascript")) {
                return zzfrp.DEFINED_BY_JAVASCRIPT;
            }
        } else if (str.equals("beginToRender")) {
            return zzfrp.BEGIN_TO_RENDER;
        }
        return zzfrp.UNSPECIFIED;
    }

    public static zzfrm l(String str) {
        int hashCode = str.hashCode();
        if (hashCode != -382745961) {
            if (hashCode != 112202875) {
                if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                    return zzfrm.NATIVE_DISPLAY;
                }
                return null;
            }
            if (str.equals("video")) {
                return zzfrm.VIDEO;
            }
            return null;
        }
        if (str.equals("htmlDisplay")) {
            return zzfrm.HTML_DISPLAY;
        }
        return null;
    }

    public static final Object m(zzeiu zzeiuVar) {
        try {
            return zzeiuVar.zza();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzh().g("omid exception", e);
            return null;
        }
    }

    public static final void n(Runnable runnable) {
        try {
            runnable.run();
        } catch (RuntimeException e) {
            com.google.android.gms.ads.internal.zzt.zzh().g("omid exception", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void a(final zzfrt zzfrtVar, final View view) {
        n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeis
            @Override // java.lang.Runnable
            public final void run() {
                zzfrt zzfrtVar2 = zzfrt.this;
                Iterator it = zzfrtVar2.d.values().iterator();
                while (true) {
                    boolean hasNext = it.hasNext();
                    View view2 = view;
                    zzfro zzfroVar = zzfro.f7601c;
                    if (hasNext) {
                        ((zzfrh) it.next()).c(view2, zzfroVar);
                    } else {
                        zzfrtVar2.e.a(view2, zzfroVar);
                        return;
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void b(final zzfrl zzfrlVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
            n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeij
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzfrl.this.d();
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final zzejb c(final WebView webView, final zzeix zzeixVar, final zzeiy zzeiyVar, final String str, final String str2, final String str3, final String str4) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
            return (zzejb) m(new zzeiu() { // from class: com.google.android.gms.internal.ads.zzeim
                @Override // com.google.android.gms.internal.ads.zzeiu
                public final Object zza() {
                    String str5 = str3;
                    if (!TextUtils.isEmpty(str5)) {
                        String str6 = str;
                        if (!TextUtils.isEmpty(str6)) {
                            zzfrv zzfrvVar = new zzfrv(str5, str6);
                            zzfru j = zzeiv.j("javascript");
                            String str7 = str2;
                            zzfru j2 = zzeiv.j(str7);
                            zzeix zzeixVar2 = zzeixVar;
                            zzfrm l = zzeiv.l(zzeixVar2.f6547c);
                            zzfru zzfruVar = zzfru.NONE;
                            if (j == zzfruVar) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Unable to parse impression owner: javascript");
                                return null;
                            }
                            if (l == null) {
                                String valueOf = String.valueOf(zzeixVar2);
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Unable to parse creative type: ".concat(valueOf));
                                return null;
                            }
                            if (l == zzfrm.VIDEO && j2 == zzfruVar) {
                                String valueOf2 = String.valueOf(str7);
                                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid js session error; Video events owner unknown for video creative: ".concat(valueOf2));
                                return null;
                            }
                            zzfrj zzfrjVar = new zzfrj(zzfrvVar, webView, str4, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzfrk.JAVASCRIPT);
                            zzfri a2 = zzfri.a(l, zzeiv.k(zzeiyVar.f6548c), j, j2, true);
                            if (zzfrf.f7590a.f7591a) {
                                return new zzejb(new zzfrl(a2, zzfrjVar, UUID.randomUUID().toString()), zzfrjVar);
                            }
                            throw new IllegalStateException("Method called before OM SDK activation");
                        }
                        throw new IllegalArgumentException("Version is null or empty");
                    }
                    throw new IllegalArgumentException("Name is null or empty");
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void d(final zzfrl zzfrlVar) {
        n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzein
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
                    zzfrl.this.b();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void e(final zzfrl zzfrlVar, final View view) {
        n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeip
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
                    zzfrl.this.a(view);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final zzejb f(final WebView webView, final zzeix zzeixVar, final zzeiy zzeiyVar, final String str, final String str2, final String str3) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
            return (zzejb) m(new zzeiu() { // from class: com.google.android.gms.internal.ads.zzeil
                @Override // com.google.android.gms.internal.ads.zzeiu
                public final Object zza() {
                    if (!TextUtils.isEmpty("Google")) {
                        String str4 = str;
                        if (!TextUtils.isEmpty(str4)) {
                            zzfrv zzfrvVar = new zzfrv("Google", str4);
                            zzfru j = zzeiv.j("javascript");
                            zzeix zzeixVar2 = zzeixVar;
                            zzfrm l = zzeiv.l(zzeixVar2.f6547c);
                            zzfru zzfruVar = zzfru.NONE;
                            if (j == zzfruVar) {
                                int i = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Unable to parse impression owner: javascript");
                                return null;
                            }
                            if (l == null) {
                                String valueOf = String.valueOf(zzeixVar2);
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Unable to parse creative type: ".concat(valueOf));
                                return null;
                            }
                            String str5 = str2;
                            zzfru j2 = zzeiv.j(str5);
                            if (l == zzfrm.VIDEO && j2 == zzfruVar) {
                                String valueOf2 = String.valueOf(str5);
                                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid html session error; Video events owner unknown for video creative: ".concat(valueOf2));
                                return null;
                            }
                            zzfrj zzfrjVar = new zzfrj(zzfrvVar, webView, str3, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, zzfrk.HTML);
                            zzfri a2 = zzfri.a(l, zzeiv.k(zzeiyVar.f6548c), j, j2, true);
                            if (zzfrf.f7590a.f7591a) {
                                return new zzejb(new zzfrl(a2, zzfrjVar, UUID.randomUUID().toString()), zzfrjVar);
                            }
                            throw new IllegalStateException("Method called before OM SDK activation");
                        }
                        throw new IllegalArgumentException("Version is null or empty");
                    }
                    throw new IllegalArgumentException("Name is null or empty");
                }
            });
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void g(final zzfrt zzfrtVar, final zzfrs zzfrsVar) {
        n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeir
            @Override // java.lang.Runnable
            public final void run() {
                zzfrt zzfrtVar2 = zzfrt.this;
                Iterator it = zzfrtVar2.d.values().iterator();
                while (it.hasNext()) {
                    ((zzfrh) it.next()).b();
                }
                Timer timer = new Timer();
                timer.schedule(new zzfrq(zzfrtVar2, zzfrsVar, timer), 1000L);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final zzfrt h(final VersionInfoParcel versionInfoParcel, final WebView webView) {
        return (zzfrt) m(new zzeiu() { // from class: com.google.android.gms.internal.ads.zzeiq
            @Override // com.google.android.gms.internal.ads.zzeiu
            public final Object zza() {
                VersionInfoParcel versionInfoParcel2 = VersionInfoParcel.this;
                int i = versionInfoParcel2.buddyApkVersion;
                int i2 = versionInfoParcel2.clientJarVersion;
                StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 1 + String.valueOf(i2).length());
                sb.append(i);
                sb.append(".");
                sb.append(i2);
                String sb2 = sb.toString();
                if (!TextUtils.isEmpty("Google")) {
                    if (!TextUtils.isEmpty(sb2)) {
                        return new zzfrt(new zzfrv("Google", sb2), webView);
                    }
                    throw new IllegalArgumentException("Version is null or empty");
                }
                throw new IllegalArgumentException("Name is null or empty");
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final void i(final zzfrl zzfrlVar, final View view) {
        n(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeio
            @Override // java.lang.Runnable
            public final void run() {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue() && zzfrf.f7590a.f7591a) {
                    zzfrl.this.c(view, zzfro.f7601c);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final boolean zza(final Context context) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Omid flag is disabled");
            return false;
        }
        Boolean bool = (Boolean) m(new zzeiu() { // from class: com.google.android.gms.internal.ads.zzeit
            @Override // com.google.android.gms.internal.ads.zzeiu
            public final Object zza() {
                boolean z;
                zzfrg zzfrgVar = zzfrf.f7590a;
                if (zzfrgVar.f7591a) {
                    return Boolean.TRUE;
                }
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    if (!zzfrgVar.f7591a) {
                        zzfrgVar.f7591a = true;
                        zzfsn a2 = zzfsn.a();
                        a2.getClass();
                        a2.b = new zzfsb(new Handler(), applicationContext, a2);
                        boolean z2 = applicationContext instanceof Application;
                        if (z2) {
                            ((Application) applicationContext).registerActivityLifecycleCallbacks(zzfse.h);
                        }
                        zzfta.f7639a = (UiModeManager) applicationContext.getSystemService("uimode");
                        WindowManager windowManager = zzftb.f7640a;
                        zzftb.f7641c = applicationContext.getResources().getDisplayMetrics().density;
                        zzftb.f7640a = (WindowManager) applicationContext.getSystemService("window");
                        applicationContext.registerReceiver(new BroadcastReceiver(), new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"));
                        zzfsk.b.f7623a = applicationContext.getApplicationContext();
                        zzfsd zzfsdVar = zzfsd.e;
                        if (!zzfsdVar.b) {
                            zzfsh zzfshVar = zzfsdVar.f7616c;
                            if (z2) {
                                ((Application) applicationContext).registerActivityLifecycleCallbacks(zzfshVar);
                            }
                            zzfshVar.g = zzfsdVar;
                            zzfshVar.f7619c = true;
                            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
                            ActivityManager.getMyMemoryState(runningAppProcessInfo);
                            if (runningAppProcessInfo.importance == 100) {
                                z = true;
                            } else {
                                z = false;
                            }
                            zzfshVar.f = z;
                            zzfsdVar.d = zzfshVar.f;
                            zzfsdVar.b = true;
                        }
                        zzfsp.d.f7629a = new WeakReference(applicationContext);
                        IntentFilter intentFilter = new IntentFilter("android.intent.action.SCREEN_OFF");
                        intentFilter.addAction("android.intent.action.SCREEN_ON");
                        applicationContext.registerReceiver(new zzfso(), intentFilter);
                    }
                    return Boolean.valueOf(zzfrgVar.f7591a);
                }
                throw new IllegalArgumentException("Application Context cannot be null");
            }
        });
        if (bool == null || !bool.booleanValue()) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzeiw
    public final String zzb() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e6)).booleanValue()) {
            return null;
        }
        return (String) m(zzeik.f6535a);
    }
}
