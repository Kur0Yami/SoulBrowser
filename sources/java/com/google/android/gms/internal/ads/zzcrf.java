package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;

/* loaded from: classes.dex */
final class zzcrf implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcrm f5398a;

    public zzcrf(zzcrm zzcrmVar) {
        this.f5398a = zzcrmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final /* synthetic */ void a(Object obj) {
        zzcrm zzcrmVar = this.f5398a;
        zzfpe zzfpeVar = zzcrmVar.k;
        zzfic zzficVar = zzcrmVar.i;
        zzfhr zzfhrVar = zzcrmVar.j;
        ArrayList b = zzfpeVar.b(zzficVar, zzfhrVar, false, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (String) obj, zzfhrVar.f7368c, null, null);
        int i = 1;
        if (true == com.google.android.gms.ads.internal.zzt.zzh().k(zzcrmVar.f5405c)) {
            i = 2;
        }
        zzcrmVar.l.b(i, b);
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
    }
}
