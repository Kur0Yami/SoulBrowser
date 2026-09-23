package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "FilterHolderCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class FilterHolder extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzb f3710c;
    public final zzd f;
    public final zzr g;
    public final zzv h;
    public final zzp i;
    public final zzt j;
    public final zzn k;
    public final zzl l;
    public final zzz m;
    public final zza n;

    public FilterHolder(zzb zzbVar, zzd zzdVar, zzr zzrVar, zzv zzvVar, zzp zzpVar, zzt zztVar, zzn zznVar, zzl zzlVar, zzz zzzVar) {
        this.f3710c = zzbVar;
        this.f = zzdVar;
        this.g = zzrVar;
        this.h = zzvVar;
        this.i = zzpVar;
        this.j = zztVar;
        this.k = zznVar;
        this.l = zzlVar;
        this.m = zzzVar;
        if (zzbVar != null) {
            this.n = zzbVar;
            return;
        }
        if (zzdVar != null) {
            this.n = zzdVar;
            return;
        }
        if (zzrVar != null) {
            this.n = zzrVar;
            return;
        }
        if (zzvVar != null) {
            this.n = zzvVar;
            return;
        }
        if (zzpVar != null) {
            this.n = zzpVar;
            return;
        }
        if (zztVar != null) {
            this.n = zztVar;
            return;
        }
        if (zznVar != null) {
            this.n = zznVar;
        } else if (zzlVar != null) {
            this.n = zzlVar;
        } else {
            if (zzzVar != null) {
                this.n = zzzVar;
                return;
            }
            throw new IllegalArgumentException("At least one filter must be set.");
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3710c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.k, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.l, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.m, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
