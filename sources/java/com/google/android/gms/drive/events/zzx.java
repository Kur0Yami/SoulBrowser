package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@ShowFirstParty
@SafeParcelable.Class(creator = "TransferStateOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f3697c;

    public zzx(ArrayList arrayList) {
        this.f3697c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzx.class) {
            if (obj == this) {
                return true;
            }
            return Objects.equal(this.f3697c, ((zzx) obj).f3697c);
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3697c);
    }

    public final String toString() {
        return String.format(Locale.US, "TransferStateOptions[Spaces=%s]", this.f3697c);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 2, this.f3697c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
