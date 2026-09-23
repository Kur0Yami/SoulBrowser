package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "SavePasswordRequestCreator")
@Deprecated
/* loaded from: classes.dex */
public class SavePasswordRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SavePasswordRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final SignInPassword f3370c;
    public final String f;
    public final int g;

    @Deprecated
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    public SavePasswordRequest(SignInPassword signInPassword, String str, int i) {
        this.f3370c = (SignInPassword) Preconditions.checkNotNull(signInPassword);
        this.f = str;
        this.g = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof SavePasswordRequest)) {
            return false;
        }
        SavePasswordRequest savePasswordRequest = (SavePasswordRequest) obj;
        if (!Objects.equal(this.f3370c, savePasswordRequest.f3370c) || !Objects.equal(this.f, savePasswordRequest.f) || this.g != savePasswordRequest.g) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3370c, this.f);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3370c, i, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
