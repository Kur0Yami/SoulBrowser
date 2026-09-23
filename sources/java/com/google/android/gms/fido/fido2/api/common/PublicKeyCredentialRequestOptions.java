package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.ResultReceiver;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.internal.fido.zzia;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@SafeParcelable.Class(creator = "PublicKeyCredentialRequestOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class PublicKeyCredentialRequestOptions extends RequestOptions {

    @NonNull
    public static final Parcelable.Creator<PublicKeyCredentialRequestOptions> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3765c;
    public final Double f;
    public final String g;
    public final List h;
    public final Integer i;
    public final TokenBinding j;
    public final UserVerificationRequirement k;
    public final AuthenticationExtensions l;
    public final Long m;
    public final ResultReceiver n;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public PublicKeyCredentialRequestOptions(byte[] bArr, Double d, String str, ArrayList arrayList, Integer num, TokenBinding tokenBinding, String str2, AuthenticationExtensions authenticationExtensions, Long l, String str3, ResultReceiver resultReceiver) {
        this.n = resultReceiver;
        if (str3 == null) {
            this.f3765c = (byte[]) Preconditions.checkNotNull(bArr);
            this.f = d;
            this.g = (String) Preconditions.checkNotNull(str);
            this.h = arrayList;
            this.i = num;
            this.j = tokenBinding;
            this.m = l;
            if (str2 != null) {
                try {
                    this.k = UserVerificationRequirement.a(str2);
                } catch (zzbc e) {
                    throw new IllegalArgumentException(e);
                }
            } else {
                this.k = null;
            }
            this.l = authenticationExtensions;
            return;
        }
        zzia.a();
        throw null;
    }

    public final boolean equals(Object obj) {
        List list;
        if (!(obj instanceof PublicKeyCredentialRequestOptions)) {
            return false;
        }
        PublicKeyCredentialRequestOptions publicKeyCredentialRequestOptions = (PublicKeyCredentialRequestOptions) obj;
        List list2 = publicKeyCredentialRequestOptions.h;
        if (!Arrays.equals(this.f3765c, publicKeyCredentialRequestOptions.f3765c) || !Objects.equal(this.f, publicKeyCredentialRequestOptions.f) || !Objects.equal(this.g, publicKeyCredentialRequestOptions.g) || ((((list = this.h) != null || list2 != null) && (list == null || list2 == null || !list.containsAll(list2) || !list2.containsAll(list))) || !Objects.equal(this.i, publicKeyCredentialRequestOptions.i) || !Objects.equal(this.j, publicKeyCredentialRequestOptions.j) || !Objects.equal(this.k, publicKeyCredentialRequestOptions.k) || !Objects.equal(this.l, publicKeyCredentialRequestOptions.l) || !Objects.equal(this.m, publicKeyCredentialRequestOptions.m))) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(Arrays.hashCode(this.f3765c)), this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m);
    }

    public final String toString() {
        String encodeUrlSafeNoPadding = Base64Utils.encodeUrlSafeNoPadding(this.f3765c);
        String valueOf = String.valueOf(this.h);
        String valueOf2 = String.valueOf(this.j);
        String valueOf3 = String.valueOf(this.k);
        String valueOf4 = String.valueOf(this.l);
        StringBuilder w = a.w("PublicKeyCredentialRequestOptions{\n challenge=", encodeUrlSafeNoPadding, ", \n timeoutSeconds=");
        w.append(this.f);
        w.append(", \n rpId='");
        a.z(w, this.g, "', \n allowList=", valueOf, ", \n requestId=");
        w.append(this.i);
        w.append(", \n tokenBinding=");
        w.append(valueOf2);
        w.append(", \n userVerification=");
        a.z(w, valueOf3, ", \n authenticationExtensions=", valueOf4, ", \n longRequestId=");
        w.append(this.m);
        w.append("}");
        return w.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeByteArray(parcel, 2, this.f3765c, false);
        SafeParcelWriter.writeDoubleObject(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.h, false);
        SafeParcelWriter.writeIntegerObject(parcel, 6, this.i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        UserVerificationRequirement userVerificationRequirement = this.k;
        if (userVerificationRequirement == null) {
            str = null;
        } else {
            str = userVerificationRequirement.f3774c;
        }
        SafeParcelWriter.writeString(parcel, 8, str, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.l, i, false);
        SafeParcelWriter.writeLongObject(parcel, 10, this.m, false);
        SafeParcelWriter.writeString(parcel, 11, null, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.n, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
