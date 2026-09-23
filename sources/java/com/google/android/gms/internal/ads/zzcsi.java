package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcsi implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzcwb f5435a;

    public zzcsi(zzcwb zzcwbVar) {
        this.f5435a = zzcwbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        try {
            return new JSONObject(this.f5435a.a().z);
        } catch (JSONException unused) {
            return null;
        }
    }
}
