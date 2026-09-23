package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicLong;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzdmg implements zzdnu {
    public com.google.android.gms.ads.internal.client.zzdf G;
    public final zzdcz H;
    public final zzdon I;
    public final com.google.android.gms.ads.internal.zzb J;
    public final zzcze K;

    /* renamed from: c, reason: collision with root package name */
    public final Context f5904c;
    public final zzdnw f;
    public final JSONObject g;
    public final zzdsp h;
    public final zzdnm i;
    public final zzayq j;
    public final zzdbc k;
    public final zzdai l;
    public final zzdip m;
    public final zzfhr n;
    public final VersionInfoParcel o;
    public final zzfik p;
    public final zzcrx q;
    public final zzdor r;
    public final Clock s;
    public final zzdil t;
    public final zzfpi u;
    public final zzduf v;
    public final zzfno w;
    public final zzeif x;
    public boolean z;
    public boolean y = false;
    public boolean A = false;
    public boolean B = false;
    public Point C = new Point();
    public Point D = new Point();
    public long E = 0;
    public long F = 0;

    public zzdmg(Context context, zzdnw zzdnwVar, JSONObject jSONObject, zzdsp zzdspVar, zzdnm zzdnmVar, zzayq zzayqVar, zzdbc zzdbcVar, zzdai zzdaiVar, zzdip zzdipVar, zzfhr zzfhrVar, VersionInfoParcel versionInfoParcel, zzfik zzfikVar, zzcrx zzcrxVar, zzdor zzdorVar, Clock clock, zzdil zzdilVar, zzfpi zzfpiVar, zzfno zzfnoVar, zzeif zzeifVar, zzduf zzdufVar, zzdon zzdonVar, zzdcz zzdczVar, com.google.android.gms.ads.internal.zzb zzbVar, zzcze zzczeVar) {
        this.f5904c = context;
        this.f = zzdnwVar;
        this.g = jSONObject;
        this.h = zzdspVar;
        this.i = zzdnmVar;
        this.j = zzayqVar;
        this.k = zzdbcVar;
        this.l = zzdaiVar;
        this.m = zzdipVar;
        this.n = zzfhrVar;
        this.o = versionInfoParcel;
        this.p = zzfikVar;
        this.q = zzcrxVar;
        this.r = zzdorVar;
        this.s = clock;
        this.t = zzdilVar;
        this.u = zzfpiVar;
        this.w = zzfnoVar;
        this.x = zzeifVar;
        this.v = zzdufVar;
        this.I = zzdonVar;
        this.H = zzdczVar;
        this.J = zzbVar;
        this.K = zzczeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void A() {
        v(null, null, null, null, null, null, false, null);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void a(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.C = new Point();
        this.D = new Point();
        if (!this.z) {
            this.t.t0(view);
            this.z = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        zzcrx zzcrxVar = this.q;
        zzcrxVar.getClass();
        zzcrxVar.n = new WeakReference(this);
        boolean zza = com.google.android.gms.ads.internal.util.zzbs.zza(this.o.clientJarVersion);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (zza) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (zza) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void b(View view) {
        if (!this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        } else {
            if (view == null) {
                return;
            }
            zzdor zzdorVar = this.r;
            view.setOnClickListener(zzdorVar);
            view.setClickable(true);
            zzdorVar.k = new WeakReference(view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void c(final zzblp zzblpVar) {
        if (!this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        final zzdor zzdorVar = this.r;
        zzdsp zzdspVar = zzdorVar.f5971c;
        zzdorVar.g = zzblpVar;
        zzbnn zzbnnVar = zzdorVar.h;
        if (zzbnnVar != null) {
            zzdspVar.c("/unconfirmedClick", zzbnnVar);
        }
        zzbnn zzbnnVar2 = new zzbnn() { // from class: com.google.android.gms.internal.ads.zzdoq
            @Override // com.google.android.gms.internal.ads.zzbnn
            public final /* synthetic */ void a(Map map, Object obj) {
                zzdor zzdorVar2 = zzdor.this;
                try {
                    zzdorVar2.j = Long.valueOf(Long.parseLong((String) map.get("timestamp")));
                } catch (NumberFormatException unused) {
                    int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf("Failed to call parse unconfirmedClickTimestamp.");
                }
                zzdorVar2.i = (String) map.get("id");
                String str = (String) map.get("asset_id");
                zzblp zzblpVar2 = zzblpVar;
                if (zzblpVar2 == null) {
                    int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Received unconfirmed click but UnconfirmedClickListener is null.");
                } else {
                    try {
                        zzblpVar2.zze(str);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                    }
                }
            }
        };
        zzdorVar.h = zzbnnVar2;
        zzdspVar.b("/unconfirmedClick", zzbnnVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void d(com.google.android.gms.ads.internal.client.zzdf zzdfVar) {
        this.G = zzdfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void e(MotionEvent motionEvent, View view) {
        this.C = com.google.android.gms.ads.internal.util.zzbs.zzh(motionEvent, view);
        long currentTimeMillis = this.s.currentTimeMillis();
        this.F = currentTimeMillis;
        if (motionEvent.getAction() == 0) {
            this.v.f6152a = motionEvent;
            this.E = currentTimeMillis;
            this.D = this.C;
        }
        MotionEvent obtain = MotionEvent.obtain(motionEvent);
        Point point = this.C;
        obtain.setLocation(point.x, point.y);
        this.j.b.zzd(obtain);
        obtain.recycle();
        u();
    }

    public final boolean f(String str) {
        JSONObject optJSONObject = this.g.optJSONObject("allow_pub_event_reporting");
        if (optJSONObject == null || !optJSONObject.optBoolean(str, false)) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void g() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.g);
            zzcdr.a(this.h.a(jSONObject, "google.afma.nativeAds.handleDownloadedImpression"), "Error during performing handleDownloadedImpression");
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final JSONObject h(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.f5904c;
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbs.zze(context, map, map2, view, scaleType);
        JSONObject zzb = com.google.android.gms.ads.internal.util.zzbs.zzb(context, view);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbs.zzc(view);
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbs.zzd(context, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", zze);
            jSONObject.put("ad_view_signal", zzb);
            jSONObject.put("scroll_view_signal", zzc);
            jSONObject.put("lock_screen_signal", zzd);
            return jSONObject;
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to create native ad view signals JSON.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void i(String str) {
        x(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void j(Bundle bundle) {
        String str;
        if (bundle == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Click data is null. No click is reported.");
        } else {
            if (!f("click_reporting")) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
                return;
            }
            Bundle bundle2 = bundle.getBundle("click_signal");
            if (bundle2 != null) {
                str = bundle2.getString("asset_id");
            } else {
                str = null;
            }
            x(null, null, null, null, null, str, null, com.google.android.gms.ads.internal.client.zzbb.zza().zzl(bundle, null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void k(View view, View view2, Map map, Map map2, boolean z, ImageView.ScaleType scaleType) {
        View view3;
        Context context = this.f5904c;
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbs.zze(context, map, map2, view2, scaleType);
        JSONObject zzb = com.google.android.gms.ads.internal.util.zzbs.zzb(context, view2);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbs.zzc(view2);
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbs.zzd(context, view2);
        String q = q(view, map);
        JSONObject zzf = com.google.android.gms.ads.internal.util.zzbs.zzf(q, context, this.D, this.C);
        if (true == ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.x4)).booleanValue()) {
            view3 = view2;
        } else {
            view3 = view;
        }
        x(view3, zzb, zze, zzc, zzd, q, zzf, null, z, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void l(View view) {
        this.C = new Point();
        this.D = new Point();
        if (view != null) {
            zzdil zzdilVar = this.t;
            synchronized (zzdilVar) {
                WeakHashMap weakHashMap = zzdilVar.f;
                if (weakHashMap.containsKey(view)) {
                    ((zzbcm) weakHashMap.get(view)).p.remove(zzdilVar);
                    weakHashMap.remove(view);
                }
            }
        }
        this.z = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void m(com.google.android.gms.ads.internal.client.zzdj zzdjVar) {
        com.google.android.gms.ads.internal.client.zzez zzezVar;
        zzfno zzfnoVar = this.w;
        zzfhr zzfhrVar = this.n;
        zzfpi zzfpiVar = this.u;
        try {
            if (this.A) {
                return;
            }
            if (zzdjVar == null) {
                zzdnm zzdnmVar = this.i;
                synchronized (zzdnmVar) {
                    zzezVar = zzdnmVar.g;
                }
                if (zzezVar != null) {
                    this.A = true;
                    zzfpiVar.b(zzdnmVar.e().zzf(), zzfhrVar.x0, zzfnoVar, null);
                    y();
                    return;
                }
            }
            this.A = true;
            zzfpiVar.b(zzdjVar.zzf(), zzfhrVar.x0, zzfnoVar, null);
            y();
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final JSONObject n(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject h = h(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.B && this.g.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (h != null) {
                jSONObject.put("nas", h);
            }
            return jSONObject;
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to create native click meta data JSON.", e);
            return jSONObject;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0028  */
    @Override // com.google.android.gms.internal.ads.zzdnu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void o(android.view.View r17, android.view.View r18, java.util.Map r19, java.util.Map r20, boolean r21, android.widget.ImageView.ScaleType r22, int r23) {
        /*
            Method dump skipped, instructions count: 226
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdmg.o(android.view.View, android.view.View, java.util.Map, java.util.Map, boolean, android.widget.ImageView$ScaleType, int):void");
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void p(Bundle bundle) {
        if (bundle == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzd("Touch event data is null. No touch event is reported.");
        } else {
            if (!f("touch_reporting")) {
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
                return;
            }
            this.j.b.zze((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
            u();
        }
    }

    public final String q(View view, Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int T = this.i.T();
        if (T != 1) {
            if (T != 2) {
                if (T != 6) {
                    return null;
                }
                return "3099";
            }
            return "2099";
        }
        return "1099";
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void r(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.f5904c;
        JSONObject zze = com.google.android.gms.ads.internal.util.zzbs.zze(context, map, map2, view, scaleType);
        JSONObject zzb = com.google.android.gms.ads.internal.util.zzbs.zzb(context, view);
        JSONObject zzc = com.google.android.gms.ads.internal.util.zzbs.zzc(view);
        JSONObject zzd = com.google.android.gms.ads.internal.util.zzbs.zzd(context, view);
        boolean zzi = com.google.android.gms.ads.internal.util.zzbs.zzi(context, this.n);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.g);
            jSONObject.put("asset_view_signal", zze);
            jSONObject.put("ad_view_signal", zzb);
            jSONObject.put("scroll_view_signal", zzc);
            jSONObject.put("lock_screen_signal", zzd);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q4)).booleanValue()) {
                jSONObject.put("view_signals", w(view));
            }
            jSONObject.put("policy_validator_enabled", zzi);
            jSONObject.put("screen", com.google.android.gms.ads.internal.util.zzbs.zzj(context));
            zzcdr.a(this.h.a(jSONObject, "google.afma.nativeAds.handleNativeAdSignalsLogging"), "Error during performing handleNativeAdSignalsLogging");
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to create native ad signals logging JSON.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void s(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        Context context = this.f5904c;
        v(com.google.android.gms.ads.internal.util.zzbs.zzb(context, view), com.google.android.gms.ads.internal.util.zzbs.zze(context, map, map2, view, scaleType), com.google.android.gms.ads.internal.util.zzbs.zzc(view), com.google.android.gms.ads.internal.util.zzbs.zzd(context, view), w(view), null, com.google.android.gms.ads.internal.util.zzbs.zzi(context, this.n), view);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean t(Bundle bundle) {
        if (!f("impression_reporting")) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
            return false;
        }
        String str = null;
        JSONObject zzl = com.google.android.gms.ads.internal.client.zzbb.zza().zzl(bundle, null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Oc)).booleanValue()) {
            str = w(null);
        }
        return v(null, null, null, null, str, zzl, false, null);
    }

    public final void u() {
        com.google.android.gms.ads.internal.zzb zzbVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.af)).booleanValue() && (zzbVar = this.J) != null) {
            zzbVar.zza();
        }
    }

    public final boolean v(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z, View view) {
        zzcze zzczeVar;
        zzfhr zzfhrVar = this.n;
        Context context = this.f5904c;
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.g);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q4)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z);
            jSONObject6.put("screen", com.google.android.gms.ads.internal.util.zzbs.zzj(context));
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.cf)).booleanValue() && (zzczeVar = this.K) != null) {
                AtomicLong atomicLong = zzczeVar.f5617a;
                if (atomicLong.get() > 0) {
                    jSONObject6.put("placement_id", atomicLong.get());
                }
            }
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P9)).booleanValue();
            zzdsp zzdspVar = this.h;
            if (booleanValue) {
                zzdspVar.b("/clickRecorded", new zzdmd(this));
            } else {
                zzdspVar.b("/logScionEvent", new zzdmc(this));
            }
            zzdspVar.b("/nativeImpression", new zzdme(this, view));
            zzdspVar.b("/nativeImpressionFlowControl", new zzdmf(this, this.u, zzfhrVar.x0, this.w));
            zzcdr.a(zzdspVar.a(jSONObject6, "google.afma.nativeAds.handleImpression"), "Error during performing handleImpression");
            if (!this.y) {
                this.y = com.google.android.gms.ads.internal.zzt.zzo().zzg(context, this.o.afmaVersion, zzfhrVar.C.toString(), this.p.g);
                return true;
            }
            return true;
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to create impression JSON.", e);
            return false;
        }
    }

    public final String w(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q4)).booleanValue()) {
            return null;
        }
        try {
            return this.j.b.zzj(this.f5904c, view, null);
        } catch (Exception unused) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzf("Exception getting data.");
            return null;
        }
    }

    public final void x(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        List list;
        boolean z5;
        String str2;
        Clock clock = this.s;
        zzdnm zzdnmVar = this.i;
        JSONObject jSONObject7 = this.g;
        try {
            u();
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("ad", jSONObject7);
            jSONObject8.put("asset_view_signal", jSONObject2);
            jSONObject8.put("ad_view_signal", jSONObject);
            jSONObject8.put("click_signal", jSONObject5);
            jSONObject8.put("scroll_view_signal", jSONObject3);
            jSONObject8.put("lock_screen_signal", jSONObject4);
            zzdnw zzdnwVar = this.f;
            boolean z6 = false;
            if (((zzblc) zzdnwVar.g.get(zzdnmVar.o())) != null) {
                z3 = true;
            } else {
                z3 = false;
            }
            jSONObject8.put("has_custom_click_handler", z3);
            jSONObject8.put("provided_signals", jSONObject6);
            JSONObject jSONObject9 = new JSONObject();
            jSONObject9.put("asset_id", str);
            jSONObject9.put("template", zzdnmVar.T());
            jSONObject9.put("view_aware_api_used", z);
            zzbjn zzbjnVar = this.p.j;
            if (zzbjnVar != null && zzbjnVar.k) {
                z4 = true;
            } else {
                z4 = false;
            }
            jSONObject9.put("custom_mute_requested", z4);
            synchronized (zzdnmVar) {
                list = zzdnmVar.f;
            }
            if (!list.isEmpty() && zzdnmVar.e() != null) {
                z5 = true;
            } else {
                z5 = false;
            }
            jSONObject9.put("custom_mute_enabled", z5);
            if (this.r.g != null && jSONObject7.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject9.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject9.put("timestamp", clock.currentTimeMillis());
            if (this.B && this.g.optBoolean("allow_custom_click_gesture", false)) {
                jSONObject9.put("custom_click_gesture_eligible", true);
            }
            if (z2) {
                jSONObject9.put("is_custom_click_gesture", true);
            }
            if (((zzblc) zzdnwVar.g.get(zzdnmVar.o())) != null) {
                z6 = true;
            }
            jSONObject9.put("has_custom_click_handler", z6);
            String str3 = null;
            try {
                JSONObject optJSONObject = jSONObject7.optJSONObject("tracking_urls_and_actions");
                if (optJSONObject == null) {
                    optJSONObject = new JSONObject();
                }
                str2 = this.j.b.zzg(this.f5904c, optJSONObject.optString("click_string"), view);
            } catch (Exception e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Exception obtaining click signals", e);
                str2 = null;
            }
            jSONObject9.put("click_signals", str2);
            jSONObject9.put("open_chrome_custom_tab", true);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T9)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject9.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U9)).booleanValue() && PlatformVersion.isAtLeastR()) {
                jSONObject9.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject8.put("click", jSONObject9);
            JSONObject jSONObject10 = new JSONObject();
            long currentTimeMillis = clock.currentTimeMillis();
            jSONObject10.put("time_from_last_touch_down", currentTimeMillis - this.E);
            jSONObject10.put("time_from_last_touch", currentTimeMillis - this.F);
            jSONObject8.put("touch_signal", jSONObject10);
            if (this.n.b()) {
                JSONObject jSONObject11 = (JSONObject) jSONObject7.get("tracking_urls_and_actions");
                if (jSONObject11 != null) {
                    str3 = jSONObject11.getString("gws_query_id");
                }
                if (str3 != null) {
                    this.x.c5(str3, zzdnmVar);
                }
            }
            zzcdr.a(this.h.a(jSONObject8, "google.afma.nativeAds.handleClick"), "Error during performing handleClick");
        } catch (JSONException e2) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to create click JSON.", e2);
        }
    }

    public final void y() {
        try {
            com.google.android.gms.ads.internal.client.zzdf zzdfVar = this.G;
            if (zzdfVar != null) {
                zzdfVar.zze();
            }
        } catch (RemoteException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzgyj] */
    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzA() {
        zzdsp zzdspVar = this.h;
        synchronized (zzdspVar) {
            ListenableFuture listenableFuture = zzdspVar.m;
            if (listenableFuture == null) {
                return;
            }
            zzgym.k(listenableFuture, new Object(), zzdspVar.e);
            zzdspVar.m = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzg() {
        this.B = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean zzh() {
        return this.g.optBoolean("allow_custom_click_gesture", false);
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final void zzq() {
        View view;
        if (this.g.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzdor zzdorVar = this.r;
            if (zzdorVar.g != null && zzdorVar.j != null) {
                zzdorVar.i = null;
                zzdorVar.j = null;
                WeakReference weakReference = zzdorVar.k;
                if (weakReference != null && (view = (View) weakReference.get()) != null) {
                    view.setClickable(false);
                    view.setOnClickListener(null);
                    zzdorVar.k = null;
                }
                try {
                    zzdorVar.g.zzf();
                } catch (RemoteException e) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final int zzu() {
        zzbjn zzbjnVar = this.p.j;
        if (zzbjnVar != null) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sc)).booleanValue()) {
                return zzbjnVar.m;
            }
            return 0;
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzdnu
    public final boolean zzv() {
        if (zzu() != 0) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Sc)).booleanValue()) {
                return this.p.j.n;
            }
            return true;
        }
        return true;
    }
}
