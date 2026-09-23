package com.google.android.gms.internal.mlkit_vision_text_common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "WordBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes3.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzn[] f11397c;
    public final zzf f;
    public final zzf g;
    public final String h;
    public final float i;
    public final String j;
    public final boolean k;

    public zzr(zzn[] zznVarArr, zzf zzfVar, zzf zzfVar2, String str, float f, String str2, boolean z) {
        this.f11397c = zznVarArr;
        this.f = zzfVar;
        this.g = zzfVar2;
        this.h = str;
        this.i = f;
        this.j = str2;
        this.k = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedArray(parcel, 2, this.f11397c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeFloat(parcel, 6, this.i);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
