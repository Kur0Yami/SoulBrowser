package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
final class zzewo implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7028a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Bundle f7029c;

    public /* synthetic */ zzewo(String str, Bundle bundle, String str2) {
        this.f7028a = str;
        this.b = str2;
        this.f7029c = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putString("consent_string", this.f7028a);
        bundle.putString("fc_consent", this.b);
        Bundle bundle2 = this.f7029c;
        if (bundle2 != null) {
            bundle.putBundle("iab_consent_info", bundle2);
        }
    }
}
