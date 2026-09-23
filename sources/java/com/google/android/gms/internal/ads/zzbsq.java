package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbsq implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbsr f4883a;
    public final /* synthetic */ Object b;

    public /* synthetic */ zzbsq(zzbsr zzbsrVar, Object obj) {
        this.f4883a = zzbsrVar;
        this.b = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final /* synthetic */ ListenableFuture zza(Object obj) {
        zzcdt zzcdtVar = new zzcdt();
        com.google.android.gms.ads.internal.zzt.zzc();
        String uuid = UUID.randomUUID().toString();
        zzbnm.o.b(uuid, new zzbsp(this.f4883a, zzcdtVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) this.b);
        ((zzbrs) obj).f(jSONObject, "google.afma.activeView.handleUpdate");
        return zzcdtVar;
    }
}
