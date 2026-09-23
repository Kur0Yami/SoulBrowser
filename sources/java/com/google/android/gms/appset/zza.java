package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AppSetIdRequestParamsCreator")
/* loaded from: classes.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3331c;
    public final String f;

    public zza(String str, String str2) {
        this.f3331c = str;
        this.f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3331c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
