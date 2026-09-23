package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "SimpleTransactionAuthorizationExtensionCreator")
/* loaded from: classes.dex */
public final class zzaw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaw> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3782c;

    public zzaw(String str) {
        this.f3782c = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaw)) {
            return false;
        }
        return Objects.equal(this.f3782c, ((zzaw) obj).f3782c);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3782c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3782c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
