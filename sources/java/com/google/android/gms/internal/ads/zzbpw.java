package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "MediationConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzbpw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbpw> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f4824c;
    public final Bundle f;

    public zzbpw(String str, Bundle bundle) {
        this.f4824c = str;
        this.f = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f4824c, false);
        SafeParcelWriter.writeBundle(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
