package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "DecagonRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzbyj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbyj> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f4972c;

    public zzbyj(String str) {
        this.f4972c = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f4972c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
