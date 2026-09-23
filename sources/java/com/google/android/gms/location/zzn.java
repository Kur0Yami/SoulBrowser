package com.google.android.gms.location;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzn implements Comparator<ActivityTransition> {
    @Override // java.util.Comparator
    public final int compare(ActivityTransition activityTransition, ActivityTransition activityTransition2) {
        ActivityTransition activityTransition3 = activityTransition;
        ActivityTransition activityTransition4 = activityTransition2;
        Preconditions.checkNotNull(activityTransition3);
        Preconditions.checkNotNull(activityTransition4);
        int i = activityTransition3.f11563c;
        int i2 = activityTransition4.f11563c;
        if (i != i2) {
            if (i < i2) {
                return -1;
            }
            return 1;
        }
        int i3 = activityTransition3.f;
        int i4 = activityTransition4.f;
        if (i3 == i4) {
            return 0;
        }
        if (i3 < i4) {
            return -1;
        }
        return 1;
    }
}
