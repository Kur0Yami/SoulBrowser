package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public class zzit {

    /* renamed from: a, reason: collision with root package name */
    public final String f9730a;
    public final Class b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f9731c;

    public zzit(String str, Class cls, boolean z, int i) {
        char charAt = str.charAt(0);
        if ((charAt >= 'a' && charAt <= 'z') || (charAt >= 'A' && charAt <= 'Z')) {
            for (int i2 = 1; i2 < str.length(); i2++) {
                char charAt2 = str.charAt(i2);
                if ((charAt2 < 'a' || charAt2 > 'z') && ((charAt2 < 'A' || charAt2 > 'Z') && ((charAt2 < '0' || charAt2 > '9') && charAt2 != '_'))) {
                    throw new IllegalArgumentException("identifier must contain only ASCII letters, digits or underscore: ".concat(str));
                }
            }
            this.f9730a = str;
            this.b = cls;
            this.f9731c = z;
            System.identityHashCode(this);
            for (int i3 = 0; i3 < 5; i3++) {
            }
            return;
        }
        throw new IllegalArgumentException("identifier must start with an ASCII letter: ".concat(str));
    }

    public final String toString() {
        String name = getClass().getName();
        String name2 = this.b.getName();
        int length = name.length();
        int length2 = name2.length();
        String str = this.f9730a;
        StringBuilder sb = new StringBuilder(str.length() + length + 1 + 1 + length2 + 1);
        android.support.v4.media.a.z(sb, name, "/", str, "[");
        return android.support.v4.media.a.p(sb, name2, "]");
    }
}
