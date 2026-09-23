package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzbna implements zzbnn {
    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        if (map.containsKey("start")) {
            zzcjc D = zzcirVar.D();
            synchronized (D.h) {
            }
            D.H++;
            D.x0();
            return;
        }
        if (map.containsKey("stop")) {
            r3.H--;
            zzcirVar.D().x0();
        } else if (map.containsKey("cancel")) {
            zzcjc D2 = zzcirVar.D();
            zzbfj zzbfjVar = D2.f;
            if (zzbfjVar != null) {
                zzbfjVar.b(10005);
            }
            D2.G = true;
            D2.r = 10004;
            D2.s = "Page loaded delay cancel.";
            D2.x0();
            D2.f5194c.destroy();
        }
    }
}
