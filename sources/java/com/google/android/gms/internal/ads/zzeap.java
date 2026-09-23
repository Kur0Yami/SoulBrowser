package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class zzeap implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzclp f6318a;
    public final zzclq b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijf f6319c;

    public zzeap(zzclp zzclpVar, zzclq zzclqVar, zzijf zzijfVar) {
        this.f6318a = zzclpVar;
        this.b = zzclqVar;
        this.f6319c = zzijfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        Context a2 = this.f6318a.a();
        WeakReference weakReference = this.b.f5253a.d;
        zzijo.a(weakReference);
        zzeav zzeavVar = (zzeav) this.f6319c.zzb();
        zzgyw zzgywVar = zzcdo.f5068a;
        zzijo.a(zzgywVar);
        return new zzebh(a2, weakReference, zzeavVar, zzgywVar);
    }
}
