package androidx.core.location;

import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.TimeUtils;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public final class LocationRequestCompat {

    /* loaded from: classes.dex */
    public static class Api19Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api31Impl {
    }

    /* loaded from: classes.dex */
    public static final class Builder {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface Quality {
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof LocationRequestCompat) && Float.compare(0.0f, 0.0f) == 0) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = (int) 0;
        return (i * 31) + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        sb.append("@");
        TimeUtils.a(sb, 0L);
        sb.append(", duration=");
        TimeUtils.a(sb, 0L);
        sb.append(", maxUpdates=");
        sb.append(0);
        if (0.0f > 0.0d) {
            sb.append(", minUpdateDistance=");
            sb.append(0.0f);
        }
        sb.append(']');
        return sb.toString();
    }
}
