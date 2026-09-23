package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbno implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzeak f4783a;

    public zzbno(zzeak zzeakVar) {
        Preconditions.checkNotNull(zzeakVar, "The Inspector Manager must not be null");
        this.f4783a = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        if (map != null && map.containsKey("persistentData") && !TextUtils.isEmpty((CharSequence) map.get("persistentData"))) {
            zzeak zzeakVar = this.f4783a;
            String str = (String) map.get("persistentData");
            synchronized (zzeakVar) {
                zzeakVar.x = str;
                com.google.android.gms.ads.internal.zzt.zzh().i().zzO(zzeakVar.x);
            }
        }
    }
}
