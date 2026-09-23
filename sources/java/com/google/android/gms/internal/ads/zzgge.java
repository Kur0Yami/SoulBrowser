package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.View;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzgge extends zzgfz {
    public final DisplayMetrics f;
    public final View g;

    public zzgge(zzavs zzavsVar, zzgev zzgevVar, DisplayMetrics displayMetrics, View view, zzgnc zzgncVar) {
        super("tq9z0bsqyfYem1dUfogYnUtJjgIFA+joGg8QA4Yjc06GGolRKpj33I2byFl1ahrM", "t+27szabmNhDv89ZHseqqkrSfYo80HKd8ZuzbFtUHyo=", zzavsVar, zzgevVar, zzgncVar.a(124));
        this.f = displayMetrics;
        this.g = view;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        View view = this.g;
        if (view == null) {
            return;
        }
        Object invoke = method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.f, view);
        invoke.getClass();
        Long[] lArr = (Long[]) invoke;
        zzawn D = zzawo.D();
        long longValue = lArr[2].longValue();
        D.k();
        ((zzawo) D.f).F(longValue);
        long longValue2 = lArr[1].longValue();
        D.k();
        ((zzawo) D.f).G(longValue2);
        long longValue3 = lArr[0].longValue();
        D.k();
        ((zzawo) D.f).H(longValue3);
        long longValue4 = lArr[3].longValue();
        D.k();
        ((zzawo) D.f).E(longValue4);
        long longValue5 = lArr[4].longValue();
        D.k();
        ((zzawo) D.f).I(longValue5);
        zzawo zzawoVar = (zzawo) D.m();
        zzavsVar.k();
        ((zzawp) zzavsVar.f).Z(zzawoVar);
    }
}
