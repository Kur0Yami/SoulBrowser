package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "NotFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzv extends zza {
    public static final Parcelable.Creator<zzv> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final FilterHolder f3718c;

    public zzv(FilterHolder filterHolder) {
        this.f3718c = filterHolder;
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        return a.l("not(", (String) this.f3718c.n.u(zzdVar), ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3718c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
