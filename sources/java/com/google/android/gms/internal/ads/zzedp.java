package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class zzedp extends zzbyq {

    /* renamed from: c, reason: collision with root package name */
    public final zzcdt f6402c;
    public final zzbza f;

    public zzedp(zzcdt zzcdtVar, zzbza zzbzaVar) {
        this.f6402c = zzcdtVar;
        this.f = zzbzaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void K0(com.google.android.gms.ads.internal.util.zzba zzbaVar) {
        this.f6402c.b(zzbaVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void d1(ParcelFileDescriptor parcelFileDescriptor, zzbza zzbzaVar) {
        this.f6402c.a(new zzeeg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbzaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void n3(ParcelFileDescriptor parcelFileDescriptor) {
        this.f6402c.a(new zzeeg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f));
    }
}
