package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbsp implements zzbod {

    /* renamed from: a, reason: collision with root package name */
    public final zzcdt f4882a;

    public zzbsp(zzbsr zzbsrVar, zzcdt zzcdtVar) {
        this.f4882a = zzcdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void a(String str) {
        zzcdt zzcdtVar = this.f4882a;
        try {
            if (str == null) {
                zzcdtVar.b(new Exception());
            } else {
                zzcdtVar.b(new Exception(str));
            }
        } catch (IllegalStateException unused) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void b(JSONObject jSONObject) {
        zzcdt zzcdtVar = this.f4882a;
        try {
            zzcdtVar.a(jSONObject);
        } catch (IllegalStateException unused) {
        } catch (JSONException e) {
            zzcdtVar.b(e);
        }
    }
}
