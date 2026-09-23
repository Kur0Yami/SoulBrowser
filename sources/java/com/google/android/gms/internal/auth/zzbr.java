package com.google.android.gms.internal.auth;

import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbr extends zzbd {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbs f9495c;

    public zzbr(zzbs zzbsVar) {
        this.f9495c = zzbsVar;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void zzc(String str) {
        zzbs zzbsVar = this.f9495c;
        if (str != null) {
            zzbsVar.setResult((zzbs) new zzbv(str));
        } else {
            zzbsVar.setResult((zzbs) new zzbv(new Status(3006)));
        }
    }
}
