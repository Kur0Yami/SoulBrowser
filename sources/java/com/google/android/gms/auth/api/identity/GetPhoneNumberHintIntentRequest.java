package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GetPhoneNumberHintIntentRequestCreator")
/* loaded from: classes.dex */
public class GetPhoneNumberHintIntentRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GetPhoneNumberHintIntentRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3365c;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public GetPhoneNumberHintIntentRequest(int i) {
        this.f3365c = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GetPhoneNumberHintIntentRequest)) {
            return false;
        }
        return Objects.equal(Integer.valueOf(this.f3365c), Integer.valueOf(((GetPhoneNumberHintIntentRequest) obj).f3365c));
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3365c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3365c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
