package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import j$.util.Objects;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzeoi implements zzejg {

    /* renamed from: a, reason: collision with root package name */
    public final zzeji f6753a;
    public final zzejm b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfmu f6754c;
    public final zzgyw d;

    public zzeoi(zzfmu zzfmuVar, zzgyw zzgywVar, zzeji zzejiVar, zzejm zzejmVar) {
        this.f6754c = zzfmuVar;
        this.d = zzgywVar;
        this.b = zzejmVar;
        this.f6753a = zzejiVar;
    }

    public static final String c(int i, String str) {
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 20 + String.valueOf(i).length());
        sb.append("Error from: ");
        sb.append(str);
        sb.append(", code: ");
        sb.append(i);
        return sb.toString();
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdbu] */
    @Override // com.google.android.gms.internal.ads.zzejg
    public final ListenableFuture a(final zzfic zzficVar, final zzfhr zzfhrVar) {
        final zzejj zzejjVar;
        Iterator it = zzfhrVar.t.iterator();
        while (true) {
            if (it.hasNext()) {
                try {
                    zzejjVar = this.f6753a.a(zzfhrVar.v, (String) it.next());
                    break;
                } catch (zzfir unused) {
                }
            } else {
                zzejjVar = null;
                break;
            }
        }
        if (zzejjVar == null) {
            return zzgym.b(new zzebr(3, "Unable to instantiate mediation adapter class."));
        }
        zzcdt zzcdtVar = new zzcdt();
        zzejjVar.f6560c.r2(new zzeof(this, zzejjVar, zzcdtVar));
        if (zzfhrVar.M) {
            Bundle bundle = zzficVar.f7383a.f7378a.d.zzm;
            Bundle bundle2 = bundle.getBundle(AdMobAdapter.class.getName());
            if (bundle2 == null) {
                bundle2 = new Bundle();
                bundle.putBundle(AdMobAdapter.class.getName(), bundle2);
            }
            bundle2.putBoolean("render_test_ad_label", true);
        }
        zzfmu zzfmuVar = this.f6754c;
        Objects.requireNonNull(zzfmuVar);
        zzfme zzfmeVar = new zzfme(new zzfma() { // from class: com.google.android.gms.internal.ads.zzeoh
            @Override // com.google.android.gms.internal.ads.zzfma
            public final /* synthetic */ void zza() {
                zzeoi.this.b.a(zzficVar, zzfhrVar, zzejjVar);
            }
        });
        zzfml zzfmlVar = new zzfml(zzfmuVar, zzfmo.ADAPTER_LOAD_AD_SYN, null, zzfmm.d, Collections.EMPTY_LIST, this.d.v0(zzfmeVar));
        zzfml a2 = zzfmlVar.f.a(zzfmlVar.d(), zzfmo.ADAPTER_LOAD_AD_ACK);
        zzfmh zzfmhVar = new zzfmh(zzcdtVar);
        zzgyw zzgywVar = zzcdo.g;
        zzfml zzfmlVar2 = new zzfml(a2.f, a2.f7479a, a2.b, a2.f7480c, a2.d, zzgym.h(a2.e, zzfmhVar, zzgywVar));
        return zzfmlVar2.f.a(zzfmlVar2.d(), zzfmo.ADAPTER_WRAP_ADAPTER).a(new zzflu() { // from class: com.google.android.gms.internal.ads.zzeog
            @Override // com.google.android.gms.internal.ads.zzflu
            public final /* synthetic */ Object zza(Object obj) {
                return zzeoi.this.b.b(zzficVar, zzfhrVar, zzejjVar);
            }
        }).d();
    }

    @Override // com.google.android.gms.internal.ads.zzejg
    public final boolean b(zzfic zzficVar, zzfhr zzfhrVar) {
        if (!zzfhrVar.t.isEmpty()) {
            return true;
        }
        return false;
    }
}
