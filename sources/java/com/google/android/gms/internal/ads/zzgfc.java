package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzgfc extends zzgfz {
    public final Activity f;
    public final View g;

    public zzgfc(zzavs zzavsVar, zzgev zzgevVar, View view, Activity activity, zzgnc zzgncVar) {
        super("qRoTIX01TXm6ZXZVmOMKT4ZXdjMMLNGK2c/NbGGBLqG2cMg0IUL/T2oTGpQvSnC1", "ca4PDuMQK3q/+ALDD/ITco9AaE4C+BCyDm2ZesJa1q0=", zzavsVar, zzgevVar, zzgncVar.a(111));
        this.g = view;
        this.f = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.g, this.f);
        objArr.getClass();
        synchronized (zzavsVar) {
            long longValue = ((Long) objArr[0]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).g0(longValue);
            long longValue2 = ((Long) objArr[1]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).h0(longValue2);
            String str = (String) objArr[2];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).i0(str);
        }
    }
}
