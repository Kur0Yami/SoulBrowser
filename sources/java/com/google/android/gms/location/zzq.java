package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzq implements Comparator<DetectedActivity> {
    @Override // java.util.Comparator
    public final int compare(DetectedActivity detectedActivity, DetectedActivity detectedActivity2) {
        DetectedActivity detectedActivity3 = detectedActivity;
        DetectedActivity detectedActivity4 = detectedActivity2;
        Preconditions.checkNotNull(detectedActivity3);
        Preconditions.checkNotNull(detectedActivity4);
        int compareTo = Integer.valueOf(detectedActivity4.f).compareTo(Integer.valueOf(detectedActivity3.f));
        if (compareTo == 0) {
            int i = detectedActivity3.f11567c;
            int i2 = 4;
            if (i > 22 || i < 0) {
                i = 4;
            }
            Integer valueOf = Integer.valueOf(i);
            int i3 = detectedActivity4.f11567c;
            if (i3 <= 22 && i3 >= 0) {
                i2 = i3;
            }
            return valueOf.compareTo(Integer.valueOf(i2));
        }
        return compareTo;
    }
}
