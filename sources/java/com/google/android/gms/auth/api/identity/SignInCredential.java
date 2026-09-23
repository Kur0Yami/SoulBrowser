package com.google.android.gms.auth.api.identity;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredential;

@SafeParcelable.Class(creator = "SignInCredentialCreator")
@Deprecated
/* loaded from: classes.dex */
public final class SignInCredential extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SignInCredential> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3372c;
    public final String f;
    public final String g;
    public final String h;
    public final Uri i;
    public final String j;
    public final String k;
    public final String l;
    public final PublicKeyCredential m;

    public SignInCredential(String str, String str2, String str3, String str4, Uri uri, String str5, String str6, String str7, PublicKeyCredential publicKeyCredential) {
        this.f3372c = (String) Preconditions.checkNotNull(str);
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = uri;
        this.j = str5;
        this.k = str6;
        this.l = str7;
        this.m = publicKeyCredential;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SignInCredential)) {
            return false;
        }
        SignInCredential signInCredential = (SignInCredential) obj;
        if (!Objects.equal(this.f3372c, signInCredential.f3372c) || !Objects.equal(this.f, signInCredential.f) || !Objects.equal(this.g, signInCredential.g) || !Objects.equal(this.h, signInCredential.h) || !Objects.equal(this.i, signInCredential.i) || !Objects.equal(this.j, signInCredential.j) || !Objects.equal(this.k, signInCredential.k) || !Objects.equal(this.l, signInCredential.l) || !Objects.equal(this.m, signInCredential.m)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3372c, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3372c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.i, i, false);
        SafeParcelWriter.writeString(parcel, 6, this.j, false);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.writeString(parcel, 8, this.l, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.m, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
