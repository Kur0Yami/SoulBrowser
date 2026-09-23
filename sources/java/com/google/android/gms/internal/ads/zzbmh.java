package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbmh implements zzbnn {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        WindowManager windowManager = (WindowManager) zzcirVar.getContext().getSystemService("window");
        com.google.android.gms.ads.internal.zzt.zzc();
        DisplayMetrics zzx = com.google.android.gms.ads.internal.util.zzs.zzx(windowManager);
        int i = zzx.widthPixels;
        int i2 = zzx.heightPixels;
        int[] iArr = new int[2];
        HashMap hashMap = new HashMap();
        ((View) zzcirVar).getLocationInWindow(iArr);
        hashMap.put("xInPixels", Integer.valueOf(iArr[0]));
        androidx.work.impl.workers.a.v(iArr[1], hashMap, "yInPixels", i, "windowWidthInPixels");
        hashMap.put("windowHeightInPixels", Integer.valueOf(i2));
        zzcirVar.S("locationReady", hashMap);
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("GET LOCATION COMPILED");
    }
}
