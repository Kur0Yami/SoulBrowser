package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzels implements zzelm {

    /* renamed from: a, reason: collision with root package name */
    public final zzdlv f6649a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzdqf f6650c;
    public final zzfjj d;
    public final zzdsv e;
    public final zzdwy f;
    public final VersionInfoParcel g;
    public final Context h;

    public zzels(zzdlv zzdlvVar, zzgyw zzgywVar, zzdqf zzdqfVar, zzfjj zzfjjVar, zzdsv zzdsvVar, zzdwy zzdwyVar, VersionInfoParcel versionInfoParcel, Context context, zzcbg zzcbgVar) {
        this.g = versionInfoParcel;
        this.h = context;
        this.f6649a = zzdlvVar;
        this.b = zzgywVar;
        this.f6650c = zzdqfVar;
        this.d = zzfjjVar;
        this.e = zzdsvVar;
        this.f = zzdwyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K2)).booleanValue()) {
            androidx.work.impl.workers.a.z("rendering-native-ads-native-js-webview-start", this.f.e);
        }
        ListenableFuture b = this.d.b();
        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzelr
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                final zzdsp zzdspVar = (zzdsp) obj;
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K2)).booleanValue();
                final zzels zzelsVar = zzels.this;
                if (booleanValue) {
                    androidx.work.impl.workers.a.z("rendering-native-ads-preprocess-start", zzelsVar.f.e);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("isNonagon", true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.S9)).booleanValue() && PlatformVersion.isAtLeastR()) {
                    jSONObject.put("skipDeepLinkValidation", true);
                }
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("response", zzfhrVar.s.f7375c);
                jSONObject2.put("sdk_params", jSONObject);
                return zzgym.h(zzdspVar.a(jSONObject2, "google.afma.nativeAds.preProcessJson"), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzelo
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final ListenableFuture zza(Object obj2) {
                        zzels zzelsVar2 = zzels.this;
                        zzdsp zzdspVar2 = zzdspVar;
                        JSONObject jSONObject3 = (JSONObject) obj2;
                        zzfjj zzfjjVar = zzelsVar2.d;
                        ListenableFuture a2 = zzgym.a(zzdspVar2);
                        synchronized (zzfjjVar) {
                            zzfjjVar.f7413a.addFirst(a2);
                        }
                        if (jSONObject3.optBoolean("success")) {
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.K2)).booleanValue()) {
                                androidx.work.impl.workers.a.z("rendering-native-ads-preprocess-end", zzelsVar2.f.e);
                            }
                            return zzgym.a(jSONObject3.getJSONObject("json").getJSONArray("ads"));
                        }
                        throw new Exception("process json failed");
                    }
                }, zzelsVar.b);
            }
        };
        zzgyw zzgywVar = this.b;
        return zzgym.h(zzgym.h(b, zzgxuVar, zzgywVar), new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeln
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                JSONArray jSONArray = (JSONArray) obj;
                if (jSONArray.length() == 0) {
                    return zzgym.b(new zzebr(3));
                }
                zzfic zzficVar2 = zzficVar;
                int i = zzficVar2.f7383a.f7378a.l;
                zzels zzelsVar = zzels.this;
                zzfhr zzfhrVar2 = zzfhrVar;
                if (i > 1) {
                    int length = jSONArray.length();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.M2)).booleanValue()) {
                        zzelsVar.f.b("nsl", String.valueOf(length));
                    }
                    zzelsVar.d.a(Math.min(length, i));
                    ArrayList arrayList = new ArrayList(i);
                    for (int i2 = 0; i2 < i; i2++) {
                        if (i2 < length) {
                            arrayList.add(zzelsVar.c(zzficVar2, zzfhrVar2, jSONArray.getJSONObject(i2)));
                        } else {
                            arrayList.add(zzgym.b(new zzebr(3)));
                        }
                    }
                    return zzgym.a(arrayList);
                }
                return zzgym.i(zzelsVar.c(zzficVar2, zzfhrVar2, jSONArray.getJSONObject(0)), zzelp.f6645a, zzelsVar.b);
            }
        }, zzgywVar);
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        zzfhw zzfhwVar = zzfhrVar.s;
        if (zzfhwVar != null && zzfhwVar.f7375c != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x03bd A[EDGE_INSN: B:110:0x03bd->B:111:0x03bd BREAK  A[LOOP:0: B:40:0x035f->B:108:0x03ba], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0323  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01bc  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0206  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x026f  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0365  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x03d3  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x04a6  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x03e1  */
    /* JADX WARN: Type inference failed for: r6v14, types: [com.google.android.gms.internal.ads.zzgxu, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v47, types: [com.google.android.gms.internal.ads.zzgxu, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.common.util.concurrent.ListenableFuture c(final com.google.android.gms.internal.ads.zzfic r32, final com.google.android.gms.internal.ads.zzfhr r33, final org.json.JSONObject r34) {
        /*
            Method dump skipped, instructions count: 1416
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzels.c(com.google.android.gms.internal.ads.zzfic, com.google.android.gms.internal.ads.zzfhr, org.json.JSONObject):com.google.common.util.concurrent.ListenableFuture");
    }
}
