package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

@SafeParcelable.Class(creator = "FieldOnlyFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzd extends zza {
    public static final Parcelable.Creator<zzd> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final MetadataBundle f3712c;
    public final MetadataField f;

    public zzd(MetadataBundle metadataBundle) {
        this.f3712c = metadataBundle;
        this.f = zzi.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        return a.l("fieldOnly(", this.f.getName(), ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3712c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
