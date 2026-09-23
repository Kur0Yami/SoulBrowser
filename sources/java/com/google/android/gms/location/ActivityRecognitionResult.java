package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.reflect.Array;
import java.util.ArrayList;

@SafeParcelable.Class(creator = "ActivityRecognitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes3.dex */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f11562c;
    public long f;
    public long g;
    public int h;
    public Bundle i;

    public static boolean F(Bundle bundle, Bundle bundle2) {
        int length;
        if (bundle == null) {
            if (bundle2 == null) {
                return true;
            }
            return false;
        }
        if (bundle2 == null || bundle.size() != bundle2.size()) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            Object obj = bundle.get(str);
            Object obj2 = bundle2.get(str);
            if (obj == null) {
                if (obj2 != null) {
                    return false;
                }
            } else if (obj instanceof Bundle) {
                if (!F(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else {
                if (obj.getClass().isArray()) {
                    if (obj2 != null && obj2.getClass().isArray() && (length = Array.getLength(obj)) == Array.getLength(obj2)) {
                        for (int i = 0; i < length; i++) {
                            if (Objects.equal(Array.get(obj, i), Array.get(obj2, i))) {
                            }
                        }
                    }
                    return false;
                }
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && getClass() == obj.getClass()) {
                ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
                if (this.f == activityRecognitionResult.f && this.g == activityRecognitionResult.g && this.h == activityRecognitionResult.h && Objects.equal(this.f11562c, activityRecognitionResult.f11562c) && F(this.i, activityRecognitionResult.i)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hashCode(Long.valueOf(this.f), Long.valueOf(this.g), Integer.valueOf(this.h), this.f11562c, this.i);
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f11562c);
        long j = this.f;
        long j2 = this.g;
        StringBuilder sb = new StringBuilder(valueOf.length() + 124);
        a.y(sb, "ActivityRecognitionResult [probableActivities=", valueOf, ", timeMillis=");
        sb.append(j);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeTypedList(parcel, 1, this.f11562c, false);
        SafeParcelWriter.writeLong(parcel, 2, this.f);
        SafeParcelWriter.writeLong(parcel, 3, this.g);
        SafeParcelWriter.writeInt(parcel, 4, this.h);
        SafeParcelWriter.writeBundle(parcel, 5, this.i, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
