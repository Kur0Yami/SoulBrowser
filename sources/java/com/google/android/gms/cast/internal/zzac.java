package com.google.android.gms.cast.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Locale;

@SafeParcelable.Class(creator = "DeviceStatusCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public double f3610c;
    public boolean f;
    public int g;
    public ApplicationMetadata h;
    public int i;
    public com.google.android.gms.cast.zzao j;
    public double k;

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzac)) {
            return false;
        }
        zzac zzacVar = (zzac) obj;
        if (this.f3610c == zzacVar.f3610c && this.f == zzacVar.f && this.g == zzacVar.g && CastUtils.c(this.h, zzacVar.h) && this.i == zzacVar.i) {
            com.google.android.gms.cast.zzao zzaoVar = this.j;
            if (CastUtils.c(zzaoVar, zzaoVar) && this.k == zzacVar.k) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Double.valueOf(this.f3610c), Boolean.valueOf(this.f), Integer.valueOf(this.g), this.h, Integer.valueOf(this.i), this.j, Double.valueOf(this.k));
    }

    public final String toString() {
        return String.format(Locale.ROOT, "volume=%f", Double.valueOf(this.f3610c));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeDouble(parcel, 2, this.f3610c);
        SafeParcelWriter.writeBoolean(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeParcelable(parcel, 5, this.h, i, false);
        SafeParcelWriter.writeInt(parcel, 6, this.i);
        SafeParcelWriter.writeParcelable(parcel, 7, this.j, i, false);
        SafeParcelWriter.writeDouble(parcel, 8, this.k);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
