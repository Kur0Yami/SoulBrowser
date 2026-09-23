package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@ShowFirstParty
@SafeParcelable.Class(creator = "TransferStateEventCreator")
@SafeParcelable.Reserved({1, 2})
/* loaded from: classes.dex */
public final class zzv extends AbstractSafeParcelable implements DriveEvent {
    public static final Parcelable.Creator<zzv> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f3696c;

    public zzv(ArrayList arrayList) {
        this.f3696c = arrayList;
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == zzv.class) {
            if (obj == this) {
                return true;
            }
            return Objects.equal(this.f3696c, ((zzv) obj).f3696c);
        }
        return false;
    }

    @Override // com.google.android.gms.drive.events.DriveEvent
    public final int getType() {
        return 7;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3696c);
    }

    public final String toString() {
        return a.l("TransferStateEvent[", TextUtils.join("','", this.f3696c), "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 3, this.f3696c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
