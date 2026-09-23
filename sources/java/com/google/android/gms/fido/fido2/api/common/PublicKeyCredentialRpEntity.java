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

@SafeParcelable.Class(creator = "PublicKeyCredentialRpEntityCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialRpEntity extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialRpEntity> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3766c;
    public final String f;
    public final String g;

    public PublicKeyCredentialRpEntity(String str, String str2, String str3) {
        this.f3766c = (String) Preconditions.checkNotNull(str);
        this.f = (String) Preconditions.checkNotNull(str2);
        this.g = str3;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialRpEntity)) {
            return false;
        }
        PublicKeyCredentialRpEntity publicKeyCredentialRpEntity = (PublicKeyCredentialRpEntity) obj;
        if (!Objects.equal(this.f3766c, publicKeyCredentialRpEntity.f3766c) || !Objects.equal(this.f, publicKeyCredentialRpEntity.f) || !Objects.equal(this.g, publicKeyCredentialRpEntity.g)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3766c, this.f, this.g);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PublicKeyCredentialRpEntity{\n id='");
        sb.append(this.f3766c);
        sb.append("', \n name='");
        sb.append(this.f);
        sb.append("', \n icon='");
        return a.p(sb, this.g, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3766c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
