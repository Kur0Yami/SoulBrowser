package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Entity;

@Entity
@RestrictTo
/* loaded from: classes.dex */
public class Preference {

    /* renamed from: a, reason: collision with root package name */
    public final String f1926a;
    public final Long b;

    public Preference(String str, long j) {
        this.f1926a = str;
        this.b = Long.valueOf(j);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Preference)) {
            return false;
        }
        Preference preference = (Preference) obj;
        Long l = preference.b;
        if (!this.f1926a.equals(preference.f1926a)) {
            return false;
        }
        Long l2 = this.b;
        if (l2 != null) {
            return l2.equals(l);
        }
        if (l == null) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.f1926a.hashCode() * 31;
        Long l = this.b;
        if (l != null) {
            i = l.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}
