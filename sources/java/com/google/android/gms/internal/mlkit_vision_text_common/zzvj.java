package com.google.android.gms.internal.mlkit_vision_text_common;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "TextSymbolParcelCreator")
/* loaded from: classes3.dex */
public final class zzvj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzvj> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f11441c;
    public final Rect f;
    public final List g;
    public final float h;
    public final float i;

    public zzvj(String str, Rect rect, ArrayList arrayList, float f, float f2) {
        this.f11441c = str;
        this.f = rect;
        this.g = arrayList;
        this.h = f;
        this.i = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f11441c, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.g, false);
        SafeParcelWriter.writeFloat(parcel, 4, this.h);
        SafeParcelWriter.writeFloat(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
