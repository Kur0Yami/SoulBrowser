package com.bumptech.glide.util;

/* loaded from: classes.dex */
public class MultiClassKey {

    /* renamed from: a, reason: collision with root package name */
    public Class f2495a;
    public Class b;

    /* renamed from: c, reason: collision with root package name */
    public Class f2496c;

    public MultiClassKey(Class cls, Class cls2, Class cls3) {
        this.f2495a = cls;
        this.b = cls2;
        this.f2496c = cls3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        MultiClassKey multiClassKey = (MultiClassKey) obj;
        if (this.f2495a.equals(multiClassKey.f2495a) && this.b.equals(multiClassKey.b) && Util.b(this.f2496c, multiClassKey.f2496c)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = (this.b.hashCode() + (this.f2495a.hashCode() * 31)) * 31;
        Class cls = this.f2496c;
        if (cls != null) {
            i = cls.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    public final String toString() {
        return "MultiClassKey{first=" + this.f2495a + ", second=" + this.b + '}';
    }
}
