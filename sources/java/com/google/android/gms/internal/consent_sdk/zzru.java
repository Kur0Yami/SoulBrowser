package com.google.android.gms.internal.consent_sdk;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzru implements zzsa {

    /* renamed from: a, reason: collision with root package name */
    public final zzrq f10101a;
    public final zzsp b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10102c;

    public zzru(zzsp zzspVar, zzrq zzrqVar) {
        zzqc zzqcVar = zzqd.f10079a;
        this.b = zzspVar;
        this.f10102c = zzrqVar instanceof zzqk;
        this.f10101a = zzrqVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final void a(Object obj) {
        this.b.a(obj);
        zzqd.f10079a.a(obj);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final boolean b(Object obj) {
        ((zzqk) obj).zzb.e();
        return true;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final int c(zzqm zzqmVar) {
        zzqmVar.zzc.getClass();
        if (this.f10102c) {
            return 26870523 + ((zzqk) zzqmVar).zzb.f10080a.hashCode();
        }
        return 506991;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final boolean d(zzqm zzqmVar, zzqm zzqmVar2) {
        if (!zzqmVar.zzc.equals(zzqmVar2.zzc)) {
            return false;
        }
        if (this.f10102c) {
            return ((zzqk) zzqmVar).zzb.equals(((zzqk) zzqmVar2).zzb);
        }
        return true;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final void e(Object obj, Object obj2) {
        zzsc.l(obj, obj2);
        if (this.f10102c) {
            zzqc zzqcVar = zzqd.f10079a;
            if (!((zzqk) obj2).zzb.f10080a.isEmpty()) {
                throw null;
            }
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final int f(zzqm zzqmVar) {
        zzsq zzsqVar = zzqmVar.zzc;
        int i = zzsqVar.f10115c;
        if (i == -1) {
            zzsqVar.f10115c = 0;
            i = 0;
        }
        if (this.f10102c) {
            zzsd zzsdVar = ((zzqk) zzqmVar).zzb.f10080a;
            if (zzsdVar.f <= 0) {
                Iterator it = zzsdVar.b().iterator();
                if (it.hasNext()) {
                    zzqf.g((Map.Entry) it.next());
                    throw null;
                }
            } else {
                zzqf.g(zzsdVar.d(0));
                throw null;
            }
        }
        return i;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final void g(Object obj, zzpw zzpwVar) {
        Iterator b = ((zzqk) obj).zzb.b();
        if (!b.hasNext()) {
            ((zzqm) obj).zzc.getClass();
        } else {
            ((zzqe) ((Map.Entry) b.next()).getKey()).zzc();
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzsa
    public final Object zzc() {
        zzrq zzrqVar = this.f10101a;
        if (zzrqVar instanceof zzqm) {
            return (zzqm) ((zzqm) zzrqVar).f(4);
        }
        return zzrqVar.zzu().d();
    }
}
