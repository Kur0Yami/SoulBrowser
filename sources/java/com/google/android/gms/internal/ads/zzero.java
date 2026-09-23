package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzero implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f6851a;

    public zzero(boolean z) {
        this.f6851a = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        String str;
        Bundle bundle = ((zzczm) obj).f5627a;
        if (true != this.f6851a) {
            str = "0";
        } else {
            str = "1";
        }
        bundle.putString("adid_p", str);
    }
}
