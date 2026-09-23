package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzezh implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzcbw f7121a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f7122c;

    public zzezh(zzcbw zzcbwVar, zzgyw zzgywVar, Context context) {
        this.f7121a = zzcbwVar;
        this.b = zzgywVar;
        this.f7122c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzezg
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                String str;
                String str2;
                String str3;
                String str4;
                String str5;
                zzezh zzezhVar = zzezh.this;
                zzcbw zzcbwVar = zzezhVar.f7121a;
                Context context = zzezhVar.f7122c;
                if (!zzcbwVar.a(context)) {
                    return new zzezi(null, null, null, null, null);
                }
                String b = zzcbwVar.b(context);
                if (b == null) {
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str = b;
                }
                String c2 = zzcbwVar.c(context);
                if (c2 == null) {
                    str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str2 = c2;
                }
                String d = zzcbwVar.d(context);
                if (d == null) {
                    str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str3 = d;
                }
                boolean a2 = zzcbwVar.a(context);
                Long l = null;
                if (true != a2) {
                    str4 = null;
                } else {
                    str4 = "fa";
                }
                if ("TIME_OUT".equals(str2)) {
                    l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.P0);
                }
                Long l2 = l;
                if (str4 == null) {
                    str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    str5 = str4;
                }
                return new zzezi(str, str2, str3, str5, l2);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 34;
    }
}
