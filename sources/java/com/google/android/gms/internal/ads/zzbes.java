package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "CacheEntryParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzbes extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbes> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ParcelFileDescriptor f4599c;
    public final boolean f;
    public final boolean g;
    public final long h;
    public final boolean i;

    public zzbes() {
        this(null, false, false, 0L, false);
    }

    public final synchronized ParcelFileDescriptor.AutoCloseInputStream F() {
        if (this.f4599c == null) {
            return null;
        }
        ParcelFileDescriptor.AutoCloseInputStream autoCloseInputStream = new ParcelFileDescriptor.AutoCloseInputStream(this.f4599c);
        this.f4599c = null;
        return autoCloseInputStream;
    }

    public final synchronized boolean G() {
        return this.g;
    }

    public final synchronized long X() {
        return this.h;
    }

    public final synchronized boolean k0() {
        return this.i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        ParcelFileDescriptor parcelFileDescriptor;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        synchronized (this) {
            parcelFileDescriptor = this.f4599c;
        }
        SafeParcelWriter.writeParcelable(parcel, 2, parcelFileDescriptor, i, false);
        SafeParcelWriter.writeBoolean(parcel, 3, zzd());
        SafeParcelWriter.writeBoolean(parcel, 4, G());
        SafeParcelWriter.writeLong(parcel, 5, X());
        SafeParcelWriter.writeBoolean(parcel, 6, k0());
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public final synchronized boolean zza() {
        return this.f4599c != null;
    }

    public final synchronized boolean zzd() {
        return this.f;
    }

    public zzbes(ParcelFileDescriptor parcelFileDescriptor, boolean z, boolean z2, long j, boolean z3) {
        this.f4599c = parcelFileDescriptor;
        this.f = z;
        this.g = z2;
        this.h = j;
        this.i = z3;
    }
}
