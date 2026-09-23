package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "GoogleTunnelServerIdExtensionCreator")
/* loaded from: classes.dex */
public final class zzag extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzag> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3779c;

    public zzag(String str) {
        this.f3779c = (String) Preconditions.checkNotNull(str);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzag)) {
            return false;
        }
        return this.f3779c.equals(((zzag) obj).f3779c);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3779c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3779c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
