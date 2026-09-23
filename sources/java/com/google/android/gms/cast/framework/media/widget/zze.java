package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public final class zze {

    /* renamed from: a, reason: collision with root package name */
    public int f3548a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f3549c;
    public int d;
    public int e;
    public boolean f;

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zze)) {
            return false;
        }
        zze zzeVar = (zze) obj;
        if (this.f3548a == zzeVar.f3548a && this.b == zzeVar.b && this.f3549c == zzeVar.f3549c && this.d == zzeVar.d && this.e == zzeVar.e && this.f == zzeVar.f) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Integer.valueOf(this.f3548a), Integer.valueOf(this.b), Integer.valueOf(this.f3549c), Integer.valueOf(this.d), Integer.valueOf(this.e), Boolean.valueOf(this.f));
    }
}
