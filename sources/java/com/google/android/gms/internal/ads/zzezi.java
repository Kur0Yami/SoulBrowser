package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzezi implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7123a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7124c;
    public final String d;
    public final Long e;

    public zzezi(String str, String str2, String str3, String str4, Long l) {
        this.f7123a = str;
        this.b = str2;
        this.f7124c = str3;
        this.d = str4;
        this.e = l;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        zzfiz.e("fbs_aeid", ((zzczm) obj).b, this.f7124c);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        zzfiz.e("gmp_app_id", bundle, this.f7123a);
        zzfiz.e("fbs_aiid", bundle, this.b);
        zzfiz.e("fbs_aeid", bundle, this.f7124c);
        zzfiz.e("apm_id_origin", bundle, this.d);
        Long l = this.e;
        if (l != null) {
            bundle.putLong("sai_timeout", l.longValue());
        }
    }
}
