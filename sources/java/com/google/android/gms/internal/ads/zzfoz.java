package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.Base64;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzfoz {

    /* renamed from: a, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.client.zzx f7518a;
    public final com.google.android.gms.ads.internal.util.client.zzu b;

    /* renamed from: c, reason: collision with root package name */
    public final zzgyx f7519c;
    public final zzfpa d;
    public final zzcld e;

    public zzfoz(com.google.android.gms.ads.internal.util.client.zzx zzxVar, com.google.android.gms.ads.internal.util.client.zzu zzuVar, zzgyx zzgyxVar, zzfpa zzfpaVar, zzcld zzcldVar) {
        this.f7518a = zzxVar;
        this.b = zzuVar;
        this.f7519c = zzgyxVar;
        this.d = zzfpaVar;
        this.e = zzcldVar;
    }

    public final ListenableFuture a(String str) {
        if (str != null) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g)).booleanValue() || !str.isEmpty()) {
                try {
                    return b(1, str, 0L);
                } catch (NullPointerException | RejectedExecutionException unused) {
                    return zzgym.a(com.google.android.gms.ads.internal.util.client.zzt.zzb);
                }
            }
        }
        return zzgym.a(com.google.android.gms.ads.internal.util.client.zzt.zzb);
    }

    public final ListenableFuture b(final int i, final String str, final long j) {
        final String str2;
        com.google.android.gms.ads.internal.util.client.zzx zzxVar = this.f7518a;
        if (i > zzxVar.zza()) {
            zzfpa zzfpaVar = this.d;
            if (zzfpaVar != null && zzxVar.zzd()) {
                zzehw zzehwVar = new zzehw(2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, str, com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis());
                zzehu zzehuVar = zzfpaVar.f7521a;
                zzehuVar.getClass();
                zzehuVar.a(new zzehr(zzehuVar, zzehwVar));
                return zzgym.a(com.google.android.gms.ads.internal.util.client.zzt.zzd);
            }
            return zzgym.a(com.google.android.gms.ads.internal.util.client.zzt.zzc);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N9)).booleanValue()) {
            Uri parse = Uri.parse(str);
            String encodedQuery = parse.getEncodedQuery();
            Uri.Builder clearQuery = parse.buildUpon().clearQuery();
            clearQuery.appendQueryParameter("pa", Integer.toString(i));
            String valueOf = String.valueOf(clearQuery.build());
            str2 = android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 1 + String.valueOf(encodedQuery).length()), valueOf, "&", encodedQuery);
        } else {
            str2 = str;
        }
        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzfoy
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj) {
                com.google.android.gms.ads.internal.util.client.zzt zztVar = (com.google.android.gms.ads.internal.util.client.zzt) obj;
                com.google.android.gms.ads.internal.util.client.zzt zztVar2 = com.google.android.gms.ads.internal.util.client.zzt.zzc;
                zzfoz zzfozVar = zzfoz.this;
                if (zztVar != zztVar2) {
                    zzfozVar.getClass();
                    return zzgym.a(zztVar);
                }
                com.google.android.gms.ads.internal.util.client.zzx zzxVar2 = zzfozVar.f7518a;
                long zzb = zzxVar2.zzb();
                int i2 = i;
                if (i2 != 1) {
                    zzb = (long) (zzxVar2.zzc() * j);
                }
                return zzfozVar.b(i2 + 1, str, zzb);
            }
        };
        zzgyx zzgyxVar = this.f7519c;
        if (j == 0) {
            return zzgym.h(zzgyxVar.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzfox
                @Override // java.util.concurrent.Callable
                public final /* synthetic */ Object call() {
                    return zzfoz.this.c(str2);
                }
            }), zzgxuVar, zzgyxVar);
        }
        return zzgym.h(zzgyxVar.schedule(new Callable() { // from class: com.google.android.gms.internal.ads.zzfow
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                return zzfoz.this.c(str2);
            }
        }, j, TimeUnit.MILLISECONDS), zzgxuVar, zzgyxVar);
    }

    public final com.google.android.gms.ads.internal.util.client.zzt c(String str) {
        zzcld zzcldVar;
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.fa)).booleanValue();
        String str2 = null;
        com.google.android.gms.ads.internal.util.client.zzu zzuVar = this.b;
        if (booleanValue && (zzcldVar = this.e) != null && (com.google.android.gms.ads.internal.zzt.zzc().zzi(str) || com.google.android.gms.ads.internal.zzt.zzc().zzj(str))) {
            zziic zziicVar = zzcldVar.f5238c;
            if (zziicVar != null) {
                str2 = Base64.encodeToString(zziicVar.h(), 10);
            }
            HashMap hashMap = new HashMap();
            if (str2 != null) {
                hashMap.put((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ga), str2);
            }
            return zzuVar.zzc(str, hashMap);
        }
        return zzuVar.zzc(str, null);
    }
}
