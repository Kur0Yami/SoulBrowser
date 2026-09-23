package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcps implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f5355a;

    public zzcps(com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.f5355a = zzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        this.f5355a.zzb(Boolean.parseBoolean((String) hashMap.get("content_url_opted_out")));
    }
}
