package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbml implements zzbnn {
    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzgnm, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        if (TextUtils.isEmpty((CharSequence) map.get("appId"))) {
            com.google.android.gms.ads.internal.util.zze.zza("Missing App Id, cannot show LMD Overlay without it");
            return;
        }
        ?? obj2 = new Object();
        obj2.f8159c = 8388691;
        byte b = (byte) (obj2.g | 1);
        obj2.d = -1.0f;
        obj2.g = (byte) (((byte) (((byte) (b | 2)) | 4)) | 8);
        obj2.b = (String) map.get("appId");
        obj2.e = zzcirVar.getWidth();
        obj2.g = (byte) (obj2.g | 16);
        IBinder windowToken = zzcirVar.zzE().getWindowToken();
        if (windowToken != null) {
            obj2.f8158a = windowToken;
            if (map.containsKey("gravityX") && map.containsKey("gravityY")) {
                obj2.f8159c = Integer.parseInt((String) map.get("gravityX")) | Integer.parseInt((String) map.get("gravityY"));
                obj2.g = (byte) (obj2.g | 1);
            } else {
                obj2.f8159c = 81;
                obj2.g = (byte) (obj2.g | 1);
            }
            if (map.containsKey("verticalMargin")) {
                obj2.d = Float.parseFloat((String) map.get("verticalMargin"));
                obj2.g = (byte) (obj2.g | 2);
            } else {
                obj2.d = 0.02f;
                obj2.g = (byte) (obj2.g | 2);
            }
            if (map.containsKey("enifd")) {
                obj2.f = (String) map.get("enifd");
            }
            try {
                com.google.android.gms.ads.internal.zzt.zzt().zzc(zzcirVar, obj2.a());
                return;
            } catch (NullPointerException e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("DefaultGmsgHandlers.ShowLMDOverlay", e);
                com.google.android.gms.ads.internal.util.zze.zza("Missing parameters for LMD Overlay show request");
                return;
            }
        }
        throw new NullPointerException("Null windowToken");
    }
}
