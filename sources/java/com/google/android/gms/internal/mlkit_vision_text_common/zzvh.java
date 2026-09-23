package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "TextRecognizerOptionsCreator")
/* loaded from: classes3.dex */
public final class zzvh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvh> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f11440c;
    public final String f;
    public final String g;
    public final boolean h;
    public final int i;
    public final String j;
    public final boolean k;

    public zzvh(String str, String str2, String str3, boolean z, int i, String str4, boolean z2) {
        this.f11440c = str;
        this.f = str2;
        this.g = str3;
        this.j = str4;
        this.i = i;
        this.h = z;
        this.k = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f11440c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
