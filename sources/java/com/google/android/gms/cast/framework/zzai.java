package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.ConnectionResult;

/* loaded from: classes.dex */
public final class zzai extends com.google.android.gms.internal.cast.zza implements zzak {
    @Override // com.google.android.gms.cast.framework.zzak
    public final void a1(boolean z) {
        Parcel I1 = I1();
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        I1.writeInt(z ? 1 : 0);
        I1.writeInt(0);
        r2(6, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzak
    public final void d(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(5, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzak
    public final void n1(ConnectionResult connectionResult) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.b(I1, connectionResult);
        r2(3, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzak
    public final void s0(ApplicationMetadata applicationMetadata, String str, String str2, boolean z) {
        Parcel I1 = I1();
        com.google.android.gms.internal.cast.zzc.b(I1, applicationMetadata);
        I1.writeString(str);
        I1.writeString(str2);
        I1.writeInt(z ? 1 : 0);
        r2(4, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzak
    public final void z3() {
        Parcel I1 = I1();
        int i = com.google.android.gms.internal.cast.zzc.f9645a;
        I1.writeInt(0);
        r2(1, I1);
    }

    @Override // com.google.android.gms.cast.framework.zzak
    public final void zzf(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(2, I1);
    }
}
