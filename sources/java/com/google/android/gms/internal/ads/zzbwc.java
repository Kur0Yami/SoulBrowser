package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbwc extends zzbwd implements zzbnn {

    /* renamed from: c, reason: collision with root package name */
    public final zzcir f4941c;
    public final Context d;
    public final WindowManager e;
    public final zzbfr f;
    public DisplayMetrics g;
    public float h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;

    public zzbwc(zzcir zzcirVar, Context context, zzbfr zzbfrVar) {
        super(zzcirVar, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.i = -1;
        this.j = -1;
        this.l = -1;
        this.m = -1;
        this.n = -1;
        this.o = -1;
        this.f4941c = zzcirVar;
        this.d = context;
        this.f = zzbfrVar;
        this.e = (WindowManager) context.getSystemService("window");
    }

    /* JADX WARN: Type inference failed for: r12v12, types: [java.lang.Object, com.google.android.gms.internal.ads.zzbwb] */
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        JSONObject jSONObject;
        this.g = new DisplayMetrics();
        Display defaultDisplay = this.e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.g);
        this.h = this.g.density;
        this.k = defaultDisplay.getRotation();
        com.google.android.gms.ads.internal.client.zzbb.zza();
        DisplayMetrics displayMetrics = this.g;
        this.i = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzbb.zza();
        DisplayMetrics displayMetrics2 = this.g;
        this.j = com.google.android.gms.ads.internal.util.client.zzf.zzA(displayMetrics2, displayMetrics2.heightPixels);
        zzcir zzcirVar = this.f4941c;
        Activity zzj = zzcirVar.zzj();
        if (zzj != null && zzj.getWindow() != null) {
            com.google.android.gms.ads.internal.zzt.zzc();
            int[] zzX = com.google.android.gms.ads.internal.util.zzs.zzX(zzj);
            com.google.android.gms.ads.internal.client.zzbb.zza();
            this.l = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.g, zzX[0]);
            com.google.android.gms.ads.internal.client.zzbb.zza();
            this.m = com.google.android.gms.ads.internal.util.client.zzf.zzA(this.g, zzX[1]);
        } else {
            this.l = this.i;
            this.m = this.j;
        }
        if (zzcirVar.zzN().b()) {
            this.n = this.i;
            this.o = this.j;
        } else {
            zzcirVar.measure(0, 0);
        }
        e(this.i, this.j, this.l, this.m, this.h, this.k);
        ?? obj2 = new Object();
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse("tel:"));
        zzbfr zzbfrVar = this.f;
        obj2.b = zzbfrVar.b(intent);
        Intent intent2 = new Intent("android.intent.action.VIEW");
        intent2.setData(Uri.parse("sms:"));
        obj2.f4939a = zzbfrVar.b(intent2);
        obj2.f4940c = zzbfrVar.b(new Intent("android.intent.action.INSERT").setType("vnd.android.cursor.dir/event"));
        boolean a2 = zzbfrVar.a();
        boolean z = obj2.f4939a;
        boolean z2 = obj2.b;
        try {
            jSONObject = new JSONObject().put("sms", z).put("tel", z2).put("calendar", obj2.f4940c).put("storePicture", a2).put("inlineVideo", true);
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while obtaining the MRAID capabilities.", e);
            jSONObject = null;
        }
        zzcirVar.o(jSONObject, "onDeviceFeaturesReceived");
        int[] iArr = new int[2];
        zzcirVar.getLocationOnScreen(iArr);
        com.google.android.gms.ads.internal.util.client.zzf zza = com.google.android.gms.ads.internal.client.zzbb.zza();
        int i2 = iArr[0];
        Context context = this.d;
        f(zza.zza(context, i2), com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, iArr[1]));
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(2)) {
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Dispatching Ready Event.");
        }
        try {
            this.f4942a.o(new JSONObject().put("js", zzcirVar.zzs().afmaVersion), "onReadyEventReceived");
        } catch (JSONException e2) {
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while dispatching ready Event.", e2);
        }
    }

    public final void f(int i, int i2) {
        int i3;
        Context context = this.d;
        int i4 = 0;
        if (context instanceof Activity) {
            com.google.android.gms.ads.internal.zzt.zzc();
            i3 = com.google.android.gms.ads.internal.util.zzs.zzY((Activity) context)[0];
        } else {
            i3 = 0;
        }
        zzcir zzcirVar = this.f4941c;
        if (zzcirVar.zzN() == null || !zzcirVar.zzN().b()) {
            int width = zzcirVar.getWidth();
            int height = zzcirVar.getHeight();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y0)).booleanValue()) {
                if (width == 0) {
                    if (zzcirVar.zzN() != null) {
                        width = zzcirVar.zzN().f5235c;
                    } else {
                        width = 0;
                    }
                }
                if (height == 0) {
                    if (zzcirVar.zzN() != null) {
                        i4 = zzcirVar.zzN().b;
                    }
                    this.n = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, width);
                    this.o = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, i4);
                }
            }
            i4 = height;
            this.n = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, width);
            this.o = com.google.android.gms.ads.internal.client.zzbb.zza().zza(context, i4);
        }
        int i5 = i2 - i3;
        try {
            this.f4942a.o(new JSONObject().put("x", i).put("y", i5).put("width", this.n).put("height", this.o), "onDefaultPositionReceived");
        } catch (JSONException e) {
            int i6 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error occurred while dispatching default position.", e);
        }
        zzbvx zzbvxVar = zzcirVar.D().B;
        if (zzbvxVar != null) {
            zzbvxVar.e = i;
            zzbvxVar.f = i2;
        }
    }
}
