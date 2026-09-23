package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewGroup;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcgl implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public boolean f5131a;

    public static int b(Context context, Map map, String str, int i) {
        String str2 = (String) map.get(str);
        if (str2 != null) {
            try {
                com.google.android.gms.ads.internal.client.zzbb.zza();
                i = com.google.android.gms.ads.internal.util.client.zzf.zzC(context, Integer.parseInt(str2));
            } catch (NumberFormatException unused) {
                String r = android.support.v4.media.a.r(new StringBuilder(str.length() + 34 + str2.length()), "Could not parse ", str, " in a video GMSG: ", str2);
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
            }
        }
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            int length = str.length();
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + length + 30 + String.valueOf(str2).length() + 6 + 1);
            android.support.v4.media.a.z(sb, "Parse pixels for ", str, ", got string ", str2);
            sb.append(", int ");
            sb.append(i);
            sb.append(".");
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        }
        return i;
    }

    public static void c(zzcey zzceyVar, Map map) {
        zzceq zzceqVar = zzceyVar.k;
        String str = (String) map.get("minBufferMs");
        String str2 = (String) map.get("maxBufferMs");
        String str3 = (String) map.get("bufferForPlaybackMs");
        String str4 = (String) map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = (String) map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                int parseInt = Integer.parseInt(str);
                if (zzceqVar != null) {
                    zzceqVar.z(parseInt);
                }
            } catch (NumberFormatException unused) {
                String n = android.support.v4.media.a.n("Could not parse buffer parameters in loadControl video GMSG: (", str, ", ", str2, ")");
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(n);
                return;
            }
        }
        if (str2 != null) {
            int parseInt2 = Integer.parseInt(str2);
            if (zzceqVar != null) {
                zzceqVar.A(parseInt2);
            }
        }
        if (str3 != null) {
            int parseInt3 = Integer.parseInt(str3);
            if (zzceqVar != null) {
                zzceqVar.d(parseInt3);
            }
        }
        if (str4 != null) {
            int parseInt4 = Integer.parseInt(str4);
            if (zzceqVar != null) {
                zzceqVar.f(parseInt4);
            }
        }
        if (str5 != null) {
            int parseInt5 = Integer.parseInt(str5);
            if (zzceqVar != null) {
                zzceqVar.g(parseInt5);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        Integer num;
        Integer num2;
        int min;
        int min2;
        int i;
        zzcey zzceyVar;
        zzceq zzceqVar;
        zzcfk zzcfkVar = (zzcfk) obj;
        String str = (String) map.get("action");
        if (str == null) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Action missing from video GMSG.");
            return;
        }
        Integer num3 = null;
        if (map.containsKey("playerId")) {
            num = Integer.valueOf(Integer.parseInt((String) map.get("playerId")));
        } else {
            num = null;
        }
        if (zzcfkVar.Z() != null && (zzceyVar = zzcfkVar.Z().e) != null && (zzceqVar = zzceyVar.k) != null) {
            num2 = zzceqVar.x();
        } else {
            num2 = null;
        }
        if (num != null && num2 != null && !num.equals(num2) && !str.equals("load")) {
            Locale locale = Locale.US;
            int i3 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh("Event intended for player " + num + ", but sent to player " + num2 + " - event ignored");
            return;
        }
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(str.length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb.toString());
        }
        if (str.equals("background")) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Color parameter missing from background video GMSG.");
                return;
            }
            try {
                zzcfkVar.setBackgroundColor(Color.parseColor(str2));
                return;
            } catch (IllegalArgumentException unused) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Invalid color parameter in background video GMSG.");
                return;
            }
        }
        if (str.equals("playerBackground")) {
            String str3 = (String) map.get("color");
            if (TextUtils.isEmpty(str3)) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Color parameter missing from playerBackground video GMSG.");
                return;
            }
            try {
                zzcfkVar.zzv(Color.parseColor(str3));
                return;
            } catch (IllegalArgumentException unused2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Invalid color parameter in playerBackground video GMSG.");
                return;
            }
        }
        if (str.equals("decoderProps")) {
            String str4 = (String) map.get("mimeTypes");
            if (str4 == null) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("No MIME types specified for decoder properties inspection.");
                HashMap hashMap = new HashMap();
                hashMap.put("event", "decoderProps");
                hashMap.put("error", "missingMimeTypes");
                zzcfkVar.S("onVideoEvent", hashMap);
                return;
            }
            HashMap hashMap2 = new HashMap();
            for (String str5 : str4.split(",")) {
                hashMap2.put(str5, com.google.android.gms.ads.internal.util.zzch.zza(str5.trim()));
            }
            HashMap hashMap3 = new HashMap();
            hashMap3.put("event", "decoderProps");
            hashMap3.put("mimeTypes", hashMap2);
            zzcfkVar.S("onVideoEvent", hashMap3);
            return;
        }
        zzcez Z = zzcfkVar.Z();
        if (Z == null) {
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not get underlay container for a video GMSG.");
            return;
        }
        boolean equals = str.equals("new");
        boolean equals2 = str.equals("position");
        if (!equals && !equals2) {
            zzcjx zzh = zzcfkVar.zzh();
            if (zzh != null) {
                if (str.equals("timeupdate")) {
                    String str6 = (String) map.get("currentTime");
                    if (str6 == null) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("currentTime parameter missing from timeupdate video GMSG.");
                        return;
                    }
                    try {
                        float parseFloat = Float.parseFloat(str6);
                        synchronized (zzh.f) {
                            zzh.n = parseFloat;
                        }
                        return;
                    } catch (NumberFormatException unused3) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not parse currentTime parameter from timeupdate video GMSG: ".concat(str6));
                        return;
                    }
                }
                if (str.equals("skip")) {
                    zzh.zzr();
                    return;
                }
            }
            zzcey zzceyVar2 = Z.e;
            if (zzceyVar2 == null) {
                HashMap hashMap4 = new HashMap();
                hashMap4.put("event", "no_video_view");
                zzcfkVar.S("onVideoEvent", hashMap4);
                return;
            }
            if (str.equals("click")) {
                Context context = zzcfkVar.getContext();
                int b = b(context, map, "x", 0);
                float b2 = b(context, map, "y", 0);
                long uptimeMillis = SystemClock.uptimeMillis();
                MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, b, b2, 0);
                zzceq zzceqVar2 = zzceyVar2.k;
                if (zzceqVar2 != null) {
                    zzceqVar2.dispatchTouchEvent(obtain);
                }
                obtain.recycle();
                return;
            }
            if (str.equals("currentTime")) {
                String str7 = (String) map.get("time");
                if (str7 == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Time parameter missing from currentTime video GMSG.");
                    return;
                }
                try {
                    int parseFloat2 = (int) (Float.parseFloat(str7) * 1000.0f);
                    zzceq zzceqVar3 = zzceyVar2.k;
                    if (zzceqVar3 != null) {
                        zzceqVar3.p(parseFloat2);
                        return;
                    }
                    return;
                } catch (NumberFormatException unused4) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not parse time parameter from currentTime video GMSG: ".concat(str7));
                    return;
                }
            }
            if (str.equals("hide")) {
                zzceyVar2.setVisibility(4);
                return;
            }
            if (str.equals("remove")) {
                zzceyVar2.setVisibility(8);
                return;
            }
            if (str.equals("load")) {
                zzceq zzceqVar4 = zzceyVar2.k;
                if (zzceqVar4 != null) {
                    if (!TextUtils.isEmpty(zzceyVar2.r)) {
                        zzceqVar4.y(zzceyVar2.r, zzceyVar2.s, num);
                        return;
                    } else {
                        zzceyVar2.c("no_src", new String[0]);
                        return;
                    }
                }
                return;
            }
            if (str.equals("loadControl")) {
                c(zzceyVar2, map);
                return;
            }
            if (str.equals("muted")) {
                if (Boolean.parseBoolean((String) map.get("muted"))) {
                    zzceq zzceqVar5 = zzceyVar2.k;
                    if (zzceqVar5 != null) {
                        zzcfo zzcfoVar = zzceqVar5.f;
                        zzcfoVar.i = true;
                        zzcfoVar.a();
                        zzceqVar5.zzq();
                        return;
                    }
                    return;
                }
                zzceq zzceqVar6 = zzceyVar2.k;
                if (zzceqVar6 != null) {
                    zzcfo zzcfoVar2 = zzceqVar6.f;
                    zzcfoVar2.i = false;
                    zzcfoVar2.a();
                    zzceqVar6.zzq();
                    return;
                }
                return;
            }
            if (str.equals("pause")) {
                zzceq zzceqVar7 = zzceyVar2.k;
                if (zzceqVar7 != null) {
                    zzceqVar7.m();
                    return;
                }
                return;
            }
            if (str.equals("play")) {
                zzceq zzceqVar8 = zzceyVar2.k;
                if (zzceqVar8 != null) {
                    zzceqVar8.l();
                    return;
                }
                return;
            }
            if (str.equals("show")) {
                zzceyVar2.setVisibility(0);
                return;
            }
            if (str.equals("src")) {
                String str8 = (String) map.get("src");
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F2)).booleanValue() && TextUtils.isEmpty(str8)) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Src parameter missing from src video GMSG.");
                    return;
                }
                if (map.containsKey("periodicReportIntervalMs")) {
                    try {
                        num3 = Integer.valueOf(Integer.parseInt((String) map.get("periodicReportIntervalMs")));
                    } catch (NumberFormatException unused5) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Video gmsg invalid numeric parameter 'periodicReportIntervalMs': ".concat(String.valueOf((String) map.get("periodicReportIntervalMs"))));
                    }
                }
                String[] strArr = {str8};
                String str9 = (String) map.get("demuxed");
                if (str9 != null) {
                    try {
                        JSONArray jSONArray = new JSONArray(str9);
                        ArrayList arrayList = new ArrayList();
                        for (int i4 = 0; i4 < jSONArray.length(); i4++) {
                            String string = jSONArray.getString(i4);
                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F2)).booleanValue() || !TextUtils.isEmpty(string)) {
                                arrayList.add(string);
                            }
                        }
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.F2)).booleanValue() && arrayList.isEmpty()) {
                            StringBuilder sb2 = new StringBuilder(str9.length() + 41);
                            sb2.append("All demuxed URLs are empty for playback: ");
                            sb2.append(str9);
                            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb2.toString());
                            return;
                        }
                        strArr = (String[]) arrayList.toArray(new String[arrayList.size()]);
                    } catch (JSONException unused6) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Malformed demuxed URL list for playback: ".concat(str9));
                        strArr = new String[]{str8};
                    }
                }
                if (num3 != null) {
                    zzcfkVar.v(num3.intValue());
                }
                zzceyVar2.r = str8;
                zzceyVar2.s = strArr;
                return;
            }
            if (str.equals("touchMove")) {
                Context context2 = zzcfkVar.getContext();
                int b3 = b(context2, map, "dx", 0);
                int b4 = b(context2, map, "dy", 0);
                float f = b3;
                float f2 = b4;
                zzceq zzceqVar9 = zzceyVar2.k;
                if (zzceqVar9 != null) {
                    zzceqVar9.q(f, f2);
                }
                if (!this.f5131a) {
                    zzcfkVar.zzl();
                    this.f5131a = true;
                    return;
                }
                return;
            }
            if (str.equals("volume")) {
                String str10 = (String) map.get("volume");
                if (str10 == null) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Level parameter missing from volume video GMSG.");
                    return;
                }
                try {
                    float parseFloat3 = Float.parseFloat(str10);
                    zzceq zzceqVar10 = zzceyVar2.k;
                    if (zzceqVar10 != null) {
                        zzcfo zzcfoVar3 = zzceqVar10.f;
                        zzcfoVar3.j = parseFloat3;
                        zzcfoVar3.a();
                        zzceqVar10.zzq();
                        return;
                    }
                    return;
                } catch (NumberFormatException unused7) {
                    com.google.android.gms.ads.internal.util.client.zzo.zzi("Could not parse volume parameter from volume video GMSG: ".concat(str10));
                    return;
                }
            }
            if (str.equals("watermark")) {
                zzceyVar2.a();
                return;
            } else {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Unknown video action: ".concat(str));
                return;
            }
        }
        Context context3 = zzcfkVar.getContext();
        int b5 = b(context3, map, "x", 0);
        int b6 = b(context3, map, "y", 0);
        int b7 = b(context3, map, "w", -1);
        zzbgb zzbgbVar = zzbgk.I4;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
            if (b7 == -1) {
                min = zzcfkVar.g();
            } else {
                min = Math.min(b7, zzcfkVar.g());
            }
        } else {
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                int g = zzcfkVar.g();
                StringBuilder sb3 = new StringBuilder(String.valueOf(b5).length() + androidx.work.impl.workers.a.d(String.valueOf(b7).length() + 72, 4, String.valueOf(g)) + 1);
                sb3.append("Calculate width with original width ");
                sb3.append(b7);
                sb3.append(", videoHost.getVideoBoundingWidth() ");
                sb3.append(g);
                sb3.append(", x ");
                sb3.append(b5);
                sb3.append(".");
                com.google.android.gms.ads.internal.util.zze.zza(sb3.toString());
            }
            min = Math.min(b7, zzcfkVar.g() - b5);
        }
        int b8 = b(context3, map, "h", -1);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).booleanValue()) {
            if (b8 == -1) {
                min2 = zzcfkVar.zzx();
            } else {
                min2 = Math.min(b8, zzcfkVar.zzx());
            }
        } else {
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                int zzx = zzcfkVar.zzx();
                StringBuilder sb4 = new StringBuilder(String.valueOf(b6).length() + androidx.work.impl.workers.a.d(String.valueOf(b8).length() + 75, 4, String.valueOf(zzx)) + 1);
                sb4.append("Calculate height with original height ");
                sb4.append(b8);
                sb4.append(", videoHost.getVideoBoundingHeight() ");
                sb4.append(zzx);
                sb4.append(", y ");
                sb4.append(b6);
                sb4.append(".");
                com.google.android.gms.ads.internal.util.zze.zza(sb4.toString());
            }
            min2 = Math.min(b8, zzcfkVar.zzx() - b6);
        }
        try {
            i = Integer.parseInt((String) map.get("player"));
        } catch (NumberFormatException unused8) {
            i = 0;
        }
        boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
        if (equals && Z.e == null) {
            zzcfj zzcfjVar = new zzcfj((String) map.get("flags"));
            if (Z.e == null) {
                zzcjn zzcjnVar = Z.b;
                zzbgr.a(((zzcju) zzcjnVar.f5204c).zzq().b, ((zzcju) zzcjnVar.f5204c).zzi(), "vpr2");
                zzcey zzceyVar3 = new zzcey(Z.f5095a, zzcjnVar, i, parseBoolean, ((zzcju) zzcjnVar.f5204c).zzq().b, zzcfjVar, Z.d);
                Z.e = zzceyVar3;
                Z.f5096c.addView(zzceyVar3, 0, new ViewGroup.LayoutParams(-1, -1));
                Z.e.n(b5, b6, min, min2);
                ((zzcju) zzcjnVar.f5204c).r.p = false;
            }
            zzcey zzceyVar4 = Z.e;
            if (zzceyVar4 != null) {
                c(zzceyVar4, map);
                return;
            }
            return;
        }
        Preconditions.checkMainThread("The underlay may only be modified from the UI thread.");
        zzcey zzceyVar5 = Z.e;
        if (zzceyVar5 != null) {
            zzceyVar5.n(b5, b6, min, min2);
        }
    }
}
