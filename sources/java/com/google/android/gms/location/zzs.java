package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import kotlin.jvm.internal.LongCompanionObject;

@ShowFirstParty
@SafeParcelable.Class(creator = "DeviceOrientationRequestCreator")
/* loaded from: classes3.dex */
public final class zzs extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzs> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final boolean f11591c;
    public final long f;
    public final float g;
    public final long h;
    public final int i;

    public zzs(boolean z, long j, float f, long j2, int i) {
        this.f11591c = z;
        this.f = j;
        this.g = f;
        this.h = j2;
        this.i = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        zzs zzsVar = (zzs) obj;
        if (this.f11591c == zzsVar.f11591c && this.f == zzsVar.f && Float.compare(this.g, zzsVar.g) == 0 && this.h == zzsVar.h && this.i == zzsVar.i) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Boolean.valueOf(this.f11591c), Long.valueOf(this.f), Float.valueOf(this.g), Long.valueOf(this.h), Integer.valueOf(this.i));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f11591c);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.g);
        long j = this.h;
        if (j != LongCompanionObject.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j - elapsedRealtime);
            sb.append("ms");
        }
        int i = this.i;
        if (i != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(i);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeBoolean(parcel, 1, this.f11591c);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeFloat(parcel, 3, this.g);
        SafeParcelWriter.writeLong(parcel, 4, this.h);
        SafeParcelWriter.writeInt(parcel, 5, this.i);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
