package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Map;

/* loaded from: classes.dex */
final class zzbmp implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* bridge */ /* synthetic */ void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        try {
            zzfzj.f(zzcirVar.getContext()).h();
            zzfzk.f(zzcirVar.getContext()).h();
            zzfzl.a(zzcirVar.getContext()).b();
        } catch (IOException e) {
            com.google.android.gms.ads.internal.zzt.zzh().f("DefaultGmsgHandlers.ResetPaid", e);
        }
    }
}
