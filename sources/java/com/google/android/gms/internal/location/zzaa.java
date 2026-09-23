package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "FusedLocationProviderResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzaa extends AbstractSafeParcelable implements Result {
    public static final Parcelable.Creator<zzaa> CREATOR;

    /* renamed from: c, reason: collision with root package name */
    public final Status f10348c;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.internal.location.zzaa>] */
    static {
        new zzaa(Status.RESULT_SUCCESS);
        CREATOR = new Object();
    }

    public zzaa(Status status) {
        this.f10348c = status;
    }

    @Override // com.google.android.gms.common.api.Result
    public final Status getStatus() {
        return this.f10348c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10348c, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
