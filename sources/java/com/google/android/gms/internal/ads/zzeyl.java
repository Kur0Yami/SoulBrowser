package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeyl implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7087a;
    public final Integer b;

    /* renamed from: c, reason: collision with root package name */
    public final String f7088c;
    public final String d;
    public final String e;
    public final String f;

    public zzeyl(String str, Integer num, String str2, String str3, String str4, String str5) {
        this.f7087a = str;
        this.b = num;
        this.f7088c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        Bundle bundle = ((zzczm) obj).b;
        zzfiz.e("pn", bundle, this.f7087a);
        zzfiz.e("dl", bundle, this.d);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        zzfiz.e("pn", bundle, this.f7087a);
        Integer num = this.b;
        if (num != null) {
            bundle.putInt("vc", num.intValue());
        }
        zzfiz.e("vnm", bundle, this.f7088c);
        zzfiz.e("dl", bundle, this.d);
        zzfiz.e("ins_pn", bundle, this.e);
        zzfiz.e("ini_pn", bundle, this.f);
    }
}
