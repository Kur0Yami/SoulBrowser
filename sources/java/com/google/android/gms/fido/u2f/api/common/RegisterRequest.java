package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.u2f.api.common.ProtocolVersion;
import java.util.Arrays;

@SafeParcelable.Class(creator = "RegisterRequestCreator")
@Deprecated
/* loaded from: classes.dex */
public class RegisterRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<RegisterRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3806c;
    public final ProtocolVersion f;
    public final byte[] g;
    public final String h;

    public RegisterRequest(int i, String str, String str2, byte[] bArr) {
        this.f3806c = i;
        try {
            this.f = ProtocolVersion.a(str);
            this.g = bArr;
            this.h = str2;
        } catch (ProtocolVersion.UnsupportedProtocolException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof RegisterRequest)) {
            return false;
        }
        RegisterRequest registerRequest = (RegisterRequest) obj;
        String str = registerRequest.h;
        if (!Arrays.equals(this.g, registerRequest.g) || this.f != registerRequest.f) {
            return false;
        }
        String str2 = this.h;
        if (str2 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str2.equals(str)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.f.hashCode() + ((Arrays.hashCode(this.g) + 31) * 31);
        String str = this.h;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        return (hashCode2 * 31) + hashCode;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3806c);
        SafeParcelWriter.writeString(parcel, 2, this.f.f3805c, false);
        SafeParcelWriter.writeByteArray(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
