package com.google.android.gms.internal.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DeviceOrientationRequestUpdateDataCreator")
/* loaded from: classes3.dex */
public final class zzl extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzl> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10364c;
    public final zzj f;
    public final com.google.android.gms.location.zzax g;
    public final zzai h;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.location.zzax] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    public zzl(int i, zzj zzjVar, IBinder iBinder, IBinder iBinder2) {
        ?? r0;
        this.f10364c = i;
        this.f = zzjVar;
        zzai zzaiVar = null;
        if (iBinder == null) {
            r0 = 0;
        } else {
            int i2 = com.google.android.gms.location.zzaw.f11581c;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
            if (queryLocalInterface instanceof com.google.android.gms.location.zzax) {
                r0 = (com.google.android.gms.location.zzax) queryLocalInterface;
            } else {
                r0 = new zza(iBinder, "com.google.android.gms.location.IDeviceOrientationListener");
            }
        }
        this.g = r0;
        if (iBinder2 != null) {
            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            if (queryLocalInterface2 instanceof zzai) {
                zzaiVar = (zzai) queryLocalInterface2;
            } else {
                zzaiVar = new zzag(iBinder2);
            }
        }
        this.h = zzaiVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10364c);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        IBinder iBinder = null;
        com.google.android.gms.location.zzax zzaxVar = this.g;
        if (zzaxVar == null) {
            asBinder = null;
        } else {
            asBinder = zzaxVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 3, asBinder, false);
        zzai zzaiVar = this.h;
        if (zzaiVar != null) {
            iBinder = zzaiVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 4, iBinder, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
