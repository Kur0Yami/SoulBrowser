package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@SafeParcelable.Class(creator = "SortOrderCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class SortOrder extends AbstractSafeParcelable {
    public static final Parcelable.Creator<SortOrder> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f3709c;
    public final boolean f;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public SortOrder(ArrayList arrayList, boolean z) {
        this.f3709c = arrayList;
        this.f = z;
    }

    public final String toString() {
        Locale locale = Locale.US;
        return "SortOrder[" + TextUtils.join(",", this.f3709c) + ", " + this.f + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f3709c, false);
        SafeParcelWriter.writeBoolean(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
