package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

@SafeParcelable.Class(creator = "GeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class GeofencingRequest extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final List f11568c;
    public final int f;
    public final String g;
    public final String h;

    /* loaded from: classes3.dex */
    public static final class Builder {
    }

    /* loaded from: classes3.dex */
    public @interface InitialTrigger {
    }

    public GeofencingRequest(ArrayList arrayList, int i, String str, String str2) {
        this.f11568c = arrayList;
        this.f = i;
        this.g = str;
        this.h = str2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("GeofencingRequest[geofences=");
        sb.append(this.f11568c);
        sb.append(", initialTrigger=");
        sb.append(this.f);
        sb.append(", tag=");
        sb.append(this.g);
        sb.append(", attributionTag=");
        return a.p(sb, this.h, "]");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f11568c, false);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeString(parcel, 3, this.g, false);
        SafeParcelWriter.writeString(parcel, 4, this.h, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
