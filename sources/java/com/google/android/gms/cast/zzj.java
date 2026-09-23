package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.internal.cast.zzff;

/* loaded from: classes.dex */
final class zzj extends com.google.android.gms.cast.internal.zzae {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.cast.internal.zzae, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            zzxVar.h(this);
            com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzxVar.getService();
            if (zzxVar.d()) {
                ApiMetadata a2 = zzff.a(zzxVar.getContext());
                Parcel I1 = zzahVar.I1();
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(4, I1);
                return;
            }
            zzxVar.k(2016);
        } catch (IllegalStateException unused) {
            a();
        }
    }
}
