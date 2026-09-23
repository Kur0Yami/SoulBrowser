package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "FullTextSearchFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzl extends zza {
    public static final Parcelable.Creator<zzl> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3714c;

    public zzl(String str) {
        this.f3714c = str;
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        return a.l("fullTextSearch(", this.f3714c, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3714c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
