package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.Geofence;
import java.util.Locale;

@VisibleForTesting
@SafeParcelable.Class(creator = "ParcelableGeofenceCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public final class zzbe extends AbstractSafeParcelable implements Geofence {
    public static final Parcelable.Creator<zzbe> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f10357c;
    public final long f;
    public final short g;
    public final double h;
    public final double i;
    public final float j;
    public final int k;
    public final int l;
    public final int m;

    public zzbe(String str, int i, short s, double d, double d2, float f, long j, int i2, int i3) {
        String str2;
        if (str != null && str.length() <= 100) {
            if (f > 0.0f) {
                if (d <= 90.0d && d >= -90.0d) {
                    if (d2 <= 180.0d && d2 >= -180.0d) {
                        int i4 = i & 7;
                        if (i4 != 0) {
                            this.g = s;
                            this.f10357c = str;
                            this.h = d;
                            this.i = d2;
                            this.j = f;
                            this.f = j;
                            this.k = i4;
                            this.l = i2;
                            this.m = i3;
                            return;
                        }
                        StringBuilder sb = new StringBuilder(46);
                        sb.append("No supported transition specified: ");
                        sb.append(i);
                        throw new IllegalArgumentException(sb.toString());
                    }
                    StringBuilder sb2 = new StringBuilder(43);
                    sb2.append("invalid longitude: ");
                    sb2.append(d2);
                    throw new IllegalArgumentException(sb2.toString());
                }
                StringBuilder sb3 = new StringBuilder(42);
                sb3.append("invalid latitude: ");
                sb3.append(d);
                throw new IllegalArgumentException(sb3.toString());
            }
            StringBuilder sb4 = new StringBuilder(31);
            sb4.append("invalid radius: ");
            sb4.append(f);
            throw new IllegalArgumentException(sb4.toString());
        }
        String valueOf = String.valueOf(str);
        if (valueOf.length() != 0) {
            str2 = "requestId is null or too long: ".concat(valueOf);
        } else {
            str2 = new String("requestId is null or too long: ");
        }
        throw new IllegalArgumentException(str2);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzbe) {
            zzbe zzbeVar = (zzbe) obj;
            if (this.j == zzbeVar.j && this.h == zzbeVar.h && this.i == zzbeVar.i && this.g == zzbeVar.g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.h);
        long doubleToLongBits2 = Double.doubleToLongBits(this.i);
        return ((((Float.floatToIntBits(this.j) + ((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31)) * 31) + this.g) * 31) + this.k;
    }

    public final String toString() {
        String str;
        Locale locale = Locale.US;
        short s = this.g;
        if (s != -1) {
            if (s != 1) {
                str = "UNKNOWN";
            } else {
                str = "CIRCLE";
            }
        } else {
            str = "INVALID";
        }
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", str, this.f10357c.replaceAll("\\p{C}", "?"), Integer.valueOf(this.k), Double.valueOf(this.h), Double.valueOf(this.i), Float.valueOf(this.j), Integer.valueOf(this.l / 1000), Integer.valueOf(this.m), Long.valueOf(this.f));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 1, this.f10357c, false);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeShort(parcel, 3, this.g);
        SafeParcelWriter.writeDouble(parcel, 4, this.h);
        SafeParcelWriter.writeDouble(parcel, 5, this.i);
        SafeParcelWriter.writeFloat(parcel, 6, this.j);
        SafeParcelWriter.writeInt(parcel, 7, this.k);
        SafeParcelWriter.writeInt(parcel, 8, this.l);
        SafeParcelWriter.writeInt(parcel, 9, this.m);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
