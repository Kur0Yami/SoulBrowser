package com.google.android.gms.appset;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AppSetInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3332c;
    public final int f;

    public zzc(String str, int i) {
        this.f3332c = str;
        this.f = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3332c, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
