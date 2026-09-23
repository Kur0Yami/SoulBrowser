package com.google.android.gms.drive.query;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.drive.query.internal.zzr;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

@SafeParcelable.Class(creator = "QueryCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class Query extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Query> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final zzr f3708c;
    public final String f;
    public final SortOrder g;
    public final List h;
    public final boolean i;
    public final List j;
    public final boolean k;

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class Builder {
    }

    public Query(zzr zzrVar, String str, SortOrder sortOrder, ArrayList arrayList, boolean z, ArrayList arrayList2, boolean z2) {
        this.f3708c = zzrVar;
        this.f = str;
        this.g = sortOrder;
        this.h = arrayList;
        this.i = z;
        this.j = arrayList2;
        this.k = z2;
    }

    public final String toString() {
        return String.format(Locale.US, "Query[%s,%s,PageToken=%s,Spaces=%s]", this.f3708c, this.g, this.f, this.j);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f3708c, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeParcelable(parcel, 4, this.g, i, false);
        SafeParcelWriter.writeStringList(parcel, 5, this.h, false);
        SafeParcelWriter.writeBoolean(parcel, 6, this.i);
        SafeParcelWriter.writeTypedList(parcel, 7, this.j, false);
        SafeParcelWriter.writeBoolean(parcel, 8, this.k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
