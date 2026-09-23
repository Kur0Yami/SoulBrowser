package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "BeginSignInRequestCreator")
@Deprecated
/* loaded from: classes.dex */
public final class BeginSignInRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<BeginSignInRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final PasswordRequestOptions f3355c;
    public final GoogleIdTokenRequestOptions f;
    public final String g;
    public final boolean h;
    public final int i;
    public final PasskeysRequestOptions j;
    public final PasskeyJsonRequestOptions k;
    public final boolean l;

    @Deprecated
    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public PasswordRequestOptions f3356a;
        public GoogleIdTokenRequestOptions b;

        /* renamed from: c, reason: collision with root package name */
        public PasskeysRequestOptions f3357c;
    }

    @SafeParcelable.Class(creator = "GoogleIdTokenRequestOptionsCreator")
    @Deprecated
    /* loaded from: classes.dex */
    public static final class GoogleIdTokenRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<GoogleIdTokenRequestOptions> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final boolean f3358c;
        public final String f;
        public final String g;
        public final boolean h;
        public final String i;
        public final ArrayList j;
        public final boolean k;
        public final List l;

        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public GoogleIdTokenRequestOptions(boolean z, String str, String str2, boolean z2, String str3, ArrayList arrayList, boolean z3, ArrayList arrayList2) {
            boolean z4 = true;
            if (z2 && z3) {
                z4 = false;
            }
            Preconditions.checkArgument(z4, "filterByAuthorizedAccounts and requestVerifiedPhoneNumber must not both be true; the Verified Phone Number feature only works in sign-ups.");
            this.f3358c = z;
            if (z) {
                Preconditions.checkNotNull(str, "serverClientId must be provided if Google ID tokens are requested");
            }
            this.f = str;
            this.g = str2;
            this.h = z2;
            ArrayList arrayList3 = null;
            if (arrayList != null && !arrayList.isEmpty()) {
                arrayList3 = new ArrayList(arrayList);
                Collections.sort(arrayList3);
            }
            this.j = arrayList3;
            this.i = str3;
            this.k = z3;
            this.l = arrayList2;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof GoogleIdTokenRequestOptions) {
                GoogleIdTokenRequestOptions googleIdTokenRequestOptions = (GoogleIdTokenRequestOptions) obj;
                if (this.f3358c == googleIdTokenRequestOptions.f3358c && Objects.equal(this.f, googleIdTokenRequestOptions.f) && Objects.equal(this.g, googleIdTokenRequestOptions.g) && this.h == googleIdTokenRequestOptions.h && Objects.equal(this.i, googleIdTokenRequestOptions.i) && Objects.equal(this.j, googleIdTokenRequestOptions.j) && this.k == googleIdTokenRequestOptions.k && Objects.equal(this.l, googleIdTokenRequestOptions.l)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.f3358c), this.f, this.g, Boolean.valueOf(this.h), this.i, this.j, Boolean.valueOf(this.k), this.l);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, this.f3358c);
            SafeParcelWriter.writeString(parcel, 2, this.f, false);
            SafeParcelWriter.writeString(parcel, 3, this.g, false);
            SafeParcelWriter.writeBoolean(parcel, 4, this.h);
            SafeParcelWriter.writeString(parcel, 5, this.i, false);
            SafeParcelWriter.writeStringList(parcel, 6, this.j, false);
            SafeParcelWriter.writeBoolean(parcel, 7, this.k);
            SafeParcelWriter.writeTypedList(parcel, 8, this.l, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasskeyJsonRequestOptionsCreator")
    @Deprecated
    /* loaded from: classes.dex */
    public static final class PasskeyJsonRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasskeyJsonRequestOptions> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final boolean f3359c;
        public final String f;

        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public PasskeyJsonRequestOptions(String str, boolean z) {
            if (z) {
                Preconditions.checkNotNull(str);
            }
            this.f3359c = z;
            this.f = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeyJsonRequestOptions)) {
                return false;
            }
            PasskeyJsonRequestOptions passkeyJsonRequestOptions = (PasskeyJsonRequestOptions) obj;
            if (this.f3359c == passkeyJsonRequestOptions.f3359c && Objects.equal(this.f, passkeyJsonRequestOptions.f)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.f3359c), this.f);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, this.f3359c);
            SafeParcelWriter.writeString(parcel, 2, this.f, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasskeysRequestOptionsCreator")
    @Deprecated
    /* loaded from: classes.dex */
    public static final class PasskeysRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasskeysRequestOptions> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final boolean f3360c;
        public final byte[] f;
        public final String g;

        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public PasskeysRequestOptions(String str, boolean z, byte[] bArr) {
            if (z) {
                Preconditions.checkNotNull(bArr);
                Preconditions.checkNotNull(str);
            }
            this.f3360c = z;
            this.f = bArr;
            this.g = str;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof PasskeysRequestOptions)) {
                return false;
            }
            PasskeysRequestOptions passkeysRequestOptions = (PasskeysRequestOptions) obj;
            if (this.f3360c == passkeysRequestOptions.f3360c && Arrays.equals(this.f, passkeysRequestOptions.f) && j$.util.Objects.equals(this.g, passkeysRequestOptions.g)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f) + (j$.util.Objects.hash(Boolean.valueOf(this.f3360c), this.g) * 31);
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, this.f3360c);
            SafeParcelWriter.writeByteArray(parcel, 2, this.f, false);
            SafeParcelWriter.writeString(parcel, 3, this.g, false);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    @SafeParcelable.Class(creator = "PasswordRequestOptionsCreator")
    @Deprecated
    /* loaded from: classes.dex */
    public static final class PasswordRequestOptions extends AbstractSafeParcelable {

        @NonNull
        public static final Parcelable.Creator<PasswordRequestOptions> CREATOR = new Object();

        /* renamed from: c, reason: collision with root package name */
        public final boolean f3361c;

        /* loaded from: classes.dex */
        public static final class Builder {
        }

        public PasswordRequestOptions(boolean z) {
            this.f3361c = z;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof PasswordRequestOptions) || this.f3361c != ((PasswordRequestOptions) obj).f3361c) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hashCode(Boolean.valueOf(this.f3361c));
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
            SafeParcelWriter.writeBoolean(parcel, 1, this.f3361c);
            SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
        }
    }

    public BeginSignInRequest(PasswordRequestOptions passwordRequestOptions, GoogleIdTokenRequestOptions googleIdTokenRequestOptions, String str, boolean z, int i, PasskeysRequestOptions passkeysRequestOptions, PasskeyJsonRequestOptions passkeyJsonRequestOptions, boolean z2) {
        this.f3355c = (PasswordRequestOptions) Preconditions.checkNotNull(passwordRequestOptions);
        this.f = (GoogleIdTokenRequestOptions) Preconditions.checkNotNull(googleIdTokenRequestOptions);
        this.g = str;
        this.h = z;
        this.i = i;
        this.j = passkeysRequestOptions == null ? new PasskeysRequestOptions(null, false, null) : passkeysRequestOptions;
        this.k = passkeyJsonRequestOptions == null ? new PasskeyJsonRequestOptions(null, false) : passkeyJsonRequestOptions;
        this.l = z2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof BeginSignInRequest)) {
            return false;
        }
        BeginSignInRequest beginSignInRequest = (BeginSignInRequest) obj;
        if (!Objects.equal(this.f3355c, beginSignInRequest.f3355c) || !Objects.equal(this.f, beginSignInRequest.f) || !Objects.equal(this.j, beginSignInRequest.j) || !Objects.equal(this.k, beginSignInRequest.k) || !Objects.equal(this.g, beginSignInRequest.g) || this.h != beginSignInRequest.h || this.i != beginSignInRequest.i || this.l != beginSignInRequest.l) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3355c, this.f, this.j, this.k, this.g, Boolean.valueOf(this.h), Integer.valueOf(this.i), Boolean.valueOf(this.l));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3355c, i, false);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.writeParcelable(parcel, 6, this.j, i, false);
        SafeParcelWriter.writeParcelable(parcel, 7, this.k, i, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.l);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
