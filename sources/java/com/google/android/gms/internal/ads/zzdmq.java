package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.UUID;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdmq implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f5916a;

    public zzdmq(zzcmg zzcmgVar) {
        this.f5916a = zzcmgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* synthetic */ Object zzb() {
        VersionInfoParcel a2 = ((zzcmg) this.f5916a).a();
        com.google.android.gms.ads.internal.zzt.zzc();
        return new zzbch(UUID.randomUUID().toString(), a2, "native", new JSONObject(), true);
    }
}
