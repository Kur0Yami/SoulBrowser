package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import kotlin.jvm.internal.LongCompanionObject;

@SafeParcelable.Class(creator = "LocationRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<LocationRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int f11570c;
    public long f;
    public long g;
    public boolean h;
    public long i;
    public int j;
    public float k;
    public long l;
    public boolean m;

    public final boolean equals(Object obj) {
        if (obj instanceof LocationRequest) {
            LocationRequest locationRequest = (LocationRequest) obj;
            if (this.f11570c == locationRequest.f11570c) {
                long j = this.f;
                long j2 = locationRequest.f;
                if (j == j2 && this.g == locationRequest.g && this.h == locationRequest.h && this.i == locationRequest.i && this.j == locationRequest.j && this.k == locationRequest.k) {
                    long j3 = this.l;
                    if (j3 >= j) {
                        j = j3;
                    }
                    long j4 = locationRequest.l;
                    if (j4 >= j2) {
                        j2 = j4;
                    }
                    if (j == j2 && this.m == locationRequest.m) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f11570c), Long.valueOf(this.f), Float.valueOf(this.k), Long.valueOf(this.l));
    }

    public final String toString() {
        String str;
        int i = this.j;
        float f = this.k;
        long j = this.l;
        long j2 = this.f;
        StringBuilder sb = new StringBuilder("Request[");
        int i2 = this.f11570c;
        if (i2 != 100) {
            if (i2 != 102) {
                if (i2 != 104) {
                    if (i2 != 105) {
                        str = "???";
                    } else {
                        str = "PRIORITY_NO_POWER";
                    }
                } else {
                    str = "PRIORITY_LOW_POWER";
                }
            } else {
                str = "PRIORITY_BALANCED_POWER_ACCURACY";
            }
        } else {
            str = "PRIORITY_HIGH_ACCURACY";
        }
        sb.append(str);
        if (i2 != 105) {
            sb.append(" requested=");
            sb.append(j2);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.g);
        sb.append("ms");
        if (j > j2) {
            sb.append(" maxWait=");
            sb.append(j);
            sb.append("ms");
        }
        if (f > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(f);
            sb.append("m");
        }
        long j3 = this.i;
        if (j3 != LongCompanionObject.MAX_VALUE) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(j3 - elapsedRealtime);
            sb.append("ms");
        }
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
        SafeParcelWriter.writeInt(parcel, 1, this.f11570c);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeLong(parcel, 3, this.g);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeLong(parcel, 5, this.i);
        SafeParcelWriter.writeInt(parcel, 6, this.j);
        SafeParcelWriter.writeFloat(parcel, 7, this.k);
        SafeParcelWriter.writeLong(parcel, 8, this.l);
        SafeParcelWriter.writeBoolean(parcel, 9, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
