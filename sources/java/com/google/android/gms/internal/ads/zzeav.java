package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzeav implements com.google.android.gms.ads.internal.overlay.zzr, zzckn {

    /* renamed from: c, reason: collision with root package name */
    public final Context f6323c;
    public final VersionInfoParcel f;
    public zzeak g;
    public zzcir h;
    public boolean i;
    public boolean j;
    public long k;
    public com.google.android.gms.ads.internal.client.zzdn l;
    public boolean m;

    public zzeav(Context context, VersionInfoParcel versionInfoParcel) {
        this.f6323c = context;
        this.f = versionInfoParcel;
    }

    @Override // com.google.android.gms.internal.ads.zzckn
    public final synchronized void a(String str, int i, String str2, boolean z) {
        if (z) {
            com.google.android.gms.ads.internal.util.zze.zza("Ad inspector loaded.");
            this.i = true;
            c();
            return;
        }
        int i2 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector failed to load.");
        try {
            zzcda zzh = com.google.android.gms.ads.internal.zzt.zzh();
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 46 + String.valueOf(str).length() + 15 + String.valueOf(str2).length());
            sb.append("Failed to load UI. Error code: ");
            sb.append(i);
            sb.append(", Description: ");
            sb.append(str);
            sb.append(", Failing URL: ");
            sb.append(str2);
            zzh.f("InspectorUi.onAdWebViewFinishedLoading 0", new Exception(sb.toString()));
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.l;
            if (zzdnVar != null) {
                zzdnVar.zze(zzfjm.d(17, null, null));
            }
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.onAdWebViewFinishedLoading 1", e);
        }
        this.m = true;
        this.h.destroy();
    }

    public final synchronized void b(com.google.android.gms.ads.internal.client.zzdn zzdnVar, zzboi zzboiVar, zzbob zzbobVar, zzbno zzbnoVar) {
        if (!d(zzdnVar)) {
            return;
        }
        try {
            com.google.android.gms.ads.internal.zzt.zzd();
            zzcir a2 = zzcjh.a(this.f6323c, this.f, null, null, null, new zzbfj(), null, new zzclb(0, 0, 0), null, null, null, null, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, false, false);
            this.h = a2;
            zzcjc D = a2.D();
            if (D == null) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to obtain a web view for the ad inspector");
                try {
                    com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.openInspector 2", new NullPointerException("Failed to obtain a web view for the ad inspector"));
                    zzdnVar.zze(zzfjm.d(17, "Failed to obtain a web view for the ad inspector", null));
                    return;
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.openInspector 3", e);
                    return;
                }
            }
            this.l = zzdnVar;
            Context context = this.f6323c;
            D.v(null, null, null, null, null, false, null, null, null, null, null, null, null, zzboiVar, null, new zzboh(context), zzbobVar, zzbnoVar, null, null, null, null);
            D.k = this;
            this.h.loadUrl((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ma));
            com.google.android.gms.ads.internal.zzt.zzb();
            com.google.android.gms.ads.internal.overlay.zzn.zza(context, new AdOverlayInfoParcel(this, this.h, 1, this.f), true, null);
            this.k = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        } catch (zzcjg e2) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to obtain a web view for the ad inspector", e2);
            try {
                com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.openInspector 0", e2);
                zzdnVar.zze(zzfjm.d(17, "Failed to obtain a web view for the ad inspector", null));
            } catch (RemoteException e3) {
                com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.openInspector 1", e3);
            }
        }
    }

    public final synchronized void c() {
        if (this.i && this.j) {
            ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeau
                @Override // java.lang.Runnable
                public final void run() {
                    JSONObject jSONObject;
                    JSONObject jSONObject2;
                    zzeav zzeavVar = zzeav.this;
                    zzcir zzcirVar = zzeavVar.h;
                    zzeak zzeakVar = zzeavVar.g;
                    synchronized (zzeakVar) {
                        try {
                            jSONObject = new JSONObject();
                            try {
                                jSONObject.put("platform", "ANDROID");
                                String str = zzeakVar.k;
                                if (!TextUtils.isEmpty(str)) {
                                    StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
                                    sb.append("afma-sdk-a-v");
                                    sb.append(str);
                                    jSONObject.put("sdkVersion", sb.toString());
                                }
                                jSONObject.put("internalSdkVersion", zzeakVar.i);
                                jSONObject.put("osVersion", Build.VERSION.RELEASE);
                                jSONObject.put("adapters", zzeakVar.d.a());
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ma)).booleanValue()) {
                                    String str2 = com.google.android.gms.ads.internal.zzt.zzh().g;
                                    if (!TextUtils.isEmpty(str2)) {
                                        jSONObject.put("plugin", str2);
                                    }
                                }
                                if (zzeakVar.q < com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() / 1000) {
                                    zzeakVar.o = "{}";
                                }
                                jSONObject.put("networkExtras", zzeakVar.o);
                                jSONObject.put("adSlots", zzeakVar.j());
                                jSONObject.put("appInfo", zzeakVar.e.a());
                                String str3 = com.google.android.gms.ads.internal.zzt.zzh().i().zzi().e;
                                if (!TextUtils.isEmpty(str3)) {
                                    jSONObject.put("cld", new JSONObject(str3));
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ba)).booleanValue() && (jSONObject2 = zzeakVar.p) != null) {
                                    String obj = jSONObject2.toString();
                                    StringBuilder sb2 = new StringBuilder(obj.length() + 13);
                                    sb2.append("Server data: ");
                                    sb2.append(obj);
                                    String sb3 = sb2.toString();
                                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzd(sb3);
                                    jSONObject.put("serverData", zzeakVar.p);
                                }
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
                                    jSONObject.put("openAction", zzeakVar.v);
                                    jSONObject.put("gesture", zzeakVar.r);
                                }
                                jSONObject.put("isGamRegisteredTestDevice", com.google.android.gms.ads.internal.zzt.zzo().zzk());
                                com.google.android.gms.ads.internal.zzt.zzc();
                                com.google.android.gms.ads.internal.client.zzbb.zza();
                                jSONObject.put("isSimulator", com.google.android.gms.ads.internal.util.client.zzf.zzw());
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Oa)).booleanValue()) {
                                    jSONObject.put("uiStorage", new JSONObject(zzeakVar.x));
                                }
                                if (!TextUtils.isEmpty((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Qa))) {
                                    jSONObject.put("gmaDisk", zzeakVar.h.f6321a);
                                }
                                if (!TextUtils.isEmpty((CharSequence) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Pa))) {
                                    jSONObject.put("userDisk", zzeakVar.g.f6321a);
                                }
                            } catch (JSONException e) {
                                com.google.android.gms.ads.internal.zzt.zzh().g("Inspector.toJson", e);
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzj("Ad inspector encountered an error", e);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    zzcirVar.b("window.inspectorInfo", jSONObject.toString());
                }
            });
        }
    }

    public final synchronized boolean d(com.google.android.gms.ads.internal.client.zzdn zzdnVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector had an internal error.");
            try {
                zzdnVar.zze(zzfjm.d(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.g == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector had an internal error.");
            try {
                com.google.android.gms.ads.internal.zzt.zzh().f("InspectorUi.shouldOpenUi", new NullPointerException("InspectorManager null"));
                zzdnVar.zze(zzfjm.d(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.i && !this.j) {
            if (com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() >= this.k + ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.oa)).intValue()) {
                return true;
            }
        }
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Ad inspector cannot be opened because it is already open.");
        try {
            zzdnVar.zze(zzfjm.d(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzdT(int i) {
        this.h.destroy();
        if (!this.m) {
            com.google.android.gms.ads.internal.util.zze.zza("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzdn zzdnVar = this.l;
            if (zzdnVar != null) {
                try {
                    zzdnVar.zze(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.j = false;
        this.i = false;
        this.k = 0L;
        this.m = false;
        this.l = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final synchronized void zzh() {
        this.j = true;
        c();
    }
}
