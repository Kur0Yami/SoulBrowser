package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "UserVerificationMethodExtensionCreator")
/* loaded from: classes.dex */
public class UserVerificationMethodExtension extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<UserVerificationMethodExtension> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3773c;

    public UserVerificationMethodExtension(boolean z) {
        this.f3773c = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof UserVerificationMethodExtension) || this.f3773c != ((UserVerificationMethodExtension) obj).f3773c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f3773c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f3773c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
