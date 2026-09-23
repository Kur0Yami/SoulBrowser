package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AdBreakStatusCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class AdBreakStatus extends AbstractSafeParcelable {

    /* renamed from: c, reason: collision with root package name */
    public final long f3426c;
    public final long f;
    public final String g;
    public final String h;
    public final long i;
    public static final Logger j = new Logger("AdBreakStatus", null);

    @NonNull
    public static final Parcelable.Creator<AdBreakStatus> CREATOR = new Object();

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public AdBreakStatus(long j2, long j3, String str, String str2, long j4) {
        this.f3426c = j2;
        this.f = j3;
        this.g = str;
        this.h = str2;
        this.i = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdBreakStatus)) {
            return false;
        }
        AdBreakStatus adBreakStatus = (AdBreakStatus) obj;
        if (this.f3426c == adBreakStatus.f3426c && this.f == adBreakStatus.f && CastUtils.c(this.g, adBreakStatus.g) && CastUtils.c(this.h, adBreakStatus.h) && this.i == adBreakStatus.i) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f3426c), Long.valueOf(this.f), this.g, this.h, Long.valueOf(this.i));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeLong(parcel, 2, this.f3426c);
        SafeParcelWriter.writeLong(parcel, 3, this.f);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeLong(parcel, 6, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
