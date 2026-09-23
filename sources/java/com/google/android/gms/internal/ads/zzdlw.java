package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzdlw implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzdlt f5892a;

    public zzdlw(zzdlt zzdltVar) {
        this.f5892a = zzdltVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Set set;
        zzdnw zzdnwVar = this.f5892a.f5891a.f5888a;
        zzijo.a(zzdnwVar);
        if (zzdnwVar.d != null) {
            set = Collections.singleton("banner");
        } else {
            set = Collections.EMPTY_SET;
        }
        zzijo.a(set);
        return set;
    }
}
