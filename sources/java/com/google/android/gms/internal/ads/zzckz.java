package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import androidx.webkit.ProfileStore;
import androidx.webkit.WebViewFeature;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzckz {

    /* renamed from: a, reason: collision with root package name */
    public final zzckq f5230a;
    public final zzdxe b;

    public zzckz(zzckq zzckqVar, zzdxe zzdxeVar) {
        this.f5230a = zzckqVar;
        this.b = zzdxeVar;
    }

    public final void a(final Context context, final VersionInfoParcel versionInfoParcel) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.nf)).booleanValue()) {
            return;
        }
        Executor executor = zzcdo.f5068a;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.pf)).booleanValue()) {
            zzcky zzckyVar = new zzcky(((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.rf)).intValue());
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qf)).intValue();
            executor = new ThreadPoolExecutor(intValue, intValue, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), zzckyVar);
        }
        executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckw
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                com.google.android.gms.ads.internal.zzt.zzc().zze(context, versionInfoParcel.afmaVersion);
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.of)).booleanValue();
                final zzckz zzckzVar = zzckz.this;
                if (booleanValue) {
                    long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - elapsedRealtime;
                    zzdxd a2 = zzckzVar.b.a();
                    a2.b("action", "webview_startup_l");
                    StringBuilder sb = new StringBuilder(String.valueOf(elapsedRealtime2).length());
                    sb.append(elapsedRealtime2);
                    a2.b("webview_startup_l", sb.toString());
                    a2.c();
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.uf)).booleanValue() && Build.VERSION.SDK_INT >= 24) {
                    ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzckv
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzckz zzckzVar2 = zzckz.this;
                            zzdxe zzdxeVar = zzckzVar2.b;
                            zzcku zzckuVar = new zzcku(zzckzVar2, com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime());
                            zzckq zzckqVar = zzckzVar2.f5230a;
                            zzckqVar.getClass();
                            if (WebViewFeature.a("MULTI_PROFILE")) {
                                ProfileStore profileStore = null;
                                try {
                                    profileStore = (ProfileStore) ProfileStore.class.getDeclaredMethod("getInstance", null).invoke(null, null);
                                } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalStateException | NoSuchMethodException | InvocationTargetException e) {
                                    String valueOf = String.valueOf(e.getMessage());
                                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Unable to get ProfileStore instance: ".concat(valueOf));
                                    try {
                                        profileStore = (ProfileStore) androidx.webkit.a.class.getDeclaredMethod("getInstance", null).invoke(null, null);
                                    } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | IllegalStateException | NoSuchMethodException | InvocationTargetException e2) {
                                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Unable to get ProfileStore instance: ".concat(String.valueOf(e2.getMessage())));
                                    }
                                }
                                if (profileStore != null) {
                                    zzckqVar.f5221a = profileStore.getOrCreateProfile("GMA_WEBVIEW_PROFILE");
                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sf)).booleanValue()) {
                                        long elapsedRealtime3 = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - zzckuVar.f5225a;
                                        zzdxd a3 = zzdxeVar.a();
                                        a3.b("action", "webview_p_l");
                                        a3.b("webview_p_l", Long.toString(elapsedRealtime3));
                                        a3.c();
                                        return;
                                    }
                                    return;
                                }
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzi("WebViewCompat failure: No instance");
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.sf)).booleanValue()) {
                                    zzdxd a4 = zzdxeVar.a();
                                    a4.b("action", "webview_p_f");
                                    a4.b("webview_p_f", "No instance");
                                    a4.c();
                                    return;
                                }
                                return;
                            }
                            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzd("WebViewFeature.MULTI_PROFILE is not supported");
                        }
                    });
                }
            }
        });
    }
}
