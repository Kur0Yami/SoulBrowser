package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GoogleThirdPartyPaymentExtensionCreator")
/* loaded from: classes.dex */
public class GoogleThirdPartyPaymentExtension extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleThirdPartyPaymentExtension> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3758c;

    public GoogleThirdPartyPaymentExtension(boolean z) {
        this.f3758c = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GoogleThirdPartyPaymentExtension) || this.f3758c != ((GoogleThirdPartyPaymentExtension) obj).f3758c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f3758c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f3758c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
