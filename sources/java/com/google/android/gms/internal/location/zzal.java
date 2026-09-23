package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.StatusCallback;
import com.google.android.gms.location.LocationAvailability;

/* loaded from: classes3.dex */
public final class zzal extends zza implements zzam {
    @Override // com.google.android.gms.internal.location.zzam
    public final void G1(StatusCallback statusCallback) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        zzc.c(I1, statusCallback);
        f2(69, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void G3(zzao zzaoVar) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        zzc.c(I1, zzaoVar);
        I1.writeString(null);
        f2(63, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void I3(zzak zzakVar) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        zzc.c(I1, zzakVar);
        f2(74, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void S4(StatusCallback statusCallback) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        I1.writeInt(0);
        zzc.c(I1, statusCallback);
        f2(72, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void V4(IStatusCallback iStatusCallback) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        I1.writeInt(0);
        zzc.c(I1, iStatusCallback);
        f2(79, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void Z(StatusCallback statusCallback) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        zzc.c(I1, statusCallback);
        f2(73, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void f0(zzbc zzbcVar) {
        Parcel I1 = I1();
        zzc.b(I1, zzbcVar);
        f2(59, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void h0(zzak zzakVar, String str) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        zzc.c(I1, zzakVar);
        I1.writeString(str);
        f2(2, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void l2(zzl zzlVar) {
        Parcel I1 = I1();
        zzc.b(I1, zzlVar);
        f2(75, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void m0(zzak zzakVar) {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        I1.writeInt(0);
        zzc.c(I1, zzakVar);
        f2(57, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void p3(zzah zzahVar) {
        Parcel I1 = I1();
        zzc.c(I1, zzahVar);
        f2(67, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final LocationAvailability z0(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f10347c.transact(34, I1, obtain, 0);
                obtain.readException();
                I1.recycle();
                LocationAvailability locationAvailability = (LocationAvailability) zzc.a(obtain, LocationAvailability.CREATOR);
                obtain.recycle();
                return locationAvailability;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } catch (Throwable th) {
            I1.recycle();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzh() {
        Parcel I1 = I1();
        I1.writeLong(0L);
        int i = zzc.f10360a;
        I1.writeInt(1);
        I1.writeInt(0);
        f2(5, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzk() {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        f2(6, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzp() {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        f2(12, I1);
    }

    @Override // com.google.android.gms.internal.location.zzam
    public final void zzq() {
        Parcel I1 = I1();
        int i = zzc.f10360a;
        I1.writeInt(0);
        f2(13, I1);
    }
}
