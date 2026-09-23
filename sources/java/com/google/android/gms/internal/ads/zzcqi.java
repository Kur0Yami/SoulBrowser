package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcqi implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final zzfhq f5371a;

    public zzcqi(zzfhq zzfhqVar) {
        this.f5371a = zzfhqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        String str = (String) hashMap.get("render_in_browser");
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f5371a.a(Boolean.parseBoolean(str));
            } catch (Exception e) {
                throw new IllegalStateException("Invalid render_in_browser state", e);
            }
        }
    }
}
