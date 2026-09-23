package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class zzetl implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f6919a;
    public final int b;

    public zzetl(String str, int i) {
        this.f6919a = str;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        int i;
        Bundle bundle = ((zzczm) obj).f5627a;
        String str = this.f6919a;
        if (!TextUtils.isEmpty(str) && (i = this.b) != -1) {
            Bundle a2 = zzfiz.a("pii", bundle);
            bundle.putBundle("pii", a2);
            a2.putString("pvid", str);
            a2.putInt("pvid_s", i);
        }
    }
}
