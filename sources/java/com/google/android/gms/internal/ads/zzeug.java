package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Strings;
import com.google.common.util.concurrent.ListenableFuture;

/* loaded from: classes.dex */
public final class zzeug implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzfer f6945a;

    public zzeug(zzfer zzferVar) {
        this.f6945a = zzferVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        zzfer zzferVar = this.f6945a;
        if (zzferVar == null) {
            return zzgym.a(new zzeuf(null));
        }
        String str = zzferVar.f7283a;
        if (Strings.isEmptyOrWhitespace(str)) {
            return zzgym.a(new zzeuf(null));
        }
        return zzgym.a(new zzeuf(str));
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 15;
    }
}
