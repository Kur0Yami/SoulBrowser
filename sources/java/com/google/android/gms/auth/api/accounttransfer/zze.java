package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import com.google.android.gms.internal.auth.zzau;

/* loaded from: classes.dex */
final class zze extends zzl {
    @Override // com.google.android.gms.auth.api.accounttransfer.zzl
    public final void a(zzau zzauVar) {
        zzd zzdVar = new zzd(this, this);
        Parcel I1 = zzauVar.I1();
        com.google.android.gms.internal.auth.zzc.d(I1, zzdVar);
        I1.writeInt(0);
        zzauVar.r2(6, I1);
    }
}
