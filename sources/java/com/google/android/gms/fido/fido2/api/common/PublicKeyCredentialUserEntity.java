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
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzgx;

@SafeParcelable.Class(creator = "PublicKeyCredentialUserEntityCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialUserEntity extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialUserEntity> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzgx f3768c;
    public final String f;
    public final String g;
    public final String h;

    public PublicKeyCredentialUserEntity(String str, String str2, String str3, byte[] bArr) {
        byte[] bArr2 = (byte[]) Preconditions.checkNotNull(bArr);
        zzgx zzgxVar = zzgx.f;
        this.f3768c = (zzgx) Preconditions.checkNotNull(zzgx.s(bArr2, bArr2.length));
        this.f = (String) Preconditions.checkNotNull(str);
        this.g = str2;
        this.h = (String) Preconditions.checkNotNull(str3);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof PublicKeyCredentialUserEntity)) {
            return false;
        }
        PublicKeyCredentialUserEntity publicKeyCredentialUserEntity = (PublicKeyCredentialUserEntity) obj;
        if (!Objects.equal(this.f3768c, publicKeyCredentialUserEntity.f3768c) || !Objects.equal(this.f, publicKeyCredentialUserEntity.f) || !Objects.equal(this.g, publicKeyCredentialUserEntity.g) || !Objects.equal(this.h, publicKeyCredentialUserEntity.h)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3768c, this.f, this.g, this.h);
    }

    public final String toString() {
        StringBuilder w = a.w("PublicKeyCredentialUserEntity{\n id=", Base64Utils.encodeUrlSafeNoPadding(this.f3768c.t()), ", \n name='");
        w.append(this.f);
        w.append("', \n icon='");
        w.append(this.g);
        w.append("', \n displayName='");
        return a.p(w, this.h, "'}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3768c.t(), false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
