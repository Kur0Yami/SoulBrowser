package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import j$.util.Objects;
import org.json.JSONException;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbhn extends QueryInfoGenerationCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4681a;
    public final /* synthetic */ zzbhp b;

    public zzbhn(zzbhp zzbhpVar, String str) {
        this.f4681a = str;
        Objects.requireNonNull(zzbhpVar);
        this.b = zzbhpVar;
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onFailure(String str) {
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi("Failed to generate query info for Custom Tab error: ".concat(String.valueOf(str)));
        try {
            zzbhp zzbhpVar = this.b;
            zzbhpVar.g.a(zzbhpVar.b(this.f4681a, str).toString());
        } catch (JSONException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error creating PACT Error Response JSON: ", e);
        }
    }

    @Override // com.google.android.gms.ads.query.QueryInfoGenerationCallback
    public final void onSuccess(QueryInfo queryInfo) {
        String query = queryInfo.getQuery();
        try {
            zzbhp zzbhpVar = this.b;
            zzbhpVar.g.a(zzbhpVar.c(this.f4681a, query).toString());
        } catch (JSONException e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzg("Error creating PACT Signal Response JSON: ", e);
        }
    }
}
