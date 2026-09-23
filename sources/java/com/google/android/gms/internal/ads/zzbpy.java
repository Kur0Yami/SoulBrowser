package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "InstreamAdConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzbpy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbpy> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f4825c;
    public final int f;
    public final String g;
    public final int h;

    public zzbpy(int i, int i2, String str, int i3) {
        this.f4825c = i;
        this.f = i2;
        this.g = str;
        this.h = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f);
        SafeParcelWriter.writeString(parcel, 2, this.g, false);
        SafeParcelWriter.writeInt(parcel, 3, this.h);
        SafeParcelWriter.writeInt(parcel, 1000, this.f4825c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
