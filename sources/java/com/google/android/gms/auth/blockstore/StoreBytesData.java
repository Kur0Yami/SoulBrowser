package com.google.android.gms.auth.blockstore;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "StoreBytesDataCreator")
/* loaded from: classes.dex */
public class StoreBytesData extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<StoreBytesData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3404c;
    public final boolean f;
    public final String g;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public StoreBytesData(String str, boolean z, byte[] bArr) {
        this.f3404c = bArr;
        this.f = z;
        this.g = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 1, this.f3404c, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
