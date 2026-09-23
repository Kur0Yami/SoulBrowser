package com.google.android.gms.ads.nonagon.signalgeneration;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzect;
import com.google.android.gms.internal.ads.zzeeg;
import com.google.android.gms.internal.ads.zzgxu;
import com.google.android.gms.internal.ads.zzgym;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
import org.json.JSONException;

/* loaded from: classes.dex */
public final class zzbh implements zzgxu {

    /* renamed from: a, reason: collision with root package name */
    public final Executor f3257a;
    public final zzect b;

    public zzbh(Executor executor, zzect zzectVar) {
        this.f3257a = executor;
        this.b = zzectVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgxu
    public final /* bridge */ /* synthetic */ ListenableFuture zza(Object obj) {
        final zzbza zzbzaVar = (zzbza) obj;
        return zzgym.h(this.b.a(zzbzaVar), new zzgxu() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzbg
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final ListenableFuture zza(Object obj2) {
                zzeeg zzeegVar = (zzeeg) obj2;
                zzbj zzbjVar = new zzbj(new JsonReader(new InputStreamReader(zzeegVar.f6418a)), zzeegVar.b);
                zzbza zzbzaVar2 = zzbza.this;
                try {
                    zzbjVar.zzb = com.google.android.gms.ads.internal.client.zzbb.zza().zzm(zzbzaVar2.f4979c).toString();
                } catch (JSONException unused) {
                    zzbjVar.zzb = "{}";
                }
                Bundle bundle = zzbzaVar2.r;
                if (!bundle.isEmpty()) {
                    try {
                        zzbjVar.zzc = com.google.android.gms.ads.internal.client.zzbb.zza().zzm(bundle).toString();
                    } catch (JSONException unused2) {
                    }
                }
                return zzgym.a(zzbjVar);
            }
        }, this.f3257a);
    }
}
