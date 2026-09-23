package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

@SafeParcelable.Class(creator = "ActivityTransitionRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityTransitionRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new Object();
    public static final Comparator i = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f11565c;
    public final String f;
    public final List g;
    public final String h;

    public ActivityTransitionRequest(ArrayList arrayList, String str, ArrayList arrayList2, String str2) {
        boolean z;
        List unmodifiableList;
        Preconditions.checkNotNull(arrayList, "transitions can't be null");
        if (arrayList.size() > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkArgument(z, "transitions can't be empty.");
        Preconditions.checkNotNull(arrayList);
        TreeSet treeSet = new TreeSet(i);
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ActivityTransition activityTransition = (ActivityTransition) obj;
            Preconditions.checkArgument(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f11565c = DesugarCollections.unmodifiableList(arrayList);
        this.f = str;
        if (arrayList2 == null) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            unmodifiableList = DesugarCollections.unmodifiableList(arrayList2);
        }
        this.g = unmodifiableList;
        this.h = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
            if (Objects.equal(this.f11565c, activityTransitionRequest.f11565c) && Objects.equal(this.f, activityTransitionRequest.f) && Objects.equal(this.h, activityTransitionRequest.h) && Objects.equal(this.g, activityTransitionRequest.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i2;
        int i3;
        int hashCode = this.f11565c.hashCode() * 31;
        int i4 = 0;
        String str = this.f;
        if (str != null) {
            i2 = str.hashCode();
        } else {
            i2 = 0;
        }
        int i5 = (hashCode + i2) * 31;
        List list = this.g;
        if (list != null) {
            i3 = list.hashCode();
        } else {
            i3 = 0;
        }
        int i6 = (i5 + i3) * 31;
        String str2 = this.h;
        if (str2 != null) {
            i4 = str2.hashCode();
        }
        return i6 + i4;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f11565c);
        String valueOf2 = String.valueOf(this.g);
        int length = valueOf.length();
        String str = this.f;
        int length2 = String.valueOf(str).length();
        int length3 = valueOf2.length();
        String str2 = this.h;
        StringBuilder sb = new StringBuilder(length + 79 + length2 + length3 + String.valueOf(str2).length());
        a.z(sb, "ActivityTransitionRequest [mTransitions=", valueOf, ", mTag='", str);
        a.z(sb, "', mClients=", valueOf2, ", mAttributionTag=", str2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f11565c, false);
        SafeParcelWriter.writeString(parcel, 2, this.f, false);
        SafeParcelWriter.writeTypedList(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
