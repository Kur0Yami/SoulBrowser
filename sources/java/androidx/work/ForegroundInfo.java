package androidx.work;

import android.app.Notification;

/* loaded from: classes.dex */
public final class ForegroundInfo {

    /* renamed from: a, reason: collision with root package name */
    public final int f1838a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final Notification f1839c;

    public ForegroundInfo(int i, int i2, Notification notification) {
        this.f1838a = i;
        this.f1839c = notification;
        this.b = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ForegroundInfo.class != obj.getClass()) {
            return false;
        }
        ForegroundInfo foregroundInfo = (ForegroundInfo) obj;
        if (this.f1838a != foregroundInfo.f1838a || this.b != foregroundInfo.b) {
            return false;
        }
        return this.f1839c.equals(foregroundInfo.f1839c);
    }

    public final int hashCode() {
        return this.f1839c.hashCode() + (((this.f1838a * 31) + this.b) * 31);
    }

    public final String toString() {
        return "ForegroundInfo{mNotificationId=" + this.f1838a + ", mForegroundServiceType=" + this.b + ", mNotification=" + this.f1839c + '}';
    }
}
