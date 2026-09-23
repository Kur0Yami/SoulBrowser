package com.google.android.gms.internal.fido;

import android.support.v4.media.a;

/* loaded from: classes3.dex */
public class zzdk {

    /* renamed from: a, reason: collision with root package name */
    public final String f10292a;
    public final Class b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f10293c;

    public zzdk(String str, Class cls, boolean z, int i) {
        if (!str.isEmpty()) {
            char charAt = str.charAt(0);
            if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
                for (int i2 = 1; i2 < str.length(); i2++) {
                    char charAt2 = str.charAt(i2);
                    if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && ((charAt2 < '0' || charAt2 > '9') && charAt2 != '_'))) {
                        throw new IllegalArgumentException("identifier must contain only ASCII letters, digits or underscore: ".concat(str));
                    }
                }
                this.f10292a = str;
                this.b = cls;
                this.f10293c = z;
                System.identityHashCode(this);
                for (int i3 = 0; i3 < 5; i3++) {
                }
                return;
            }
            throw new IllegalArgumentException("identifier must start with an ASCII letter: ".concat(str));
        }
        throw new IllegalArgumentException("identifier must not be empty");
    }

    public final String toString() {
        String name = getClass().getName();
        return a.r(a.v(name, "/"), this.f10292a, "[", this.b.getName(), "]");
    }
}
