package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;

/* loaded from: classes.dex */
public final class zzedo extends zzbyq {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzedq f6401c;

    public zzedo(zzedq zzedqVar) {
        this.f6401c = zzedqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void K0(com.google.android.gms.ads.internal.util.zzba zzbaVar) {
        this.f6401c.f6403a.b(zzbaVar.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void d1(ParcelFileDescriptor parcelFileDescriptor, zzbza zzbzaVar) {
        this.f6401c.f6403a.a(new zzeeg(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), zzbzaVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbyr
    public final void n3(ParcelFileDescriptor parcelFileDescriptor) {
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor);
        zzedq zzedqVar = this.f6401c;
        zzedqVar.f6403a.a(new zzeeg(autoCloseInputStream, zzedqVar.e));
    }
}
