package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzx {

    /* renamed from: a, reason: collision with root package name */
    public final String f9354a;
    public final String b;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
    }

    public zzx(String str, String str2) {
        this.f9354a = zzfj.o(str);
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzx.class == obj.getClass()) {
            zzx zzxVar = (zzx) obj;
            if (Objects.equals(this.f9354a, zzxVar.f9354a) && Objects.equals(this.b, zzxVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.b.hashCode() * 31;
        String str = this.f9354a;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }
}
