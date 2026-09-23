package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ImageHintsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class ImageHints extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ImageHints> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3497c;
    public final int f;
    public final int g;

    public ImageHints(int i, int i2, int i3) {
        this.f3497c = i;
        this.f = i2;
        this.g = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3497c);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
