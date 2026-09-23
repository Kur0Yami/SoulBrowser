package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Entity;

@Entity
@RestrictTo
/* loaded from: classes.dex */
public class SystemIdInfo {

    /* renamed from: a, reason: collision with root package name */
    public final String f1928a;
    public final int b;

    public SystemIdInfo(String str, int i) {
        this.f1928a = str;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SystemIdInfo)) {
            return false;
        }
        SystemIdInfo systemIdInfo = (SystemIdInfo) obj;
        if (this.b != systemIdInfo.b) {
            return false;
        }
        return this.f1928a.equals(systemIdInfo.f1928a);
    }

    public final int hashCode() {
        return (this.f1928a.hashCode() * 31) + this.b;
    }
}
