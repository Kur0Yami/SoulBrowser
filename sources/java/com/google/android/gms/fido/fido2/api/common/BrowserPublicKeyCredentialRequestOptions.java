package com.google.android.gms.fido.fido2.api.common;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;

@SafeParcelable.Class(creator = "BrowserPublicKeyCredentialRequestOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class BrowserPublicKeyCredentialRequestOptions extends BrowserRequestOptions {

    @NonNull
    public static final Parcelable.Creator<BrowserPublicKeyCredentialRequestOptions> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialRequestOptions f3752c;
    public final Uri f;
    public final byte[] g;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public BrowserPublicKeyCredentialRequestOptions(PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions, Uri uri, byte[] bArr) {
        boolean z;
        boolean z2;
        this.f3752c = (PublicKeyCredentialRequestOptions) Preconditions.checkNotNull(publicKeyCredentialRequestOptions);
        Preconditions.checkNotNull(uri);
        if (uri.getScheme() != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "origin scheme must be non-empty");
        if (uri.getAuthority() != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkArgument(z2, "origin authority must be non-empty");
        this.f = uri;
        Preconditions.checkArgument(bArr == null || bArr.length == 32, "clientDataHash must be 32 bytes long");
        this.g = bArr;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BrowserPublicKeyCredentialRequestOptions)) {
            return false;
        }
        BrowserPublicKeyCredentialRequestOptions browserPublicKeyCredentialRequestOptions = (BrowserPublicKeyCredentialRequestOptions) obj;
        if (!Objects.equal(this.f3752c, browserPublicKeyCredentialRequestOptions.f3752c) || !Objects.equal(this.f, browserPublicKeyCredentialRequestOptions.f)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3752c, this.f);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3752c);
        String valueOf2 = String.valueOf(this.f);
        return a.p(androidx.work.impl.workers.a.u("BrowserPublicKeyCredentialRequestOptions{\n publicKeyCredentialRequestOptions=", valueOf, ", \n origin=", valueOf2, ", \n clientDataHash="), Base64Utils.encodeUrlSafeNoPadding(this.g), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3752c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeByteArray(parcel, 4, this.g, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
