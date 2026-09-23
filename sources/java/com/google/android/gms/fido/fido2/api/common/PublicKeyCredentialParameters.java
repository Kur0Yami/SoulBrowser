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
import com.google.android.gms.fido.fido2.api.common.COSEAlgorithmIdentifier;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialType;

@SafeParcelable.Class(creator = "PublicKeyCredentialParametersCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialParameters extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialParameters> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialType f3764c;
    public final COSEAlgorithmIdentifier f;

    public PublicKeyCredentialParameters(String str, int i) {
        Preconditions.checkNotNull(str);
        try {
            this.f3764c = PublicKeyCredentialType.a(str);
            Preconditions.checkNotNull(Integer.valueOf(i));
            try {
                this.f = COSEAlgorithmIdentifier.a(i);
            } catch (COSEAlgorithmIdentifier.UnsupportedAlgorithmIdentifierException e) {
                throw new IllegalArgumentException(e);
            }
        } catch (PublicKeyCredentialType.UnsupportedPublicKeyCredTypeException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialParameters)) {
            return false;
        }
        PublicKeyCredentialParameters publicKeyCredentialParameters = (PublicKeyCredentialParameters) obj;
        if (!this.f3764c.equals(publicKeyCredentialParameters.f3764c) || !this.f.equals(publicKeyCredentialParameters.f)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3764c, this.f);
    }

    public final String toString() {
        return a.n("PublicKeyCredentialParameters{\n type=", String.valueOf(this.f3764c), ", \n algorithm=", String.valueOf(this.f), "\n }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        this.f3764c.getClass();
        SafeParcelWriter.writeString(parcel, 2, "public-key", false);
        SafeParcelWriter.writeIntegerObject(parcel, 3, Integer.valueOf(this.f.f3753c.a()), false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
