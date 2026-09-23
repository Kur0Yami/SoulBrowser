package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcrr implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcrs f5411a;

    public zzcrr(zzcrs zzcrsVar) {
        this.f5411a = zzcrsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcrs zzcrsVar = this.f5411a;
        zzcrsVar.getClass();
        if (map != null) {
            String str = (String) map.get("hashCode");
            if (!TextUtils.isEmpty(str) && str.equals(zzcrsVar.f5412a)) {
                ((zzcdn) zzcrsVar.f5413c).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcrq
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzcrr.this.f5411a.d.f();
                    }
                });
            }
        }
    }
}
