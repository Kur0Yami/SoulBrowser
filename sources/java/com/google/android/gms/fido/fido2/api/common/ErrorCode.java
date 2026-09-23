package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import java.util.Locale;

/* loaded from: classes.dex */
public enum ErrorCode implements Parcelable {
    NOT_SUPPORTED_ERR(9),
    INVALID_STATE_ERR(11),
    SECURITY_ERR(18),
    NETWORK_ERR(19),
    ABORT_ERR(20),
    TIMEOUT_ERR(23),
    ENCODING_ERR(27),
    UNKNOWN_ERR(28),
    CONSTRAINT_ERR(29),
    DATA_ERR(30),
    NOT_ALLOWED_ERR(35),
    ATTESTATION_NOT_PRIVATE_ERR(36);


    @NonNull
    public static final Parcelable.Creator<ErrorCode> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3755c;

    /* loaded from: classes.dex */
    public static class UnsupportedErrorCodeException extends Exception {
    }

    ErrorCode(int i) {
        this.f3755c = i;
    }

    public static ErrorCode a(int i) {
        for (ErrorCode errorCode : values()) {
            if (i == errorCode.f3755c) {
                return errorCode;
            }
        }
        Locale locale = Locale.US;
        throw new Exception(a.f(i, "Error code ", " is not supported"));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3755c);
    }
}
