package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzdsp {
    public final com.google.android.gms.ads.internal.zza b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f6108c;
    public final zzdxe d;
    public final Executor e;
    public final zzayq f;
    public final VersionInfoParcel g;
    public final zzehu i;
    public final zzfpi j;
    public final zzeif k;
    public final zzfio l;
    public ListenableFuture m;

    /* renamed from: a, reason: collision with root package name */
    public final zzdsd f6107a = new Object();
    public final zzboe h = new zzboe();

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.gms.internal.ads.zzdsd, java.lang.Object] */
    public zzdsp(zzdsn zzdsnVar) {
        this.f6108c = zzdsnVar.b;
        this.e = zzdsnVar.e;
        this.f = zzdsnVar.f;
        this.g = zzdsnVar.g;
        this.b = zzdsnVar.f6103a;
        this.i = zzdsnVar.d;
        this.j = zzdsnVar.h;
        this.d = zzdsnVar.f6104c;
        this.k = zzdsnVar.i;
        this.l = zzdsnVar.j;
    }

    public final synchronized ListenableFuture a(final JSONObject jSONObject, final String str) {
        ListenableFuture listenableFuture = this.m;
        if (listenableFuture == null) {
            return zzgyq.f;
        }
        return zzgym.h(listenableFuture, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzdsl
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj) {
                String str2 = str;
                JSONObject jSONObject2 = jSONObject;
                zzcir zzcirVar = (zzcir) obj;
                zzboe zzboeVar = zzdsp.this.h;
                zzboeVar.getClass();
                zzcdt zzcdtVar = new zzcdt();
                com.google.android.gms.ads.internal.zzt.zzc();
                String uuid = UUID.randomUUID().toString();
                zzboeVar.b(uuid, new zzboc(zzboeVar, zzcdtVar));
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    jSONObject3.put("id", uuid);
                    jSONObject3.put("args", jSONObject2);
                    zzcirVar.f(jSONObject3, str2);
                    return zzcdtVar;
                } catch (Exception e) {
                    zzcdtVar.b(e);
                    return zzcdtVar;
                }
            }
        }, this.e);
    }

    public final synchronized void b(String str, zzbnn zzbnnVar) {
        ListenableFuture listenableFuture = this.m;
        if (listenableFuture == null) {
            return;
        }
        zzdsf zzdsfVar = new zzdsf(this, str, zzbnnVar);
        Executor executor = this.e;
        ((zzgxf) listenableFuture).k(new zzgyk(listenableFuture, zzdsfVar), executor);
    }

    public final synchronized void c(String str, zzbnn zzbnnVar) {
        ListenableFuture listenableFuture = this.m;
        if (listenableFuture == null) {
            return;
        }
        zzdsg zzdsgVar = new zzdsg(this, str, zzbnnVar);
        Executor executor = this.e;
        ((zzgxf) listenableFuture).k(new zzgyk(listenableFuture, zzdsgVar), executor);
    }

    public final synchronized void d(Map map) {
        ListenableFuture listenableFuture = this.m;
        if (listenableFuture == null) {
            return;
        }
        zzdsh zzdshVar = new zzdsh(this, map);
        Executor executor = this.e;
        ((zzgxf) listenableFuture).k(new zzgyk(listenableFuture, zzdshVar), executor);
    }
}
