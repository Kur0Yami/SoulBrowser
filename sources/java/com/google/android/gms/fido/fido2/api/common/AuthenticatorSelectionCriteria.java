package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fido.fido2.api.common.Attachment;
import com.google.android.gms.fido.fido2.api.common.ResidentKeyRequirement;

@SafeParcelable.Class(creator = "AuthenticatorSelectionCriteriaCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AuthenticatorSelectionCriteria extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<AuthenticatorSelectionCriteria> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Attachment f3748c;
    public final Boolean f;
    public final UserVerificationRequirement g;
    public final ResidentKeyRequirement h;

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public Attachment f3749a;
        public Boolean b;

        /* renamed from: c, reason: collision with root package name */
        public ResidentKeyRequirement f3750c;
    }

    public AuthenticatorSelectionCriteria(String str, Boolean bool, String str2, String str3) {
        Attachment a2;
        UserVerificationRequirement a3;
        ResidentKeyRequirement residentKeyRequirement = null;
        if (str == null) {
            a2 = null;
        } else {
            try {
                a2 = Attachment.a(str);
            } catch (Attachment.UnsupportedAttachmentException | ResidentKeyRequirement.UnsupportedResidentKeyRequirementException | zzbc e) {
                throw new IllegalArgumentException(e);
            }
        }
        this.f3748c = a2;
        this.f = bool;
        if (str2 == null) {
            a3 = null;
        } else {
            a3 = UserVerificationRequirement.a(str2);
        }
        this.g = a3;
        if (str3 != null) {
            residentKeyRequirement = ResidentKeyRequirement.a(str3);
        }
        this.h = residentKeyRequirement;
    }

    public final ResidentKeyRequirement F() {
        ResidentKeyRequirement residentKeyRequirement = this.h;
        if (residentKeyRequirement == null) {
            Boolean bool = this.f;
            if (bool == null || !bool.booleanValue()) {
                return null;
            }
            return ResidentKeyRequirement.RESIDENT_KEY_REQUIRED;
        }
        return residentKeyRequirement;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AuthenticatorSelectionCriteria)) {
            return false;
        }
        AuthenticatorSelectionCriteria authenticatorSelectionCriteria = (AuthenticatorSelectionCriteria) obj;
        if (!Objects.equal(this.f3748c, authenticatorSelectionCriteria.f3748c) || !Objects.equal(this.f, authenticatorSelectionCriteria.f) || !Objects.equal(this.g, authenticatorSelectionCriteria.g) || !Objects.equal(F(), authenticatorSelectionCriteria.F())) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3748c, this.f, this.g, F());
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f3748c);
        String valueOf2 = String.valueOf(this.g);
        String valueOf3 = String.valueOf(this.h);
        StringBuilder w = a.w("AuthenticatorSelectionCriteria{\n attachment=", valueOf, ", \n requireResidentKey=");
        w.append(this.f);
        w.append(", \n requireUserVerification=");
        w.append(valueOf2);
        w.append(", \n residentKeyRequirement=");
        return a.p(w, valueOf3, "\n }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String str;
        String str2;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        String str3 = null;
        Attachment attachment = this.f3748c;
        if (attachment == null) {
            str = null;
        } else {
            str = attachment.f3738c;
        }
        SafeParcelWriter.writeString(parcel, 2, str, false);
        SafeParcelWriter.writeBooleanObject(parcel, 3, this.f, false);
        UserVerificationRequirement userVerificationRequirement = this.g;
        if (userVerificationRequirement == null) {
            str2 = null;
        } else {
            str2 = userVerificationRequirement.f3774c;
        }
        SafeParcelWriter.writeString(parcel, 4, str2, false);
        ResidentKeyRequirement F = F();
        if (F != null) {
            str3 = F.f3770c;
        }
        SafeParcelWriter.writeString(parcel, 5, str3, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
