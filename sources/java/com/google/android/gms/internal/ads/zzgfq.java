package com.google.android.gms.internal.ads;

import android.net.NetworkCapabilities;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgfq extends zzgfz {
    public final Map f;

    public zzgfq(zzavs zzavsVar, zzgev zzgevVar, Map map, zzgnc zzgncVar) {
        super("HfOLt/75P0inB1ACQtpmoZ+1+wQRBgHtknW9eFeTyv4KW5Suh8LSIOlyCgysGkTB", "H5oaXmgEE2ioSjZtswlhWck6Iz70pHSCwKmqgx59qOA=", zzavsVar, zzgevVar, zzgncVar.a(118));
        this.f = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Map map = this.f;
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (NetworkCapabilities) map.get("ntc"), (Long) map.get("vs"), (Long) map.get("vf"));
        objArr.getClass();
        synchronized (zzavsVar) {
            long longValue = ((Long) objArr[0]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).M0(longValue);
            long longValue2 = ((Long) objArr[1]).longValue();
            if (longValue2 >= 0) {
                zzavsVar.k();
                ((zzawp) zzavsVar.f).k0(longValue2);
            }
            long longValue3 = ((Long) objArr[2]).longValue();
            if (longValue3 >= 0) {
                zzavsVar.k();
                ((zzawp) zzavsVar.f).l0(longValue3);
            }
        }
    }
}
