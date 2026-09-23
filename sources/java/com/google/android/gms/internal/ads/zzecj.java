package com.google.android.gms.internal.ads;

import android.content.Context;
import android.webkit.CookieManager;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.util.Collections;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzecj implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijf f6366a;
    public final zzijf b;

    public zzecj(zzijf zzijfVar, zzijf zzijfVar2) {
        this.f6366a = zzijfVar;
        this.b = zzijfVar2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [com.google.android.gms.internal.ads.zzgxu, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzijv
    public final Object zzb() {
        zzfmu zzfmuVar = (zzfmu) this.f6366a.zzb();
        final CookieManager zza = com.google.android.gms.ads.internal.zzt.zzf().zza((Context) this.b.zzb());
        Objects.requireNonNull(zzfmuVar);
        Callable callable = new Callable() { // from class: com.google.android.gms.internal.ads.zzece
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                CookieManager cookieManager = zza;
                if (cookieManager == null) {
                    return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                return cookieManager.getCookie((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s1));
            }
        };
        zzgyw zzgywVar = zzfmuVar.f7481a;
        zzfml zzfmlVar = new zzfml(zzfmuVar, zzfmo.WEBVIEW_COOKIE, null, zzfmm.d, Collections.EMPTY_LIST, zzgywVar.v0(callable));
        TimeUnit timeUnit = TimeUnit.SECONDS;
        zzfml c2 = zzfmlVar.c(1L);
        ?? obj = new Object();
        zzfmm zzfmmVar = c2.f;
        zzgyw zzgywVar2 = zzfmmVar.f7481a;
        return new zzfml(zzfmmVar, c2.f7479a, c2.b, c2.f7480c, c2.d, zzgym.f(c2.e, Exception.class, obj, zzgywVar2)).d();
    }
}
