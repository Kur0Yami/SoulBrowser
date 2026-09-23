package com.google.android.gms.internal.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzen extends zzer {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.cast.zzer, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: a */
    public final void doExecute(zzew zzewVar) {
        zzeq zzeqVar = new zzeq(this);
        zzewVar.getClass();
        zzew.f9689c.b("stopRemoteDisplay", new Object[0]);
        zzez zzezVar = (zzez) zzewVar.getService();
        ApiMetadata a2 = zzff.a(zzewVar.getContext());
        Parcel I1 = zzezVar.I1();
        zzc.c(I1, zzeqVar);
        zzc.b(I1, a2);
        zzezVar.v2(6, I1);
    }
}
