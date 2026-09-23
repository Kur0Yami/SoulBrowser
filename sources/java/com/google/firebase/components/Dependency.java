package com.google.firebase.components;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
public final class Dependency {

    /* renamed from: a, reason: collision with root package name */
    public final Class f12622a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12623c;

    public Dependency(int i, int i2, Class cls) {
        this.f12622a = cls;
        this.b = i;
        this.f12623c = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Dependency) {
            Dependency dependency = (Dependency) obj;
            if (this.f12622a == dependency.f12622a && this.b == dependency.b && this.f12623c == dependency.f12623c) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f12622a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.f12623c;
    }

    public final String toString() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.f12622a);
        sb.append(", type=");
        int i = this.b;
        if (i == 1) {
            str = "required";
        } else if (i == 0) {
            str = "optional";
        } else {
            str = "set";
        }
        sb.append(str);
        sb.append(", injection=");
        int i2 = this.f12623c;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 == 2) {
                    str2 = "deferred";
                } else {
                    throw new AssertionError(a.e(i2, "Unsupported injection: "));
                }
            } else {
                str2 = "provider";
            }
        } else {
            str2 = "direct";
        }
        return a.p(sb, str2, "}");
    }
}
