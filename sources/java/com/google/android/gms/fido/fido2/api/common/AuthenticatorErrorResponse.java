package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.ErrorCode;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;

@SafeParcelable.Class(creator = "AuthenticatorErrorResponseCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticatorErrorResponse extends AuthenticatorResponse {

    @NonNull
    public static final Parcelable.Creator<AuthenticatorErrorResponse> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ErrorCode f3747c;
    public final String f;
    public final int g;

    public AuthenticatorErrorResponse(int i, String str, int i2) {
        try {
            this.f3747c = ErrorCode.a(i);
            this.f = str;
            this.g = i2;
        } catch (ErrorCode.UnsupportedErrorCodeException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorErrorResponse)) {
            return false;
        }
        AuthenticatorErrorResponse authenticatorErrorResponse = (AuthenticatorErrorResponse) obj;
        if (!Objects.equal(this.f3747c, authenticatorErrorResponse.f3747c) || !Objects.equal(this.f, authenticatorErrorResponse.f) || !Objects.equal(Integer.valueOf(this.g), Integer.valueOf(authenticatorErrorResponse.g))) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3747c, this.f, Integer.valueOf(this.g));
    }

    public final String toString() {
        zzbi a2 = zzbj.a(this);
        a2.a(this.f3747c.f3755c);
        String str = this.f;
        if (str != null) {
            a2.b(str, "errorMessage");
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3747c.f3755c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
