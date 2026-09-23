package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "ActivityTransitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransitionResult extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f11566c;
    public final Bundle f;

    public ActivityTransitionResult(Bundle bundle, ArrayList arrayList) {
        boolean z;
        this.f = null;
        Preconditions.checkNotNull(arrayList, "transitionEvents list can't be null.");
        if (!arrayList.isEmpty()) {
            for (int i = 1; i < arrayList.size(); i++) {
                if (((ActivityTransitionEvent) arrayList.get(i)).g >= ((ActivityTransitionEvent) arrayList.get(i - 1)).g) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.checkArgument(z);
            }
        }
        this.f11566c = DesugarCollections.unmodifiableList(arrayList);
        this.f = bundle;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.f11566c.equals(((ActivityTransitionResult) obj).f11566c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f11566c.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f11566c, false);
        SafeParcelWriter.writeBundle(parcel, 2, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
