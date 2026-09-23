package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
final class zzgfm extends zzgfz {
    public final zzgad f;

    public zzgfm(zzavs zzavsVar, zzgev zzgevVar, zzgad zzgadVar, zzgnc zzgncVar) {
        super("wtGqMd/1WM/X8Iw+J3Ea8gTPTQ9qzD2C6TcptISwpBzFOHGXqr9Zam0BzMtLgKpz", "WnUwwSu4en0kDO+iGEQNK9IW8rLFfprwibt/HeKMJc4=", zzavsVar, zzgevVar, zzgncVar.a(116));
        this.f = zzgadVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.f.J());
        objArr.getClass();
        synchronized (zzavsVar) {
            String str = (String) objArr[0];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).I0(str);
            String str2 = (String) objArr[1];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).o0(str2);
        }
    }
}
