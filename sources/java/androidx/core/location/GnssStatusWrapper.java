package androidx.core.location;

import android.location.GnssStatus;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;

@RequiresApi
@RestrictTo
/* loaded from: classes.dex */
class GnssStatusWrapper extends GnssStatusCompat {

    /* renamed from: a, reason: collision with root package name */
    public final GnssStatus f701a;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    public GnssStatusWrapper(Object obj) {
        GnssStatus gnssStatus = (GnssStatus) obj;
        gnssStatus.getClass();
        this.f701a = gnssStatus;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GnssStatusWrapper)) {
            return false;
        }
        return this.f701a.equals(((GnssStatusWrapper) obj).f701a);
    }

    public final int hashCode() {
        return this.f701a.hashCode();
    }
}
