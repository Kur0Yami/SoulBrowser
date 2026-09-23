package com.google.android.gms.internal.ads;

import j$.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzbsi implements zzbod {

    /* renamed from: a, reason: collision with root package name */
    public final zzbrl f4873a;
    public final zzcdt b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbsj f4874c;

    public zzbsi(zzbrl zzbrlVar, zzbsj zzbsjVar, zzcdt zzcdtVar) {
        Objects.requireNonNull(zzbsjVar);
        this.f4874c = zzbsjVar;
        this.f4873a = zzbrlVar;
        this.b = zzcdtVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void a(String str) {
        zzbrl zzbrlVar = this.f4873a;
        zzcdt zzcdtVar = this.b;
        try {
            if (str == null) {
                zzcdtVar.b(new Exception());
            } else {
                zzcdtVar.b(new Exception(str));
            }
        } catch (IllegalStateException unused) {
        } catch (Throwable th) {
            zzbrlVar.d();
            throw th;
        }
        zzbrlVar.d();
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final void b(JSONObject jSONObject) {
        zzbrl zzbrlVar = this.f4873a;
        zzcdt zzcdtVar = this.b;
        try {
            try {
                zzcdtVar.a(this.f4874c.f4875a.b(jSONObject));
            } catch (IllegalStateException unused) {
            } catch (JSONException e) {
                zzcdtVar.b(e);
            }
        } finally {
            zzbrlVar.d();
        }
    }
}
