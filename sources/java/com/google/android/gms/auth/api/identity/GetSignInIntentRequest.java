package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "GetSignInIntentRequestCreator")
@Deprecated
/* loaded from: classes.dex */
public class GetSignInIntentRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GetSignInIntentRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3366c;
    public final String f;
    public final String g;
    public final String h;
    public final boolean i;
    public final int j;
    public final List k;

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public GetSignInIntentRequest(String str, String str2, String str3, String str4, boolean z, int i, List list) {
        Preconditions.checkNotNull(str);
        this.f3366c = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = z;
        this.j = i;
        this.k = list;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof GetSignInIntentRequest)) {
            return false;
        }
        GetSignInIntentRequest getSignInIntentRequest = (GetSignInIntentRequest) obj;
        if (!Objects.equal(this.f3366c, getSignInIntentRequest.f3366c) || !Objects.equal(this.h, getSignInIntentRequest.h) || !Objects.equal(this.f, getSignInIntentRequest.f) || !Objects.equal(Boolean.valueOf(this.i), Boolean.valueOf(getSignInIntentRequest.i)) || this.j != getSignInIntentRequest.j || !Objects.equal(this.k, getSignInIntentRequest.k)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3366c, this.f, this.h, Boolean.valueOf(this.i), Integer.valueOf(this.j), this.k);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3366c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.writeInt(parcel, 6, this.j);
        SafeParcelWriter.writeTypedList(parcel, 7, this.k, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
