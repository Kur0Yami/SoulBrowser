package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class(creator = "UserPreferredSleepWindowCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbx> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11588c;
    public final int f;
    public final int g;
    public final int h;

    public zzbx(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (i >= 0 && i <= 23) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.checkState(z, "Start hour must be in range [0, 23].");
        if (i2 >= 0 && i2 <= 59) {
            z2 = true;
        } else {
            z2 = false;
        }
        Preconditions.checkState(z2, "Start minute must be in range [0, 59].");
        if (i3 >= 0 && i3 <= 23) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.checkState(z3, "End hour must be in range [0, 23].");
        if (i4 >= 0 && i4 <= 59) {
            z4 = true;
        } else {
            z4 = false;
        }
        Preconditions.checkState(z4, "End minute must be in range [0, 59].");
        Preconditions.checkState(((i + i2) + i3) + i4 > 0, "Parameters can't be all 0.");
        this.f11588c = i;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbx)) {
            return false;
        }
        zzbx zzbxVar = (zzbx) obj;
        if (this.f11588c == zzbxVar.f11588c && this.f == zzbxVar.f && this.g == zzbxVar.g && this.h == zzbxVar.h) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f11588c), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(this.h));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(117);
        sb.append("UserPreferredSleepWindow [startHour=");
        sb.append(this.f11588c);
        sb.append(", startMinute=");
        sb.append(this.f);
        a.A(sb, ", endHour=", this.g, ", endMinute=", this.h);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11588c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeInt(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
