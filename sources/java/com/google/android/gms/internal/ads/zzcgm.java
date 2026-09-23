package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzcgm implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        float parseFloat;
        zzcfk zzcfkVar = (zzcfk) obj;
        zzcjx zzh = zzcfkVar.zzh();
        if (zzh == null) {
            try {
                zzcjx zzcjxVar = new zzcjx(zzcfkVar, Float.parseFloat((String) map.get("duration")), "1".equals(map.get("customControlsAllowed")), "1".equals(map.get("clickToExpandAllowed")));
                zzcfkVar.n(zzcjxVar);
                zzh = zzcjxVar;
            } catch (NullPointerException e) {
                e = e;
                Throwable th = e;
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to parse videoMeta message.", th);
                com.google.android.gms.ads.internal.zzt.zzh().f("VideoMetaGmsgHandler.onGmsg", th);
                return;
            } catch (NumberFormatException e2) {
                e = e2;
                Throwable th2 = e;
                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to parse videoMeta message.", th2);
                com.google.android.gms.ads.internal.zzt.zzh().f("VideoMetaGmsgHandler.onGmsg", th2);
                return;
            }
        }
        float parseFloat2 = Float.parseFloat((String) map.get("duration"));
        boolean equals = "1".equals(map.get("muted"));
        float parseFloat3 = Float.parseFloat((String) map.get("currentTime"));
        int parseInt = Integer.parseInt((String) map.get("playbackState"));
        if (parseInt < 0 || parseInt > 3) {
            parseInt = 0;
        }
        String str = (String) map.get("aspectRatio");
        if (TextUtils.isEmpty(str)) {
            parseFloat = 0.0f;
        } else {
            parseFloat = Float.parseFloat(str);
        }
        if (com.google.android.gms.ads.internal.util.client.zzo.zzm(3)) {
            StringBuilder sb = new StringBuilder(String.valueOf(parseFloat3).length() + 45 + String.valueOf(parseFloat2).length() + 13 + String.valueOf(equals).length() + 19 + String.valueOf(parseInt).length() + 17 + String.valueOf(str).length());
            sb.append("Video Meta GMSG: currentTime : ");
            sb.append(parseFloat3);
            sb.append(" , duration : ");
            sb.append(parseFloat2);
            sb.append(" , isMuted : ");
            sb.append(equals);
            sb.append(" , playbackState : ");
            sb.append(parseInt);
            sb.append(" , aspectRatio : ");
            sb.append(str);
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb.toString());
        }
        zzh.d5(parseFloat3, parseFloat2, parseFloat, parseInt, equals);
    }
}
