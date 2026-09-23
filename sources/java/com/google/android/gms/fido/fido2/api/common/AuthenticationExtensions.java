package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AuthenticationExtensionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticationExtensions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticationExtensions> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final FidoAppIdExtension f3740c;
    public final zzs f;
    public final UserVerificationMethodExtension g;
    public final zzz h;
    public final zzab i;
    public final zzad j;
    public final zzu k;
    public final zzag l;
    public final GoogleThirdPartyPaymentExtension m;
    public final zzak n;
    public final zzaw o;
    public final zzai p;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public FidoAppIdExtension f3741a;
        public UserVerificationMethodExtension b;

        /* renamed from: c, reason: collision with root package name */
        public zzs f3742c;
        public zzz d;
        public zzab e;
        public zzad f;
        public zzu g;
        public zzag h;
        public GoogleThirdPartyPaymentExtension i;
        public zzak j;
        public zzaw k;

        public final AuthenticationExtensions a() {
            return new AuthenticationExtensions(this.f3741a, this.f3742c, this.b, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, null);
        }
    }

    public AuthenticationExtensions(FidoAppIdExtension fidoAppIdExtension, zzs zzsVar, UserVerificationMethodExtension userVerificationMethodExtension, zzz zzzVar, zzab zzabVar, zzad zzadVar, zzu zzuVar, zzag zzagVar, GoogleThirdPartyPaymentExtension googleThirdPartyPaymentExtension, zzak zzakVar, zzaw zzawVar, zzai zzaiVar) {
        this.f3740c = fidoAppIdExtension;
        this.g = userVerificationMethodExtension;
        this.f = zzsVar;
        this.h = zzzVar;
        this.i = zzabVar;
        this.j = zzadVar;
        this.k = zzuVar;
        this.l = zzagVar;
        this.m = googleThirdPartyPaymentExtension;
        this.n = zzakVar;
        this.o = zzawVar;
        this.p = zzaiVar;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticationExtensions)) {
            return false;
        }
        AuthenticationExtensions authenticationExtensions = (AuthenticationExtensions) obj;
        if (!Objects.equal(this.f3740c, authenticationExtensions.f3740c) || !Objects.equal(this.f, authenticationExtensions.f) || !Objects.equal(this.g, authenticationExtensions.g) || !Objects.equal(this.h, authenticationExtensions.h) || !Objects.equal(this.i, authenticationExtensions.i) || !Objects.equal(this.j, authenticationExtensions.j) || !Objects.equal(this.k, authenticationExtensions.k) || !Objects.equal(this.l, authenticationExtensions.l) || !Objects.equal(this.m, authenticationExtensions.m) || !Objects.equal(this.n, authenticationExtensions.n) || !Objects.equal(this.o, authenticationExtensions.o) || !Objects.equal(this.p, authenticationExtensions.p)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3740c, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3740c);
        String valueOf2 = String.valueOf(this.f);
        String valueOf3 = String.valueOf(this.g);
        String valueOf4 = String.valueOf(this.h);
        String valueOf5 = String.valueOf(this.i);
        String valueOf6 = String.valueOf(this.j);
        String valueOf7 = String.valueOf(this.k);
        String valueOf8 = String.valueOf(this.l);
        String valueOf9 = String.valueOf(this.m);
        String valueOf10 = String.valueOf(this.n);
        String valueOf11 = String.valueOf(this.o);
        StringBuilder u = a.u("AuthenticationExtensions{\n fidoAppIdExtension=", valueOf, ", \n cableAuthenticationExtension=", valueOf2, ", \n userVerificationMethodExtension=");
        android.support.v4.media.a.z(u, valueOf3, ", \n googleMultiAssertionExtension=", valueOf4, ", \n googleSessionIdExtension=");
        android.support.v4.media.a.z(u, valueOf5, ", \n googleSilentVerificationExtension=", valueOf6, ", \n devicePublicKeyExtension=");
        android.support.v4.media.a.z(u, valueOf7, ", \n googleTunnelServerIdExtension=", valueOf8, ", \n googleThirdPartyPaymentExtension=");
        android.support.v4.media.a.z(u, valueOf9, ", \n prfExtension=", valueOf10, ", \n simpleTransactionAuthorizationExtension=");
        return android.support.v4.media.a.p(u, valueOf11, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3740c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.f, i, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.i, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 8, this.k, i, false);
        SafeParcelWriter.writeParcelable(parcel, 9, this.l, i, false);
        SafeParcelWriter.writeParcelable(parcel, 10, this.m, i, false);
        SafeParcelWriter.writeParcelable(parcel, 11, this.n, i, false);
        SafeParcelWriter.writeParcelable(parcel, 12, this.o, i, false);
        SafeParcelWriter.writeParcelable(parcel, 13, this.p, i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
