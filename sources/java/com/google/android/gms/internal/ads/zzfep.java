package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfep implements zzfkt {

    /* renamed from: a, reason: collision with root package name */
    public final zzffi f7279a;
    public final zzffk b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzm f7280c;
    public final String d;
    public final Executor e;
    public final com.google.android.gms.ads.internal.client.zzx f;
    public final zzfkj g;

    public zzfep(zzffi zzffiVar, zzffk zzffkVar, com.google.android.gms.ads.internal.client.zzm zzmVar, String str, Executor executor, com.google.android.gms.ads.internal.client.zzx zzxVar, zzfkj zzfkjVar) {
        this.f7279a = zzffiVar;
        this.b = zzffkVar;
        this.f7280c = zzmVar;
        this.d = str;
        this.e = executor;
        this.f = zzxVar;
        this.g = zzfkjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final Executor zza() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.ads.zzfkt
    public final zzfkj zzb() {
        return this.g;
    }
}
