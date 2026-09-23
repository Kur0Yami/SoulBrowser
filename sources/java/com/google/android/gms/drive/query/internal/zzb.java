package com.google.android.gms.drive.query.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

@SafeParcelable.Class(creator = "ComparisonFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzb<T> extends zza {
    public static final zzc CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzx f3711c;
    public final MetadataBundle f;
    public final MetadataField g;

    public zzb(zzx zzxVar, MetadataBundle metadataBundle) {
        this.f3711c = zzxVar;
        this.f = metadataBundle;
        this.g = zzi.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        Bundle bundle = this.f.f3701c;
        MetadataField metadataField = this.g;
        return String.format("cmp(%s,%s,%s)", this.f3711c.f3719c, metadataField.getName(), metadataField.b(bundle));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3711c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
