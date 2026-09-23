package com.google.android.gms.internal.mlkit_vision_text_common;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "TextBlockParcelCreator")
/* loaded from: classes3.dex */
public final class zzuz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzuz> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f11436c;
    public final Rect f;
    public final List g;
    public final String h;
    public final List i;

    public zzuz(String str, Rect rect, ArrayList arrayList, String str2, ArrayList arrayList2) {
        this.f11436c = str;
        this.f = rect;
        this.g = arrayList;
        this.h = str2;
        this.i = arrayList2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f11436c, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
