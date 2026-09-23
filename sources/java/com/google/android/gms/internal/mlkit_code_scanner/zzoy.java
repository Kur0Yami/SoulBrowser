package com.google.android.gms.internal.mlkit_code_scanner;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "WiFiParcelCreator")
/* loaded from: classes3.dex */
public final class zzoy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzoy> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f10648c;
    public final String f;
    public final int g;

    public zzoy(int i, String str, String str2) {
        this.f10648c = str;
        this.f = str2;
        this.g = i;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10648c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
