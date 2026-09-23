package com.google.android.gms.drive.query.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;

@SafeParcelable.Class(creator = "InFilterCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzp<T> extends zza {
    public static final zzq CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final MetadataBundle f3716c;
    public final com.google.android.gms.drive.metadata.zzb f;

    public zzp(MetadataBundle metadataBundle) {
        this.f3716c = metadataBundle;
        this.f = (com.google.android.gms.drive.metadata.zzb) zzi.a(metadataBundle);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public final Object u(com.google.android.gms.drive.query.zzd zzdVar) {
        Bundle bundle = this.f3716c.f3701c;
        com.google.android.gms.drive.metadata.zzb zzbVar = this.f;
        return String.format("contains(%s,%s)", zzbVar.f3707a, ((Collection) zzbVar.b(bundle)).iterator().next());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3716c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
