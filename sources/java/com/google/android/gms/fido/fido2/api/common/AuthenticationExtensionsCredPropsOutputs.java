package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AuthenticationExtensionsCredPropsOutputsCreator")
/* loaded from: classes.dex */
public class AuthenticationExtensionsCredPropsOutputs extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticationExtensionsCredPropsOutputs> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3744c;

    public AuthenticationExtensionsCredPropsOutputs(boolean z) {
        this.f3744c = z;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensionsCredPropsOutputs) || this.f3744c != ((AuthenticationExtensionsCredPropsOutputs) obj).f3744c) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f3744c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f3744c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
