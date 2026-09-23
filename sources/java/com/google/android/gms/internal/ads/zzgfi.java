package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzgfi extends zzgfz {
    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        synchronized (zzavsVar) {
            zzavsVar.k();
            ((zzawp) zzavsVar.f).H0("E");
            zzavsVar.k();
            ((zzawp) zzavsVar.f).P(0L);
            zzavsVar.k();
            ((zzawp) zzavsVar.f).j0("D");
        }
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null);
        objArr.getClass();
        synchronized (zzavsVar) {
            String str = (String) objArr[0];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).H0(str);
            long longValue = ((Long) objArr[1]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).P(longValue);
            String str2 = (String) objArr[2];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).j0(str2);
        }
    }
}
