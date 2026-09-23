package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LocationRequestUpdateDataCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbc> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f10356c;
    public final zzba f;
    public final com.google.android.gms.location.zzbd g;
    public final PendingIntent h;
    public final com.google.android.gms.location.zzba i;
    public final zzai j;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.location.zzbd] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r5v4, types: [com.google.android.gms.location.zzba] */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v7 */
    public zzbc(int i, zzba zzbaVar, IBinder iBinder, PendingIntent pendingIntent, IBinder iBinder2, IBinder iBinder3) {
        ?? r0;
        ?? r5;
        this.f10356c = i;
        this.f = zzbaVar;
        zzai zzaiVar = null;
        if (iBinder == null) {
            r0 = 0;
        } else {
            int i2 = com.google.android.gms.location.zzbc.f11583c;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
            if (queryLocalInterface instanceof com.google.android.gms.location.zzbd) {
                r0 = (com.google.android.gms.location.zzbd) queryLocalInterface;
            } else {
                r0 = new zza(iBinder, "com.google.android.gms.location.ILocationListener");
            }
        }
        this.g = r0;
        this.h = pendingIntent;
        if (iBinder2 == null) {
            r5 = 0;
        } else {
            int i3 = com.google.android.gms.location.zzaz.f11582c;
            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
            if (queryLocalInterface2 instanceof com.google.android.gms.location.zzba) {
                r5 = (com.google.android.gms.location.zzba) queryLocalInterface2;
            } else {
                r5 = new zza(iBinder2, "com.google.android.gms.location.ILocationCallback");
            }
        }
        this.i = r5;
        if (iBinder3 != null) {
            IInterface queryLocalInterface3 = iBinder3.queryLocalInterface("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
            if (queryLocalInterface3 instanceof zzai) {
                zzaiVar = (zzai) queryLocalInterface3;
            } else {
                zzaiVar = new zzag(iBinder3);
            }
        }
        this.j = zzaiVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        IBinder asBinder2;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f10356c);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        IBinder iBinder = null;
        com.google.android.gms.location.zzbd zzbdVar = this.g;
        if (zzbdVar == null) {
            asBinder = null;
        } else {
            asBinder = zzbdVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 3, asBinder, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i, false);
        com.google.android.gms.location.zzba zzbaVar = this.i;
        if (zzbaVar == null) {
            asBinder2 = null;
        } else {
            asBinder2 = zzbaVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 5, asBinder2, false);
        zzai zzaiVar = this.j;
        if (zzaiVar != null) {
            iBinder = zzaiVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 6, iBinder, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
