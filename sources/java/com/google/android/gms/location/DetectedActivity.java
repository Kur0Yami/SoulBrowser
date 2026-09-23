package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DetectedActivityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class DetectedActivity extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<DetectedActivity> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public int f11567c;
    public int f;

    public final boolean equals(Object obj) {
        if (obj instanceof DetectedActivity) {
            DetectedActivity detectedActivity = (DetectedActivity) obj;
            if (this.f11567c == detectedActivity.f11567c && this.f == detectedActivity.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f11567c), Integer.valueOf(this.f));
    }

    public final String toString() {
        String str;
        int i = this.f11567c;
        if (i > 22 || i < 0) {
            i = 4;
        }
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i != 5) {
                                if (i != 7) {
                                    if (i != 8) {
                                        if (i != 16) {
                                            if (i != 17) {
                                                str = Integer.toString(i);
                                            } else {
                                                str = "IN_RAIL_VEHICLE";
                                            }
                                        } else {
                                            str = "IN_ROAD_VEHICLE";
                                        }
                                    } else {
                                        str = "RUNNING";
                                    }
                                } else {
                                    str = "WALKING";
                                }
                            } else {
                                str = "TILTING";
                            }
                        } else {
                            str = "UNKNOWN";
                        }
                    } else {
                        str = "STILL";
                    }
                } else {
                    str = "ON_FOOT";
                }
            } else {
                str = "ON_BICYCLE";
            }
        } else {
            str = "IN_VEHICLE";
        }
        int i2 = this.f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(str);
        sb.append(", confidence=");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Preconditions.checkNotNull(parcel);
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f11567c);
        SafeParcelWriter.writeInt(parcel, 2, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
