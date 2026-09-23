package com.google.android.gms.cast;

import android.os.Parcel;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.internal.cast.zzff;

/* loaded from: classes.dex */
final class zzi extends zzo {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.cast.zzo, com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    /* renamed from: b */
    public final void doExecute(com.google.android.gms.cast.internal.zzx zzxVar) {
        try {
            zzxVar.g(this);
            zzbn zzbnVar = new zzbn();
            com.google.android.gms.cast.internal.zzah zzahVar = (com.google.android.gms.cast.internal.zzah) zzxVar.getService();
            if (zzxVar.d()) {
                ApiMetadata a2 = zzff.a(zzxVar.getContext());
                Parcel I1 = zzahVar.I1();
                I1.writeString(null);
                I1.writeString(null);
                com.google.android.gms.internal.cast.zzc.b(I1, zzbnVar);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzahVar.v2(14, I1);
                return;
            }
            zzxVar.f(2016);
        } catch (IllegalStateException unused) {
            a();
        }
    }
}
