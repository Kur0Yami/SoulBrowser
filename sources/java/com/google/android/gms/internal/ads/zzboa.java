package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.SystemClock;
import android.view.View;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzboa implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.zzb f4796a;
    public final zzdxe b;
    public final zzbvx d;
    public final zzehu e;
    public final zzcra f;
    public final zzczj g;

    /* renamed from: c, reason: collision with root package name */
    public com.google.android.gms.ads.internal.util.client.zzu f4797c = null;
    public com.google.android.gms.ads.internal.overlay.zzaa h = null;
    public final zzgyw i = zzcdo.g;

    public zzboa(com.google.android.gms.ads.internal.zzb zzbVar, zzbvx zzbvxVar, zzehu zzehuVar, zzdxe zzdxeVar, zzcra zzcraVar, zzczj zzczjVar) {
        this.f4796a = zzbVar;
        this.d = zzbvxVar;
        this.e = zzehuVar;
        this.b = zzdxeVar;
        this.f = zzcraVar;
        this.g = zzczjVar;
    }

    public static int b(Map map) {
        String str = (String) map.get("o");
        if (str != null) {
            if ("p".equalsIgnoreCase(str)) {
                return 7;
            }
            if ("l".equalsIgnoreCase(str)) {
                return 6;
            }
            if ("c".equalsIgnoreCase(str)) {
                return 14;
            }
            return -1;
        }
        return -1;
    }

    public static Uri c(Context context, zzayq zzayqVar, Uri uri, View view, Activity activity, zzfio zzfioVar) {
        if (zzayqVar != null) {
            try {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qd)).booleanValue() && zzfioVar != null) {
                    if (zzayqVar.c(uri)) {
                        return zzfioVar.a(uri, context, view, activity);
                    }
                } else if (zzayqVar.c(uri)) {
                    return zzayqVar.b(uri, context, view, activity);
                }
            } catch (zzayr unused) {
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("OpenGmsgHandler.maybeAddClickSignalsToUri", e);
            }
        }
        return uri;
    }

    public static Uri d(Uri uri) {
        try {
            if (uri.getQueryParameter("aclk_ms") != null) {
                return uri.buildUpon().appendQueryParameter("aclk_upms", String.valueOf(SystemClock.uptimeMillis())).build();
            }
            return uri;
        } catch (UnsupportedOperationException e) {
            String valueOf = String.valueOf(uri.toString());
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error adding click uptime parameter to url: ".concat(valueOf), e);
            return uri;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        ListenableFuture a2;
        zzcra zzcraVar;
        com.google.android.gms.ads.internal.client.zza zzaVar = (com.google.android.gms.ads.internal.client.zza) obj;
        String str = (String) map.get("u");
        Map hashMap = new HashMap();
        zzcir zzcirVar = (zzcir) zzaVar;
        if (zzcirVar.zzC() != null) {
            hashMap = zzcirVar.zzC().w0;
        }
        String a3 = zzcby.a(str, zzcirVar.getContext(), true, hashMap);
        String str2 = (String) map.get("a");
        if (str2 == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Action missing from an open GMSG.");
            return;
        }
        com.google.android.gms.ads.internal.zzb zzbVar = this.f4796a;
        if (zzbVar != null && !zzbVar.zzb()) {
            zzbVar.zzc(a3);
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue() && (zzcraVar = this.f) != null && zzcra.b(a3)) {
            a2 = zzcraVar.a(a3, com.google.android.gms.ads.internal.client.zzbb.zzh());
        } else {
            a2 = zzgym.a(a3);
        }
        a2.k(new zzgyk(a2, new zzbnw(this, map, zzaVar, str2)), this.i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0080, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.L9)).booleanValue() != false) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ec, code lost:
    
        if (r2 != false) goto L55;
     */
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, com.google.android.gms.internal.ads.zzehk] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(com.google.android.gms.ads.internal.client.zza r10, android.content.Context r11, java.lang.String r12, java.lang.String r13) {
        /*
            Method dump skipped, instructions count: 370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzboa.e(com.google.android.gms.ads.internal.client.zza, android.content.Context, java.lang.String, java.lang.String):boolean");
    }

    public final void f(Context context, String str, String str2) {
        zzehu zzehuVar = this.e;
        zzehuVar.b(str);
        zzdxe zzdxeVar = this.b;
        if (zzdxeVar != null) {
            zzgrz.a("dialog_not_shown_reason", str2);
            zzeif.d5(context, zzdxeVar, zzehuVar, str, "dialog_not_shown", zzgvd.e(1, new Object[]{"dialog_not_shown_reason", str2}, null));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x0112, code lost:
    
        if (com.google.android.gms.internal.ads.zzbnz.a(r13, new java.util.ArrayList(), r6) == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0155, code lost:
    
        r6 = r13;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g(com.google.android.gms.ads.internal.client.zza r17, java.util.Map r18, boolean r19, java.lang.String r20, boolean r21, boolean r22) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzboa.g(com.google.android.gms.ads.internal.client.zza, java.util.Map, boolean, java.lang.String, boolean, boolean):void");
    }

    public final void h(boolean z) {
        zzbvx zzbvxVar = this.d;
        if (zzbvxVar != null) {
            zzbvxVar.f(z);
        }
    }

    public final void i(int i) {
        zzdxe zzdxeVar;
        String str;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w5)).booleanValue() && (zzdxeVar = this.b) != null) {
            zzdxd a2 = zzdxeVar.a();
            a2.b("action", "cct_action");
            switch (i) {
                case 2:
                    str = "CONTEXT_NOT_AN_ACTIVITY";
                    break;
                case 3:
                    str = "CONTEXT_NULL";
                    break;
                case 4:
                    str = "CCT_NOT_SUPPORTED";
                    break;
                case 5:
                    str = "CCT_READY_TO_OPEN";
                    break;
                case 6:
                    str = "ACTIVITY_NOT_FOUND";
                    break;
                case 7:
                    str = "EMPTY_URL";
                    break;
                case 8:
                    str = "UNKNOWN";
                    break;
                case 9:
                    str = "WRONG_EXP_SETUP";
                    break;
                default:
                    str = "OPT_OUT";
                    break;
            }
            a2.b("cct_open_status", str);
            a2.c();
        }
    }
}
