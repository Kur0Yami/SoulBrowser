package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzcpu implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f5357a;

    public zzcpu(com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.f5357a = zzjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        this.f5357a.zzd(Boolean.parseBoolean((String) hashMap.get("content_vertical_opted_out")));
    }
}
