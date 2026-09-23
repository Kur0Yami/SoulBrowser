package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.webkit.WebViewFeature;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzdwk implements zzddq, zzdby, zzdan, zzdjd {

    /* renamed from: c, reason: collision with root package name */
    public final zzdwy f6206c;
    public final zzdxj f;
    public final int g;

    public zzdwk(zzdwy zzdwyVar, zzdxj zzdxjVar, int i) {
        this.f6206c = zzdwyVar;
        this.f = zzdxjVar;
        this.g = i;
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(zzfic zzficVar) {
        String str;
        zzdwy zzdwyVar = this.f6206c;
        zzdwyVar.getClass();
        zzfib zzfibVar = zzficVar.b;
        List list = zzfibVar.f7381a;
        if (!list.isEmpty()) {
            int i = ((zzfhr) list.get(0)).b;
            zzdwyVar.b("ad_format", zzfhr.a(i));
            if (i == 6) {
                ConcurrentHashMap concurrentHashMap = zzdwyVar.f6219a;
                if (true != zzdwyVar.b.k) {
                    str = "0";
                } else {
                    str = "1";
                }
                concurrentHashMap.put("as", str);
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K2)).booleanValue()) {
            zzdwyVar.b("mwl", Integer.toString(list.size()));
        }
        zzdwyVar.b("gqi", zzfibVar.b.b);
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzdwy zzdwyVar = this.f6206c;
        zzdwyVar.f6219a.put("action", "ftl");
        zzdwyVar.b("ftl", String.valueOf(zzeVar.zza));
        zzdwyVar.b("ed", zzeVar.zzc);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.b8)).booleanValue()) {
            zzdwyVar.b("emsg", zzeVar.zzb);
        }
        zzdwyVar.c();
        this.f.a(zzdwyVar.f6219a, false);
    }

    public final void a(Bundle bundle, zzgtd zzgtdVar) {
        String str;
        String str2;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I2)).booleanValue() && bundle != null) {
            androidx.work.impl.workers.a.z("public-api-callback", bundle);
            zzdwy zzdwyVar = this.f6206c;
            zzdwyVar.getClass();
            String str3 = "1";
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ge)).booleanValue()) {
                if (true == zzdwyVar.f6220c.q) {
                    str2 = "1";
                } else {
                    str2 = "0";
                }
                zzdwyVar.b("brr", str2);
            }
            if (bundle.containsKey("ls")) {
                if (true == bundle.getBoolean("ls")) {
                    str = "1";
                } else {
                    str = "0";
                }
                zzdwyVar.b("ls", str);
            }
            int size = zzgtdVar.size();
            for (int i = 0; i < size; i++) {
                zzdwn zzdwnVar = (zzdwn) zzgtdVar.get(i);
                long j = bundle.getLong(zzdwnVar.b.f6209c, -1L);
                long j2 = bundle.getLong(zzdwnVar.f6211c.f6209c, -1L);
                if (j > 0 && j2 > 0) {
                    zzdwyVar.b(zzdwnVar.f6210a, String.valueOf(j2 - j));
                }
            }
            b(bundle.getBundle("client_sig_latency_key"));
            b(bundle.getBundle("gms_sig_latency_key"));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t8)).booleanValue()) {
                if (bundle.containsKey("sod_h")) {
                    if (true != bundle.getBoolean("sod_h")) {
                        str3 = "0";
                    }
                    zzdwyVar.b("sod_h", str3);
                }
                if (bundle.containsKey("cmr")) {
                    zzdwyVar.b("cmr", String.valueOf(bundle.getInt("cmr")));
                }
            }
        }
    }

    public final void b(Bundle bundle) {
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                long j = bundle.getLong(str);
                if (j >= 0) {
                    this.f6206c.b(str, String.valueOf(j));
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
        this.f6206c.a(zzbzaVar.f4979c);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x00bb  */
    @Override // com.google.android.gms.internal.ads.zzdjd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj r9) {
        /*
            r8 = this;
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.M7
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L13
            return
        L13:
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.t8
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            com.google.android.gms.internal.ads.zzdwy r1 = r8.f6206c
            if (r0 == 0) goto L34
            j$.util.concurrent.ConcurrentHashMap r0 = r1.f6219a
            java.lang.String r2 = "sgw"
            int r3 = r8.g
            java.lang.String r3 = java.lang.String.valueOf(r3)
            r0.put(r2, r3)
        L34:
            java.lang.String r0 = "sgs"
            r2 = 0
            com.google.android.gms.internal.ads.zzdxj r3 = r8.f
            java.lang.String r4 = "action"
            if (r9 != 0) goto L4d
            j$.util.concurrent.ConcurrentHashMap r9 = r1.f6219a
            r9.put(r4, r0)
            java.lang.String r0 = "request_id"
            java.lang.String r1 = "-1"
            r9.put(r0, r1)
            r3.a(r9, r2)
            return
        L4d:
            com.google.android.gms.internal.ads.zzbza r5 = r9.zzd
            android.os.Bundle r6 = r9.zze
            if (r5 == 0) goto L5b
            android.os.Bundle r5 = r5.q
            com.google.android.gms.internal.ads.zzgtd r6 = com.google.android.gms.internal.ads.zzdwn.d
            r8.a(r5, r6)
            goto L68
        L5b:
            if (r6 == 0) goto L68
            boolean r5 = r6.isEmpty()
            if (r5 != 0) goto L68
            com.google.android.gms.internal.ads.zzgtd r5 = com.google.android.gms.internal.ads.zzdwn.d
            r8.a(r6, r5)
        L68:
            java.lang.String r5 = r9.zzc     // Catch: org.json.JSONException -> Lc7
            boolean r5 = android.text.TextUtils.isEmpty(r5)     // Catch: org.json.JSONException -> Lc7
            if (r5 == 0) goto L73
            java.lang.String r5 = r9.zzb     // Catch: org.json.JSONException -> Lc7
            goto L75
        L73:
            java.lang.String r5 = r9.zzc     // Catch: org.json.JSONException -> Lc7
        L75:
            org.json.JSONObject r6 = new org.json.JSONObject     // Catch: org.json.JSONException -> Lc7
            r6.<init>(r5)     // Catch: org.json.JSONException -> Lc7
            j$.util.concurrent.ConcurrentHashMap r5 = r1.f6219a
            j$.util.concurrent.ConcurrentHashMap r7 = r1.f6219a
            r5.put(r4, r0)
            com.google.android.gms.internal.ads.zzbgb r0 = com.google.android.gms.internal.ads.zzbgk.Za
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r0 = r4.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lb0
            java.lang.String r0 = "extras"
            org.json.JSONObject r0 = r6.getJSONObject(r0)     // Catch: org.json.JSONException -> La4
            java.lang.String r4 = "accept_3p_cookie"
            boolean r0 = r0.getBoolean(r4)     // Catch: org.json.JSONException -> La4
            if (r0 == 0) goto La6
            java.lang.String r0 = "1"
            goto Lb2
        La4:
            r0 = move-exception
            goto La9
        La6:
            java.lang.String r0 = "0"
            goto Lb2
        La9:
            int r4 = com.google.android.gms.ads.internal.util.zze.zza
            java.lang.String r4 = "Error retrieving JSONObject from the requestJson, "
            com.google.android.gms.ads.internal.util.client.zzo.zzg(r4, r0)
        Lb0:
            java.lang.String r0 = "na"
        Lb2:
            java.lang.String r4 = "tpc"
            r7.put(r4, r0)
            com.google.android.gms.internal.ads.zzbza r9 = r9.zzd
            if (r9 == 0) goto Lc0
            android.os.Bundle r9 = r9.f4979c
            r1.a(r9)
        Lc0:
            r1.c()
            r3.a(r7, r2)
            return
        Lc7:
            j$.util.concurrent.ConcurrentHashMap r9 = r1.f6219a
            java.lang.String r0 = "sgf"
            r9.put(r4, r0)
            java.lang.String r0 = "sgf_reason"
            java.lang.String r1 = "request_invalid"
            r9.put(r0, r1)
            r3.a(r9, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdwk.zzd(com.google.android.gms.ads.nonagon.signalgeneration.zzbj):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdjd
    public final void zze(String str) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M7)).booleanValue()) {
            return;
        }
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t8)).booleanValue();
        zzdwy zzdwyVar = this.f6206c;
        if (booleanValue) {
            zzdwyVar.f6219a.put("sgw", String.valueOf(this.g));
        }
        zzdwyVar.f6219a.put("action", "sgf");
        zzdwyVar.b("sgf_reason", str);
        zzdwyVar.c();
        this.f.a(zzdwyVar.f6219a, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        String str;
        zzdwy zzdwyVar = this.f6206c;
        ConcurrentHashMap concurrentHashMap = zzdwyVar.f6219a;
        ConcurrentHashMap concurrentHashMap2 = zzdwyVar.f6219a;
        concurrentHashMap.put("action", "loaded");
        a(zzdwyVar.e, zzdwn.e);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Xd)).booleanValue()) {
            if (true != WebViewFeature.a("MUTE_AUDIO")) {
                str = "0";
            } else {
                str = "1";
            }
            concurrentHashMap2.put("mafe", str);
        }
        zzdwyVar.c();
        this.f.a(concurrentHashMap2, false);
    }
}
