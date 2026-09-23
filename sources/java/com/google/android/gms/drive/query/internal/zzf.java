package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

@SafeParcelable.Class(creator = "FieldWithSortOrderCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3713c;
    public final boolean f;

    public zzf(String str, boolean z) {
        this.f3713c = str;
        this.f = z;
    }

    public final String toString() {
        String str;
        Locale locale = Locale.US;
        if (this.f) {
            str = "ASC";
        } else {
            str = "DESC";
        }
        return a.n("FieldWithSortOrder[", this.f3713c, " ", str, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f3713c, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
