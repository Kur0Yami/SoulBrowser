package androidx.work;

import android.os.Build;

/* loaded from: classes.dex */
public final class Constraints {
    public static final Constraints i = new Builder().a();
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1829c;
    public boolean d;
    public boolean e;

    /* renamed from: a, reason: collision with root package name */
    public NetworkType f1828a = NetworkType.f1845c;
    public long f = -1;
    public long g = -1;
    public ContentUriTriggers h = new ContentUriTriggers();

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public NetworkType f1830a = NetworkType.f1845c;
        public final ContentUriTriggers b = new ContentUriTriggers();

        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.work.Constraints, java.lang.Object] */
        public final Constraints a() {
            ?? obj = new Object();
            obj.f1828a = NetworkType.f1845c;
            obj.f = -1L;
            obj.g = -1L;
            obj.h = new ContentUriTriggers();
            obj.b = false;
            int i = Build.VERSION.SDK_INT;
            obj.f1829c = false;
            obj.f1828a = this.f1830a;
            obj.d = false;
            obj.e = false;
            if (i >= 24) {
                obj.h = this.b;
                obj.f = -1L;
                obj.g = -1L;
            }
            return obj;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Constraints.class != obj.getClass()) {
            return false;
        }
        Constraints constraints = (Constraints) obj;
        if (this.b != constraints.b || this.f1829c != constraints.f1829c || this.d != constraints.d || this.e != constraints.e || this.f != constraints.f || this.g != constraints.g || this.f1828a != constraints.f1828a) {
            return false;
        }
        return this.h.equals(constraints.h);
    }

    public final int hashCode() {
        int hashCode = ((((((((this.f1828a.hashCode() * 31) + (this.b ? 1 : 0)) * 31) + (this.f1829c ? 1 : 0)) * 31) + (this.d ? 1 : 0)) * 31) + (this.e ? 1 : 0)) * 31;
        long j = this.f;
        int i2 = (hashCode + ((int) (j ^ (j >>> 32)))) * 31;
        long j2 = this.g;
        return this.h.f1831a.hashCode() + ((i2 + ((int) (j2 ^ (j2 >>> 32)))) * 31);
    }
}
