package com.google.android.datatransport;

import android.support.v4.media.a;

/* loaded from: classes.dex */
public final class Encoding {

    /* renamed from: a, reason: collision with root package name */
    public final String f2754a;

    public Encoding(String str) {
        if (str != null) {
            this.f2754a = str;
            return;
        }
        throw new NullPointerException("name is null");
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Encoding)) {
            return false;
        }
        return this.f2754a.equals(((Encoding) obj).f2754a);
    }

    public final int hashCode() {
        return this.f2754a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return a.p(new StringBuilder("Encoding{name=\""), this.f2754a, "\"}");
    }
}
