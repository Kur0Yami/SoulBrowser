package com.google.android.gms.tasks;

/* loaded from: classes3.dex */
final class zza implements OnSuccessListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ OnTokenCanceledListener f11607c;

    public zza(zzb zzbVar, OnTokenCanceledListener onTokenCanceledListener) {
        this.f11607c = onTokenCanceledListener;
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final /* bridge */ /* synthetic */ void onSuccess(Object obj) {
        this.f11607c.a();
    }
}
