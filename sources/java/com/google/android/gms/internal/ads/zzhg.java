package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
public final class zzhg implements zzha {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8516a;
    public final zzhi b;

    public zzhg(Context context) {
        zzhi zzhiVar = new zzhi();
        this.f8516a = context.getApplicationContext();
        this.b = zzhiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzha
    public final /* bridge */ /* synthetic */ zzhb zza() {
        return new zzhh(this.f8516a, this.b.zza());
    }
}
