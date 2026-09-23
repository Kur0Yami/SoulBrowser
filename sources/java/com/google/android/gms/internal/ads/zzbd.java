package com.google.android.gms.internal.ads;

import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzbd {

    /* renamed from: a, reason: collision with root package name */
    public Object f4557a;
    public Object b;

    /* renamed from: c, reason: collision with root package name */
    public int f4558c;
    public long d;
    public boolean e;
    public zzc f = zzc.b;

    static {
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
        Integer.toString(1, 36);
        Integer.toString(2, 36);
        Integer.toString(3, 36);
        Integer.toString(4, 36);
    }

    public final void a(Object obj, Object obj2, int i, long j, boolean z) {
        zzc zzcVar = zzc.b;
        this.f4557a = obj;
        this.b = obj2;
        this.f4558c = i;
        this.d = j;
        this.f = zzcVar;
        this.e = z;
    }

    public final long b(int i, int i2) {
        zza a2 = this.f.a(i);
        if (a2.f3841a != -1) {
            return a2.e[i2];
        }
        return -9223372036854775807L;
    }

    public final void c(int i) {
        this.f.a(i).getClass();
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && zzbd.class.equals(obj.getClass())) {
                zzbd zzbdVar = (zzbd) obj;
                if (Objects.equals(this.f4557a, zzbdVar.f4557a) && Objects.equals(this.b, zzbdVar.b) && this.f4558c == zzbdVar.f4558c && this.d == zzbdVar.d && this.e == zzbdVar.e && Objects.equals(this.f, zzbdVar.f)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        Object obj = this.f4557a;
        int i = 0;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.b;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        int i2 = ((((hashCode + 217) * 31) + i) * 31) + this.f4558c;
        long j = this.d;
        return this.f.hashCode() + (((((i2 * 31) + ((int) (j ^ (j >>> 32)))) * 961) + (this.e ? 1 : 0)) * 31);
    }
}
