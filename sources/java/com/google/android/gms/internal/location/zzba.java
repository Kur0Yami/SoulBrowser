package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

@SafeParcelable.Class(creator = "LocationRequestInternalCreator")
@SafeParcelable.Reserved({1000, 2, 3, 4})
/* loaded from: classes3.dex */
public final class zzba extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final LocationRequest f10355c;
    public final List f;
    public final String g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final String k;
    public final boolean l;
    public final boolean m;
    public final String n;
    public final long o;
    public static final List p = Collections.EMPTY_LIST;
    public static final Parcelable.Creator<zzba> CREATOR = new Object();

    public zzba(LocationRequest locationRequest, List list, String str, boolean z, boolean z2, boolean z3, String str2, boolean z4, boolean z5, String str3, long j) {
        this.f10355c = locationRequest;
        this.f = list;
        this.g = str;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = str2;
        this.l = z4;
        this.m = z5;
        this.n = str3;
        this.o = j;
    }

    public static zzba F() {
        return new zzba(null, p, null, false, false, false, null, false, false, null, LongCompanionObject.MAX_VALUE);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzba) {
            zzba zzbaVar = (zzba) obj;
            if (Objects.equal(this.f10355c, zzbaVar.f10355c) && Objects.equal(this.f, zzbaVar.f) && Objects.equal(this.g, zzbaVar.g) && this.h == zzbaVar.h && this.i == zzbaVar.i && this.j == zzbaVar.j && Objects.equal(this.k, zzbaVar.k) && this.l == zzbaVar.l && this.m == zzbaVar.m && Objects.equal(this.n, zzbaVar.n)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f10355c.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f10355c);
        String str = this.g;
        if (str != null) {
            sb.append(" tag=");
            sb.append(str);
        }
        String str2 = this.k;
        if (str2 != null) {
            sb.append(" moduleId=");
            sb.append(str2);
        }
        if (this.n != null) {
            sb.append(" contextAttributionTag=");
            sb.append(this.n);
        }
        sb.append(" hideAppOps=");
        sb.append(this.h);
        sb.append(" clients=");
        sb.append(this.f);
        sb.append(" forceCoarseLocation=");
        sb.append(this.i);
        if (this.j) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        if (this.l) {
            sb.append(" locationSettingsIgnored");
        }
        if (this.m) {
            sb.append(" inaccurateLocationsDelayed");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 1, this.f10355c, i, false);
        SafeParcelWriter.writeTypedList(parcel, 5, this.f, false);
        SafeParcelWriter.writeString(parcel, 6, this.g, false);
        SafeParcelWriter.writeBoolean(parcel, 7, this.h);
        SafeParcelWriter.writeBoolean(parcel, 8, this.i);
        SafeParcelWriter.writeBoolean(parcel, 9, this.j);
        SafeParcelWriter.writeString(parcel, 10, this.k, false);
        SafeParcelWriter.writeBoolean(parcel, 11, this.l);
        SafeParcelWriter.writeBoolean(parcel, 12, this.m);
        SafeParcelWriter.writeString(parcel, 13, this.n, false);
        SafeParcelWriter.writeLong(parcel, 14, this.o);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
