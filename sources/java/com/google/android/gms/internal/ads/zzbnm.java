package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbnm {

    /* renamed from: a, reason: collision with root package name */
    public static final zzbnn f4781a = null;
    public static final zzbnn b = null;

    /* renamed from: c, reason: collision with root package name */
    public static final zzbnn f4782c = null;
    public static final zzbnn f = null;
    public static final zzbnn i = null;
    public static final zzbnn d = new Object();
    public static final zzbnn e = new Object();
    public static final zzbnn g = new Object();
    public static final zzbnn h = new Object();
    public static final zzbnn j = new Object();
    public static final zzbnn k = new Object();
    public static final zzcgl l = new Object();
    public static final zzcgm m = new Object();
    public static final zzbmg n = new Object();
    public static final zzboe o = new zzboe();
    public static final zzbnn p = new Object();
    public static final zzbnn q = new Object();
    public static final zzbnn r = new Object();
    public static final zzbnn s = new Object();
    public static final zzbnn t = new Object();
    public static final zzbnn u = new Object();
    public static final zzbnn v = new Object();
    public static final zzbnn w = new Object();
    public static final zzbnn x = new Object();
    public static final zzbnn y = new Object();
    public static final zzbnn z = new Object();
    public static final zzbnn A = new Object();
    public static final zzbnn B = new Object();
    public static final zzbnn C = new Object();

    public static ListenableFuture a(zzcir zzcirVar, String str) {
        final String str2;
        Uri parse = Uri.parse(str);
        try {
            zzayq c2 = zzcirVar.c();
            zzfio Y = zzcirVar.Y();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.qd)).booleanValue() && Y != null) {
                if (c2 != null && c2.a(parse)) {
                    parse = Y.a(parse, zzcirVar.getContext(), zzcirVar.zzE(), zzcirVar.zzj());
                }
            } else if (c2 != null && c2.a(parse)) {
                parse = c2.b(parse, zzcirVar.getContext(), zzcirVar.zzE(), zzcirVar.zzj());
            }
        } catch (zzayr unused) {
            String concat = "Unable to append parameter to URL: ".concat(str);
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
        }
        Map hashMap = new HashMap();
        if (zzcirVar.zzC() != null) {
            hashMap = zzcirVar.zzC().w0;
        }
        Context context = zzcirVar.getContext();
        if (!com.google.android.gms.ads.internal.zzt.zzD().a(context)) {
            str2 = parse.toString();
        } else {
            String d2 = com.google.android.gms.ads.internal.zzt.zzD().d(context);
            if (d2 == null) {
                str2 = parse.toString();
            } else {
                String str3 = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.O0);
                String uri = parse.toString();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N0)).booleanValue() && uri.contains(str3)) {
                    zzcbw zzD = com.google.android.gms.ads.internal.zzt.zzD();
                    Map map = (Map) hashMap.get("_ac");
                    zzD.getClass();
                    zzD.h(context, "_ac", d2, zzcbw.f(map));
                    str2 = zzcby.c(context, uri).replace(str3, d2);
                } else {
                    if (TextUtils.isEmpty(parse.getQueryParameter("fbs_aeid"))) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M0)).booleanValue()) {
                            String uri2 = zzcby.b(zzcby.c(context, uri), "fbs_aeid", d2).toString();
                            zzcbw zzD2 = com.google.android.gms.ads.internal.zzt.zzD();
                            Map map2 = (Map) hashMap.get("_ac");
                            zzD2.getClass();
                            zzD2.h(context, "_ac", d2, zzcbw.f(map2));
                            str2 = uri2;
                        }
                    }
                    str2 = uri;
                }
            }
        }
        long longValue = ((Long) zzbij.e.c()).longValue();
        if (longValue > 0 && longValue <= 254380000) {
            zzgye r2 = zzgye.r(zzcirVar.w());
            zzgyw zzgywVar = zzcdo.g;
            return (zzgye) zzgym.e((zzgye) zzgym.i((zzgye) zzgym.e(r2, Throwable.class, zzbne.f4773a, zzgywVar), new zzgpr() { // from class: com.google.android.gms.internal.ads.zzbnf
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    String str4 = (String) obj;
                    zzbnn zzbnnVar = zzbnm.f4781a;
                    String str5 = str2;
                    if (str4 != null) {
                        if (((Boolean) zzbij.f.c()).booleanValue()) {
                            String[] strArr = {".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"};
                            String host = Uri.parse(str5).getHost();
                            for (int i3 = 0; i3 < 3; i3++) {
                                if (!host.endsWith(strArr[i3])) {
                                }
                            }
                        }
                        String str6 = (String) zzbij.f4713a.c();
                        String str7 = (String) zzbij.b.c();
                        if (!TextUtils.isEmpty(str6)) {
                            str5 = str5.replace(str6, str4);
                        }
                        if (!TextUtils.isEmpty(str7)) {
                            Uri parse2 = Uri.parse(str5);
                            if (TextUtils.isEmpty(parse2.getQueryParameter(str7))) {
                                return parse2.buildUpon().appendQueryParameter(str7, str4).toString();
                            }
                        }
                    }
                    return str5;
                }
            }, zzgywVar), Throwable.class, new zzgpr() { // from class: com.google.android.gms.internal.ads.zzbng
                @Override // com.google.android.gms.internal.ads.zzgpr
                public final /* synthetic */ Object apply(Object obj) {
                    Throwable th = (Throwable) obj;
                    zzbnn zzbnnVar = zzbnm.f4781a;
                    if (((Boolean) zzbij.i.c()).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzh().f("prepareClickUrl.attestation2", th);
                    }
                    return str2;
                }
            }, zzgywVar);
        }
        return zzgym.a(str2);
    }

    public static void b(Map map, zzdir zzdirVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.dc)).booleanValue() && map.containsKey("sc") && ((String) map.get("sc")).equals("1") && zzdirVar != null) {
            zzdirVar.P();
        }
    }
}
