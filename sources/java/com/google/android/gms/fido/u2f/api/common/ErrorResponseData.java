package com.google.android.gms.fido.u2f.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fido.zzbi;
import com.google.android.gms.internal.fido.zzbj;

@SafeParcelable.Class(creator = "ErrorResponseDataCreator")
@SafeParcelable.Reserved({1})
@Deprecated
/* loaded from: classes.dex */
public class ErrorResponseData extends ResponseData {

    @NonNull
    public static final Parcelable.Creator<ErrorResponseData> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final ErrorCode f3803c;
    public final String f;

    public ErrorResponseData(int i, String str) {
        ErrorCode errorCode;
        ErrorCode[] values = ErrorCode.values();
        int length = values.length;
        int i2 = 0;
        while (true) {
            if (i2 < length) {
                errorCode = values[i2];
                if (i == errorCode.f3802c) {
                    break;
                } else {
                    i2++;
                }
            } else {
                errorCode = ErrorCode.OTHER_ERROR;
                break;
            }
        }
        this.f3803c = errorCode;
        this.f = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ErrorResponseData)) {
            return false;
        }
        ErrorResponseData errorResponseData = (ErrorResponseData) obj;
        if (!Objects.equal(this.f3803c, errorResponseData.f3803c) || !Objects.equal(this.f, errorResponseData.f)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3803c, this.f);
    }

    public final String toString() {
        zzbi a2 = zzbj.a(this);
        a2.a(this.f3803c.f3802c);
        String str = this.f;
        if (str != null) {
            a2.b(str, "errorMessage");
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3803c.f3802c);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
