package androidx.work;

import android.net.Uri;
import androidx.annotation.RestrictTo;
import java.util.HashSet;

@RestrictTo
/* loaded from: classes.dex */
public final class ContentUriTriggers {

    /* renamed from: a, reason: collision with root package name */
    public final HashSet f1831a = new HashSet();

    /* loaded from: classes.dex */
    public static final class Trigger {

        /* renamed from: a, reason: collision with root package name */
        public final Uri f1832a;
        public final boolean b;

        public Trigger(boolean z, Uri uri) {
            this.f1832a = uri;
            this.b = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && Trigger.class == obj.getClass()) {
                Trigger trigger = (Trigger) obj;
                if (this.b == trigger.b && this.f1832a.equals(trigger.f1832a)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return (this.f1832a.hashCode() * 31) + (this.b ? 1 : 0);
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ContentUriTriggers.class == obj.getClass()) {
            return this.f1831a.equals(((ContentUriTriggers) obj).f1831a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f1831a.hashCode();
    }
}
