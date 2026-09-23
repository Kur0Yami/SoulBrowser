package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzahz extends zzaig {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4052c;
    public final boolean d;
    public final String[] e;
    public final zzaig[] f;

    public zzahz(String str, boolean z, boolean z2, String[] strArr, zzaig[] zzaigVarArr) {
        super("CTOC");
        this.b = str;
        this.f4052c = z;
        this.d = z2;
        this.e = strArr;
        this.f = zzaigVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahz.class == obj.getClass()) {
            zzahz zzahzVar = (zzahz) obj;
            if (this.f4052c == zzahzVar.f4052c && this.d == zzahzVar.d && Objects.equals(this.b, zzahzVar.b) && Arrays.equals(this.e, zzahzVar.e) && Arrays.equals(this.f, zzahzVar.f)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + (((((this.f4052c ? 1 : 0) + 527) * 31) + (this.d ? 1 : 0)) * 31);
    }
}
