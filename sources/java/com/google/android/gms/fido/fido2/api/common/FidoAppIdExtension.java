package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "FidoAppIdExtensionCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class FidoAppIdExtension extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<FidoAppIdExtension> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3756c;

    public FidoAppIdExtension(String str) {
        this.f3756c = (String) Preconditions.checkNotNull(str);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof FidoAppIdExtension)) {
            return false;
        }
        return this.f3756c.equals(((FidoAppIdExtension) obj).f3756c);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3756c);
    }

    public final String toString() {
        return a.p(new StringBuilder("FidoAppIdExtension{appid='"), this.f3756c, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3756c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
