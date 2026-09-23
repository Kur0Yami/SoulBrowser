package com.google.android.gms.internal.ads;

import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbsg implements zzcdx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbrl f4870a;
    public final /* synthetic */ Object b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzcdt f4871c;
    public final /* synthetic */ zzbsj d;

    public zzbsg(zzbsj zzbsjVar, zzbrl zzbrlVar, Object obj, zzcdt zzcdtVar) {
        this.f4870a = zzbrlVar;
        this.b = obj;
        this.f4871c = zzcdtVar;
        this.d = zzbsjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcdx
    public final /* synthetic */ void zza(Object obj) {
        zzbrs zzbrsVar = (zzbrs) obj;
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise fulfilled");
        Object obj2 = this.b;
        zzcdt zzcdtVar = this.f4871c;
        zzbrl zzbrlVar = this.f4870a;
        zzbsj zzbsjVar = this.d;
        zzbsjVar.getClass();
        try {
            com.google.android.gms.ads.internal.zzt.zzc();
            String uuid = UUID.randomUUID().toString();
            zzbnm.o.b(uuid, new zzbsi(zzbrlVar, zzbsjVar, zzcdtVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", zzbsjVar.b.a(obj2));
            zzbrsVar.f(jSONObject, zzbsjVar.d);
        } catch (Exception e) {
            try {
                zzcdtVar.b(e);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to invokeJavascript", e);
            } finally {
                zzbrlVar.d();
            }
        }
    }
}
