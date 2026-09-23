package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcqg implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5369a;
    public final com.google.android.gms.ads.internal.util.zzj b = com.google.android.gms.ads.internal.zzt.zzh().i();

    public zzcqg(Context context) {
        this.f5369a = context;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        String str;
        if (!hashMap.isEmpty() && (str = (String) hashMap.get("gad_idless")) != null) {
            boolean parseBoolean = Boolean.parseBoolean(str);
            this.b.zzw(parseBoolean);
            if (parseBoolean) {
                com.google.android.gms.ads.internal.util.zzac.zza(this.f5369a);
            }
        }
    }
}
