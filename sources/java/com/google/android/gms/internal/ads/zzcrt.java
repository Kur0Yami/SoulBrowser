package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Rect;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcrt implements zzbry {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5414a;
    public final zzbch b;

    /* renamed from: c, reason: collision with root package name */
    public final PowerManager f5415c;

    public zzcrt(Context context, zzbch zzbchVar) {
        this.f5414a = context;
        this.b = zzbchVar;
        this.f5415c = (PowerManager) context.getSystemService("power");
    }

    @Override // com.google.android.gms.internal.ads.zzbry
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final JSONObject a(zzcrw zzcrwVar) {
        JSONObject jSONObject;
        JSONArray jSONArray = new JSONArray();
        JSONObject jSONObject2 = new JSONObject();
        zzbcj zzbcjVar = zzcrwVar.e;
        if (zzbcjVar == null) {
            jSONObject = new JSONObject();
        } else {
            zzbch zzbchVar = this.b;
            if (zzbchVar.b != null) {
                boolean z = zzbcjVar.f4543a;
                JSONObject jSONObject3 = new JSONObject();
                JSONObject put = jSONObject3.put("afmaVersion", zzbchVar.d).put("activeViewJSON", zzbchVar.b).put("timestamp", zzcrwVar.f5419c).put("adFormat", zzbchVar.f4540a).put("hashCode", zzbchVar.f4541c).put("isMraid", false).put("isStopped", false).put("isPaused", zzcrwVar.b).put("isNative", zzbchVar.e).put("isScreenOn", this.f5415c.isInteractive()).put("appMuted", com.google.android.gms.ads.internal.zzt.zzi().zzd()).put("appVolume", com.google.android.gms.ads.internal.zzt.zzi().zzb());
                Context context = this.f5414a;
                put.put("deviceVolume", com.google.android.gms.ads.internal.util.zzaa.zze(context.getApplicationContext()));
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                JSONObject put2 = jSONObject3.put("windowVisibility", zzbcjVar.b).put("isAttachedToWindow", z);
                JSONObject jSONObject4 = new JSONObject();
                Rect rect = zzbcjVar.f4544c;
                JSONObject put3 = put2.put("viewBox", jSONObject4.put("top", rect.top).put("bottom", rect.bottom).put("left", rect.left).put("right", rect.right));
                JSONObject jSONObject5 = new JSONObject();
                Rect rect2 = zzbcjVar.d;
                JSONObject put4 = put3.put("adBox", jSONObject5.put("top", rect2.top).put("bottom", rect2.bottom).put("left", rect2.left).put("right", rect2.right));
                JSONObject jSONObject6 = new JSONObject();
                Rect rect3 = zzbcjVar.e;
                JSONObject put5 = put4.put("globalVisibleBox", jSONObject6.put("top", rect3.top).put("bottom", rect3.bottom).put("left", rect3.left).put("right", rect3.right)).put("globalVisibleBoxVisible", zzbcjVar.f);
                JSONObject jSONObject7 = new JSONObject();
                Rect rect4 = zzbcjVar.g;
                JSONObject put6 = put5.put("localVisibleBox", jSONObject7.put("top", rect4.top).put("bottom", rect4.bottom).put("left", rect4.left).put("right", rect4.right)).put("localVisibleBoxVisible", zzbcjVar.h);
                JSONObject jSONObject8 = new JSONObject();
                Rect rect5 = zzbcjVar.i;
                put6.put("hitBox", jSONObject8.put("top", rect5.top).put("bottom", rect5.bottom).put("left", rect5.left).put("right", rect5.right)).put("screenDensity", displayMetrics.density);
                jSONObject3.put("isVisible", zzcrwVar.f5418a);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U1)).booleanValue()) {
                    JSONArray jSONArray2 = new JSONArray();
                    List<Rect> list = zzbcjVar.k;
                    if (list != null) {
                        for (Rect rect6 : list) {
                            jSONArray2.put(new JSONObject().put("top", rect6.top).put("bottom", rect6.bottom).put("left", rect6.left).put("right", rect6.right));
                        }
                    }
                    jSONObject3.put("scrollableContainerBoxes", jSONArray2);
                }
                if (!TextUtils.isEmpty(zzcrwVar.d)) {
                    jSONObject3.put("doneReasonCode", "u");
                }
                jSONObject = jSONObject3;
            } else {
                throw new JSONException("Active view Info cannot be null.");
            }
        }
        jSONArray.put(jSONObject);
        jSONObject2.put("units", jSONArray);
        return jSONObject2;
    }
}
