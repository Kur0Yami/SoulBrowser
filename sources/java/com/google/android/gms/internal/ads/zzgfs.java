package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class zzgfs extends zzgfz {
    public final Context f;

    public zzgfs(zzavs zzavsVar, zzgev zzgevVar, Context context, zzgnc zzgncVar) {
        super("hzhbIB+AgGdYPFXbtYQQJVQ0myyvLQ035lSh6fryM+LYz5yD6wiuaRPJPr0GACLg", "8nQjwnciPBNothZ+NkFCxpR7DmL40cEAF/v8iM4vgFc=", zzavsVar, zzgevVar, zzgncVar.a(119));
        this.f = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.f);
        objArr.getClass();
        synchronized (zzavsVar) {
            long longValue = ((Long) objArr[0]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).J0(longValue);
            long longValue2 = ((Long) objArr[1]).longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).c0(longValue2);
        }
    }
}
