package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ShowFirstParty
@SafeParcelable.Class(creator = "NetworkLocationStatusCreator")
/* loaded from: classes3.dex */
public final class zzbo extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzbo> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int f11585c;
    public final int f;
    public final long g;
    public final long h;

    public zzbo(int i, int i2, long j, long j2) {
        this.f11585c = i;
        this.f = i2;
        this.g = j;
        this.h = j2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbo) {
            zzbo zzboVar = (zzbo) obj;
            if (this.f11585c == zzboVar.f11585c && this.f == zzboVar.f && this.g == zzboVar.g && this.h == zzboVar.h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f), Integer.valueOf(this.f11585c), Long.valueOf(this.h), Long.valueOf(this.g));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f11585c + " Cell status: " + this.f + " elapsed time NS: " + this.h + " system time ms: " + this.g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11585c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.writeLong(parcel, 3, this.g);
        SafeParcelWriter.writeLong(parcel, 4, this.h);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
