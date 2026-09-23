package com.google.android.gms.internal.ads;

import j$.util.Objects;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzboc implements zzbod {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f4799a;

    public zzboc(zzboe zzboeVar, zzcdt zzcdtVar) {
        this.f4799a = zzcdtVar;
        Objects.requireNonNull(zzboeVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void a(String str) {
        this.f4799a.b(new Exception(str));
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void b(JSONObject jSONObject) {
        this.f4799a.a(jSONObject);
    }
}
