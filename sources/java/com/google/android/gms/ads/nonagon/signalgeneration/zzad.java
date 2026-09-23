package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbid;
import com.google.android.gms.internal.ads.zzccg;
import com.google.android.gms.internal.ads.zzccn;
import com.google.android.gms.internal.ads.zzfne;
import com.google.android.gms.internal.ads.zzfno;
import com.google.android.gms.internal.ads.zzgyj;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzad implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ListenableFuture f3213a;
    public final /* synthetic */ zzccn b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzccg f3214c;
    public final /* synthetic */ zzfne d;
    public final /* synthetic */ zzau e;

    public zzad(zzau zzauVar, ListenableFuture listenableFuture, zzccn zzccnVar, zzccg zzccgVar, zzfne zzfneVar) {
        this.f3213a = listenableFuture;
        this.b = zzccnVar;
        this.f3214c = zzccgVar;
        this.d = zzfneVar;
        this.e = zzauVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        JSONObject jSONObject;
        zzau zzauVar = this.e;
        AtomicBoolean atomicBoolean = zzauVar.F;
        zzbj zzbjVar = (zzbj) obj;
        zzfno l5 = zzau.l5(this.f3213a, this.b);
        atomicBoolean.set(true);
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.A8)).booleanValue();
        zzccg zzccgVar = this.f3214c;
        zzfne zzfneVar = this.d;
        if (!booleanValue) {
            if (zzccgVar != null) {
                try {
                    zzccgVar.a("QueryInfo generation has been disabled.");
                } catch (RemoteException e) {
                    String concat = "QueryInfo generation has been disabled.".concat(e.toString());
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf(concat);
                }
            }
            if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                zzfneVar.zzk("QueryInfo generation has been disabled.");
                zzfneVar.zzd(false);
                l5.a(zzfneVar);
                l5.h();
                return;
            }
            return;
        }
        try {
            try {
                if (zzbjVar == null) {
                    if (zzccgVar != null) {
                        zzccgVar.W4(null, null, null);
                    }
                    zzfneVar.zzd(true);
                    if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                        l5.a(zzfneVar);
                        l5.h();
                        return;
                    }
                    return;
                }
                try {
                    if (!TextUtils.isEmpty(zzbjVar.zzc)) {
                        jSONObject = new JSONObject(zzbjVar.zzc);
                    } else {
                        jSONObject = new JSONObject(zzbjVar.zzb);
                    }
                    if (TextUtils.isEmpty(jSONObject.optString("request_id", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
                        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("The request ID is empty in request JSON.");
                        if (zzccgVar != null) {
                            zzccgVar.a("Internal error: request ID is empty in request JSON.");
                        }
                        zzfneVar.zzk("Request ID empty");
                        zzfneVar.zzd(false);
                        if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                            l5.a(zzfneVar);
                            l5.h();
                            return;
                        }
                        return;
                    }
                    Bundle bundle = zzbjVar.zzf;
                    boolean z = zzauVar.t;
                    String str = zzauVar.u;
                    String str2 = zzauVar.v;
                    if (z && bundle != null && bundle.getInt(str2, -1) == -1) {
                        bundle.putInt(str2, zzauVar.w.get());
                    }
                    if (zzauVar.s && bundle != null && TextUtils.isEmpty(bundle.getString(str))) {
                        if (TextUtils.isEmpty(zzauVar.y)) {
                            zzauVar.y = com.google.android.gms.ads.internal.zzt.zzc().zze(zzauVar.f, zzauVar.x.afmaVersion);
                        }
                        bundle.putString(str, zzauVar.y);
                    }
                    if (zzccgVar != null) {
                        if (!TextUtils.isEmpty(zzbjVar.zzc)) {
                            zzccgVar.W4(zzbjVar.zza, bundle, zzbjVar.zzc);
                        } else {
                            zzccgVar.W4(zzbjVar.zza, bundle, zzbjVar.zzb);
                        }
                    }
                    zzfneVar.zzd(true);
                    if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                        l5.a(zzfneVar);
                        l5.h();
                    }
                } catch (JSONException e2) {
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to create JSON object from the request string.");
                    if (zzccgVar != null) {
                        String obj2 = e2.toString();
                        StringBuilder sb = new StringBuilder(obj2.length() + 33);
                        sb.append("Internal error for request JSON: ");
                        sb.append(obj2);
                        zzccgVar.a(sb.toString());
                    }
                    zzfneVar.a(e2);
                    zzfneVar.zzd(false);
                    com.google.android.gms.ads.internal.zzt.zzh().f("SignalGeneratorImpl.generateSignals.onSuccess", e2);
                    if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                        l5.a(zzfneVar);
                        l5.h();
                    }
                }
            } catch (RemoteException e3) {
                zzfneVar.a(e3);
                zzfneVar.zzd(false);
                int i4 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e3);
                com.google.android.gms.ads.internal.zzt.zzh().f("SignalGeneratorImpl.generateSignals.onSuccess", e3);
                if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                    l5.a(zzfneVar);
                    l5.h();
                }
            }
        } catch (Throwable th) {
            if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
                l5.a(zzfneVar);
                l5.h();
            }
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        String message = th.getMessage();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.G8)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().g("SignalGeneratorImpl.generateSignals", th);
        } else {
            com.google.android.gms.ads.internal.zzt.zzh().f("SignalGeneratorImpl.generateSignals", th);
        }
        zzfno l5 = zzau.l5(this.f3213a, this.b);
        if (((Boolean) zzbid.e.c()).booleanValue() && l5 != null) {
            zzfne zzfneVar = this.d;
            zzfneVar.a(th);
            zzfneVar.zzd(false);
            l5.a(zzfneVar);
            l5.h();
        }
        zzccg zzccgVar = this.f3214c;
        if (zzccgVar == null) {
            return;
        }
        try {
            if (!"Unknown format is no longer supported.".equals(message)) {
                StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 16);
                sb.append("Internal error. ");
                sb.append(message);
                message = sb.toString();
            }
            zzccgVar.a(message);
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }
}
