package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzeyv implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7102a;
    public final int b;

    public zzeyv(String str, int i) {
        this.f7102a = str;
        this.b = i;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((zzczm) obj).b.putString("request_id", this.f7102a);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putString("request_id", this.f7102a);
        if (this.b == 2) {
            bundle.putInt("sod", 1);
        }
    }
}
