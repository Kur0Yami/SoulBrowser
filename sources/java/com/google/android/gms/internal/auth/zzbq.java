package com.google.android.gms.internal.auth;

import android.os.Parcel;

/* loaded from: classes.dex */
final class zzbq extends zzbi {
    @Override // com.google.android.gms.internal.auth.zzbi
    public final void a(zzbh zzbhVar) {
        zzbp zzbpVar = new zzbp(this);
        Parcel I1 = zzbhVar.I1();
        zzc.d(I1, zzbpVar);
        I1.writeInt(0);
        zzbhVar.r2(1, I1);
    }
}
