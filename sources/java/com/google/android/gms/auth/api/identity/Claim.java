package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ClaimCreator")
/* loaded from: classes.dex */
public final class Claim extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<Claim> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3363c;
    public final boolean f;

    /* loaded from: classes.dex */
    public static abstract class Builder {
    }

    public Claim(String str, boolean z) {
        this.f3363c = str;
        this.f = z;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Claim) {
            Claim claim = (Claim) obj;
            if (this.f3363c.equals(claim.f3363c) && this.f == claim.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3363c, Boolean.valueOf(this.f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3363c, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
