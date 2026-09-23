package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcsb implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5427a;
    public final zzijf b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijg f5428c;

    public zzcsb(zzcmg zzcmgVar, zzijf zzijfVar, zzijg zzijgVar) {
        this.f5427a = zzcmgVar;
        this.b = zzijfVar;
        this.f5428c = zzijgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        VersionInfoParcel a2 = ((zzcmg) this.f5427a).a();
        JSONObject jSONObject = (JSONObject) this.b.zzb();
        String str = (String) this.f5428c.zzb();
        boolean equals = "native".equals(str);
        com.google.android.gms.ads.internal.zzt.zzc();
        return new zzbch(UUID.randomUUID().toString(), a2, str, jSONObject, equals);
    }
}
