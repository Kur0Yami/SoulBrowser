package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class(creator = "JoinOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzbn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbn> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f3667c;

    public zzbn() {
        this.f3667c = 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzbn) && this.f3667c == ((zzbn) obj).f3667c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3667c));
    }

    public final String toString() {
        String str;
        int i = this.f3667c;
        if (i != 0) {
            if (i != 2) {
                str = "UNKNOWN";
            } else {
                str = "INVISIBLE";
            }
        } else {
            str = "STRONG";
        }
        return a.l("joinOptions(connectionType=", str, ")");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 2, this.f3667c);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }

    public zzbn(int i) {
        this.f3667c = i;
    }
}
