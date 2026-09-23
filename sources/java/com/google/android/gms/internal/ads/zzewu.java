package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzewu implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f7035a;
    public final boolean b;

    public zzewu(String str, boolean z) {
        this.f7035a = str;
        this.b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        ((zzczm) obj).b.putString("gct", this.f7035a);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzczm) obj).f5627a;
        bundle.putString("gct", this.f7035a);
        if (this.b) {
            bundle.putString("de", "1");
        }
    }
}
