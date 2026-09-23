package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* loaded from: classes.dex */
final class zzcjo implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcju f5205a;

    public zzcjo(zzcju zzcjuVar) {
        this.f5205a = zzcjuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        if (map != null) {
            String str = (String) map.get("height");
            if (!TextUtils.isEmpty(str)) {
                try {
                    int parseInt = Integer.parseInt(str);
                    zzcju zzcjuVar = this.f5205a;
                    synchronized (zzcjuVar) {
                        try {
                            if (zzcjuVar.L != parseInt) {
                                zzcjuVar.L = parseInt;
                                zzcjuVar.requestLayout();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                } catch (Exception e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzj("Exception occurred while getting webview content height", e);
                }
            }
        }
    }
}
