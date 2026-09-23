package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcpw implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final zzeak f5359a;

    public zzcpw(zzeak zzeakVar) {
        this.f5359a = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        String str = (String) hashMap.get("gesture");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int hashCode = str.hashCode();
        zzeak zzeakVar = this.f5359a;
        if (hashCode != 97520651) {
            if (hashCode == 109399814 && str.equals("shake")) {
                zzeakVar.i(zzeag.f, true);
                return;
            }
        } else if (str.equals("flick")) {
            zzeakVar.i(zzeag.g, true);
            return;
        }
        zzeakVar.i(zzeag.f6309c, true);
    }
}
