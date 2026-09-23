package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public enum AttestationConveyancePreference implements Parcelable {
    NONE("none"),
    /* JADX INFO: Fake field, exist only in values array */
    INDIRECT("indirect"),
    /* JADX INFO: Fake field, exist only in values array */
    DIRECT("direct");


    @NonNull
    public static final Parcelable.Creator<AttestationConveyancePreference> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3739c;

    /* loaded from: classes.dex */
    public static class UnsupportedAttestationConveyancePreferenceException extends Exception {
    }

    AttestationConveyancePreference(String str) {
        this.f3739c = str;
    }

    public static AttestationConveyancePreference a(String str) {
        for (AttestationConveyancePreference attestationConveyancePreference : values()) {
            if (str.equals(attestationConveyancePreference.f3739c)) {
                return attestationConveyancePreference;
            }
        }
        throw new Exception(a.l("Attestation conveyance preference ", str, " not supported"));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f3739c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f3739c);
    }
}
