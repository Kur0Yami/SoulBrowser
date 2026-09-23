package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzcsd implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f5430a;
    public final zzijf b;

    public zzcsd(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f5430a = zzijfVar;
        this.b = zzijfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set singleton;
        zzcrx zzcrxVar = (zzcrx) this.f5430a.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        if (((JSONObject) this.b.zzb()) == null) {
            singleton = Collections.EMPTY_SET;
        } else {
            singleton = Collections.singleton(new zzdij(zzcrxVar, zzgywVar));
        }
        zzijo.a(singleton);
        return singleton;
    }
}
