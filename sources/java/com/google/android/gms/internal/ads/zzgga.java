package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgga extends zzgfz {
    public final Map f;
    public final zzgba g;

    public zzgga(zzavs zzavsVar, zzgev zzgevVar, zzgba zzgbaVar, Map map, zzgnc zzgncVar) {
        super("PL1+PnLeilPUwoW2fO9HYIrx4Gg09J/+FJQHQ2Jxmj5/l/Syl1OYiCh2G/imF0wq", "lSzEOSnnLGs69ZQnPGdq+hn/fw2CPePS7EJBVgPn7n4=", zzavsVar, zzgevVar, zzgncVar.a(122));
        this.f = map;
        this.g = zzgbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Long[] lArr = new Long[9];
        Arrays.fill((Object[]) lArr, (Object) (-1L));
        Map map = this.f;
        Long l = (Long) map.get("tcq");
        if (l == null) {
            l = -1L;
        }
        lArr[0] = l;
        Long l2 = (Long) map.get("tpq");
        if (l2 == null) {
            l2 = -1L;
        }
        lArr[1] = l2;
        Long l3 = (Long) map.get("tcv");
        if (l3 == null) {
            l3 = -1L;
        }
        lArr[2] = l3;
        Long l4 = (Long) map.get("tpv");
        if (l4 == null) {
            l4 = -1L;
        }
        lArr[3] = l4;
        Long l5 = (Long) map.get("tchv");
        if (l5 == null) {
            l5 = -1L;
        }
        lArr[4] = l5;
        Long l6 = (Long) map.get("tphv");
        if (l6 == null) {
            l6 = -1L;
        }
        lArr[5] = l6;
        Long l7 = (Long) map.get("tcc");
        if (l7 == null) {
            l7 = -1L;
        }
        lArr[6] = l7;
        Long l8 = (Long) map.get("tpc");
        if (l8 == null) {
            l8 = -1L;
        }
        lArr[7] = l8;
        Long l9 = (Long) map.get("tst");
        if (l9 == null) {
            l9 = -1L;
        }
        lArr[8] = l9;
        for (int i = 0; i < 9; i++) {
            if (lArr[i] == null) {
                lArr[i] = -1L;
            }
        }
        Long[] lArr2 = (Long[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, lArr, Integer.valueOf(this.g.ordinal()));
        lArr2.getClass();
        synchronized (zzavsVar) {
            long longValue = lArr2[0].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).q0(longValue);
            long longValue2 = lArr2[1].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).G(longValue2);
            long longValue3 = lArr2[2].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).U0(longValue3);
            long longValue4 = lArr2[3].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).R0(longValue4);
            long longValue5 = lArr2[4].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).m0(longValue5);
            long longValue6 = lArr2[5].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).n0(longValue6);
            long longValue7 = lArr2[6].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).T(longValue7);
            long longValue8 = lArr2[7].longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).U(longValue8);
        }
    }
}
