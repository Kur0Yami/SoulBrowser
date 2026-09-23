package com.google.android.gms.internal.ads;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class zzesx implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final String f6902a;
    public final boolean b;

    public zzesx(String str, boolean z) {
        this.f6902a = str;
        this.b = z;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        String str = this.f6902a;
        if (str != null) {
            Bundle a2 = zzfiz.a("pii", zzczmVar.f5627a);
            a2.putString("afai", str);
            a2.putBoolean("is_afai_lat", this.b);
        }
    }
}
