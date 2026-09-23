package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "RewardedVideoAdRequestParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzbzt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbzt> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.client.zzm f4990c;
    public final String f;

    public zzbzt(com.google.android.gms.ads.internal.client.zzm zzmVar, String str) {
        this.f4990c = zzmVar;
        this.f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f4990c, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
