package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcqo implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final zzeak f5377a;

    public zzcqo(zzeak zzeakVar) {
        this.f5377a = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        String str = (String) hashMap.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f5377a.b(str.equals("true"));
    }
}
