package com.google.android.gms.drive.query.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

@SafeParcelable.Class(creator = "HasFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzn<T> extends zza {
    public static final zzo CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final MetadataBundle f3715c;
    public final MetadataField f;

    public zzn(MetadataBundle metadataBundle) {
        this.f3715c = metadataBundle;
        this.f = zzi.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        Bundle bundle = this.f3715c.f3701c;
        MetadataField metadataField = this.f;
        return String.format("has(%s,%s)", metadataField.getName(), metadataField.b(bundle));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3715c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
