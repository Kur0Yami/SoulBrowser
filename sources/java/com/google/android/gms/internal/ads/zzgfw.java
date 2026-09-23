package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgfw extends zzgfz {
    public final zzgba f;
    public final Context g;
    public final Map h;

    public zzgfw(zzavs zzavsVar, zzgev zzgevVar, zzgba zzgbaVar, Context context, Map map, zzgnc zzgncVar) {
        super("jTwehpFvggflbSQgZ6TF5ZqO2MGz4ZNlyaEKeNyxM2KkBYQA70h6S0RpRF1AFrD5", "26X1QwwnBSG6Ity/sCu7ijF3yvcDEyHR/EuBkm0iUZc=", zzavsVar, zzgevVar, zzgncVar.a(121));
        this.f = zzgbaVar;
        this.g = context;
        this.h = map;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        zzgba zzgbaVar = this.f;
        Integer valueOf = Integer.valueOf(zzgbaVar.ordinal());
        Context context = this.g;
        Object obj = this.h.get("up");
        Boolean bool = Boolean.TRUE;
        if (obj == null) {
            obj = bool;
        }
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, valueOf, context, obj);
        objArr.getClass();
        synchronized (zzavsVar) {
            try {
                if (zzgbaVar == zzgba.f7790c) {
                    Object obj2 = objArr[0];
                    Object obj3 = -1L;
                    if (obj2 == null) {
                        obj2 = obj3;
                    }
                    long longValue = ((Long) obj2).longValue();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).E(longValue);
                    Object obj4 = objArr[1];
                    if (obj4 != null) {
                        obj3 = obj4;
                    }
                    long longValue2 = ((Long) obj3).longValue();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).F(longValue2);
                }
                long longValue3 = ((Long) objArr[2]).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).N0(longValue3);
                long longValue4 = ((Long) objArr[3]).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).e0(longValue4);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
