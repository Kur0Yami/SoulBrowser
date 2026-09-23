package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Comparator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzhya extends AbstractMap implements Serializable {
    public static final Comparator l = new Object();
    public zzhxz f;
    public zzhxv j;
    public zzhxx k;
    public int g = 0;
    public int h = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Comparator f8880c = l;
    public final zzhxz i = new zzhxz();

    public final zzhxz a(Object obj, boolean z) {
        int i;
        zzhxz zzhxzVar;
        Comparable comparable;
        zzhxz zzhxzVar2;
        zzhxz zzhxzVar3 = this.f;
        Comparator comparator = l;
        Comparator comparator2 = this.f8880c;
        if (zzhxzVar3 != null) {
            if (comparator2 == comparator) {
                comparable = (Comparable) obj;
            } else {
                comparable = null;
            }
            while (true) {
                Object obj2 = zzhxzVar3.j;
                if (comparable != null) {
                    i = comparable.compareTo(obj2);
                } else {
                    i = ((zzhxt) comparator2).compare(obj, obj2);
                }
                if (i == 0) {
                    return zzhxzVar3;
                }
                if (i < 0) {
                    zzhxzVar2 = zzhxzVar3.f;
                } else {
                    zzhxzVar2 = zzhxzVar3.g;
                }
                if (zzhxzVar2 == null) {
                    break;
                }
                zzhxzVar3 = zzhxzVar2;
            }
        } else {
            i = 0;
        }
        if (!z) {
            return null;
        }
        zzhxz zzhxzVar4 = this.i;
        if (zzhxzVar3 == null) {
            if (comparator2 == comparator && !(obj instanceof Comparable)) {
                throw new ClassCastException(obj.getClass().getName().concat(" is not Comparable"));
            }
            zzhxzVar = new zzhxz(null, obj, zzhxzVar4, zzhxzVar4.i);
            this.f = zzhxzVar;
        } else {
            zzhxz zzhxzVar5 = new zzhxz(zzhxzVar3, obj, zzhxzVar4, zzhxzVar4.i);
            if (i < 0) {
                zzhxzVar3.f = zzhxzVar5;
            } else {
                zzhxzVar3.g = zzhxzVar5;
            }
            d(zzhxzVar3, true);
            zzhxzVar = zzhxzVar5;
        }
        this.g++;
        this.h++;
        return zzhxzVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002f, code lost:
    
        b(r0, false);
        r8 = r7.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0034, code lost:
    
        if (r8 == null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        r1 = r8.l;
        r0.f = r8;
        r8.f8877c = r0;
        r7.f = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0040, code lost:
    
        r8 = r7.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0042, code lost:
    
        if (r8 == null) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0044, code lost:
    
        r2 = r8.l;
        r0.g = r8;
        r8.f8877c = r0;
        r7.g = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004c, code lost:
    
        r0.l = java.lang.Math.max(r1, r2) + 1;
        c(r7, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0057, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0026, code lost:
    
        r5 = r0;
        r0 = r0.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x002b, code lost:
    
        if (r0 == null) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x002e, code lost:
    
        r0 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
    
        if (r8.l > r0.l) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
    
        r0 = r8;
        r8 = r8.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0023, code lost:
    
        if (r8 == null) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(com.google.android.gms.internal.ads.zzhxz r7, boolean r8) {
        /*
            r6 = this;
            if (r8 == 0) goto Lc
            com.google.android.gms.internal.ads.zzhxz r8 = r7.i
            com.google.android.gms.internal.ads.zzhxz r0 = r7.h
            r8.h = r0
            com.google.android.gms.internal.ads.zzhxz r0 = r7.h
            r0.i = r8
        Lc:
            com.google.android.gms.internal.ads.zzhxz r8 = r7.f
            com.google.android.gms.internal.ads.zzhxz r0 = r7.g
            com.google.android.gms.internal.ads.zzhxz r1 = r7.f8877c
            r2 = 0
            r3 = 0
            if (r8 == 0) goto L58
            if (r0 == 0) goto L58
            int r1 = r8.l
            int r4 = r0.l
            if (r1 <= r4) goto L26
        L1e:
            com.google.android.gms.internal.ads.zzhxz r0 = r8.g
            r5 = r0
            r0 = r8
            r8 = r5
            if (r8 == 0) goto L2f
            goto L1e
        L26:
            com.google.android.gms.internal.ads.zzhxz r8 = r0.f
            r5 = r0
            r0 = r8
            r8 = r5
            if (r0 == 0) goto L2e
            goto L26
        L2e:
            r0 = r8
        L2f:
            r6.b(r0, r2)
            com.google.android.gms.internal.ads.zzhxz r8 = r7.f
            if (r8 == 0) goto L3f
            int r1 = r8.l
            r0.f = r8
            r8.f8877c = r0
            r7.f = r3
            goto L40
        L3f:
            r1 = r2
        L40:
            com.google.android.gms.internal.ads.zzhxz r8 = r7.g
            if (r8 == 0) goto L4c
            int r2 = r8.l
            r0.g = r8
            r8.f8877c = r0
            r7.g = r3
        L4c:
            int r8 = java.lang.Math.max(r1, r2)
            int r8 = r8 + 1
            r0.l = r8
            r6.c(r7, r0)
            return
        L58:
            if (r8 == 0) goto L60
            r6.c(r7, r8)
            r7.f = r3
            goto L6b
        L60:
            if (r0 == 0) goto L68
            r6.c(r7, r0)
            r7.g = r3
            goto L6b
        L68:
            r6.c(r7, r3)
        L6b:
            r6.d(r1, r2)
            int r7 = r6.g
            int r7 = r7 + (-1)
            r6.g = r7
            int r7 = r6.h
            int r7 = r7 + 1
            r6.h = r7
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhya.b(com.google.android.gms.internal.ads.zzhxz, boolean):void");
    }

    public final void c(zzhxz zzhxzVar, zzhxz zzhxzVar2) {
        zzhxz zzhxzVar3 = zzhxzVar.f8877c;
        zzhxzVar.f8877c = null;
        if (zzhxzVar2 != null) {
            zzhxzVar2.f8877c = zzhxzVar3;
        }
        if (zzhxzVar3 != null) {
            if (zzhxzVar3.f == zzhxzVar) {
                zzhxzVar3.f = zzhxzVar2;
                return;
            } else {
                zzhxzVar3.g = zzhxzVar2;
                return;
            }
        }
        this.f = zzhxzVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f = null;
        this.g = 0;
        this.h++;
        zzhxz zzhxzVar = this.i;
        zzhxzVar.i = zzhxzVar;
        zzhxzVar.h = zzhxzVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        zzhxz zzhxzVar = null;
        if (obj != null) {
            try {
                zzhxzVar = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        if (zzhxzVar == null) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x002f, code lost:
    
        if (r10 == false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x005a, code lost:
    
        if (r10 == false) goto L47;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0080 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0084 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0080 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void d(com.google.android.gms.internal.ads.zzhxz r9, boolean r10) {
        /*
            r8 = this;
        L0:
            if (r9 == 0) goto L84
            com.google.android.gms.internal.ads.zzhxz r0 = r9.f
            com.google.android.gms.internal.ads.zzhxz r1 = r9.g
            r2 = 0
            if (r0 == 0) goto Lc
            int r3 = r0.l
            goto Ld
        Lc:
            r3 = r2
        Ld:
            if (r1 == 0) goto L12
            int r4 = r1.l
            goto L13
        L12:
            r4 = r2
        L13:
            int r5 = r3 - r4
            r6 = -2
            r7 = 1
            if (r5 != r6) goto L42
            com.google.android.gms.internal.ads.zzhxz r0 = r1.f
            com.google.android.gms.internal.ads.zzhxz r3 = r1.g
            if (r3 == 0) goto L22
            int r3 = r3.l
            goto L23
        L22:
            r3 = r2
        L23:
            if (r0 == 0) goto L28
            int r0 = r0.l
            goto L29
        L28:
            r0 = r2
        L29:
            int r0 = r0 - r3
            r3 = -1
            if (r0 == r3) goto L3a
            if (r0 != 0) goto L32
            if (r10 != 0) goto L33
            goto L3b
        L32:
            r7 = r10
        L33:
            r8.f(r1)
            r8.e(r9)
            goto L3f
        L3a:
            r2 = r10
        L3b:
            r8.e(r9)
            r7 = r2
        L3f:
            if (r7 != 0) goto L84
            goto L80
        L42:
            r1 = 2
            if (r5 != r1) goto L6d
            com.google.android.gms.internal.ads.zzhxz r1 = r0.f
            com.google.android.gms.internal.ads.zzhxz r3 = r0.g
            if (r3 == 0) goto L4e
            int r3 = r3.l
            goto L4f
        L4e:
            r3 = r2
        L4f:
            if (r1 == 0) goto L54
            int r1 = r1.l
            goto L55
        L54:
            r1 = r2
        L55:
            int r1 = r1 - r3
            if (r1 == r7) goto L65
            if (r1 != 0) goto L5d
            if (r10 != 0) goto L5e
            goto L66
        L5d:
            r7 = r10
        L5e:
            r8.e(r0)
            r8.f(r9)
            goto L6a
        L65:
            r2 = r10
        L66:
            r8.f(r9)
            r7 = r2
        L6a:
            if (r7 == 0) goto L80
            goto L84
        L6d:
            if (r5 != 0) goto L76
            int r3 = r3 + 1
            r9.l = r3
            if (r10 == 0) goto L80
            goto L84
        L76:
            int r0 = java.lang.Math.max(r3, r4)
            int r0 = r0 + r7
            r9.l = r0
            if (r10 != 0) goto L80
            goto L84
        L80:
            com.google.android.gms.internal.ads.zzhxz r9 = r9.f8877c
            goto L0
        L84:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhya.d(com.google.android.gms.internal.ads.zzhxz, boolean):void");
    }

    public final void e(zzhxz zzhxzVar) {
        int i;
        int i2;
        zzhxz zzhxzVar2 = zzhxzVar.f;
        zzhxz zzhxzVar3 = zzhxzVar.g;
        zzhxz zzhxzVar4 = zzhxzVar3.f;
        zzhxz zzhxzVar5 = zzhxzVar3.g;
        zzhxzVar.g = zzhxzVar4;
        if (zzhxzVar4 != null) {
            zzhxzVar4.f8877c = zzhxzVar;
        }
        c(zzhxzVar, zzhxzVar3);
        zzhxzVar3.f = zzhxzVar;
        zzhxzVar.f8877c = zzhxzVar3;
        int i3 = 0;
        if (zzhxzVar2 != null) {
            i = zzhxzVar2.l;
        } else {
            i = 0;
        }
        if (zzhxzVar4 != null) {
            i2 = zzhxzVar4.l;
        } else {
            i2 = 0;
        }
        int max = Math.max(i, i2) + 1;
        zzhxzVar.l = max;
        if (zzhxzVar5 != null) {
            i3 = zzhxzVar5.l;
        }
        zzhxzVar3.l = Math.max(max, i3) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        zzhxv zzhxvVar = this.j;
        if (zzhxvVar == null) {
            zzhxv zzhxvVar2 = new zzhxv(this);
            this.j = zzhxvVar2;
            return zzhxvVar2;
        }
        return zzhxvVar;
    }

    public final void f(zzhxz zzhxzVar) {
        int i;
        int i2;
        zzhxz zzhxzVar2 = zzhxzVar.f;
        zzhxz zzhxzVar3 = zzhxzVar.g;
        zzhxz zzhxzVar4 = zzhxzVar2.f;
        zzhxz zzhxzVar5 = zzhxzVar2.g;
        zzhxzVar.f = zzhxzVar5;
        if (zzhxzVar5 != null) {
            zzhxzVar5.f8877c = zzhxzVar;
        }
        c(zzhxzVar, zzhxzVar2);
        zzhxzVar2.g = zzhxzVar;
        zzhxzVar.f8877c = zzhxzVar2;
        int i3 = 0;
        if (zzhxzVar3 != null) {
            i = zzhxzVar3.l;
        } else {
            i = 0;
        }
        if (zzhxzVar5 != null) {
            i2 = zzhxzVar5.l;
        } else {
            i2 = 0;
        }
        int max = Math.max(i, i2) + 1;
        zzhxzVar.l = max;
        if (zzhxzVar4 != null) {
            i3 = zzhxzVar4.l;
        }
        zzhxzVar2.l = Math.max(max, i3) + 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x000f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object get(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.android.gms.internal.ads.zzhxz r3 = r2.a(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto Lf
            java.lang.Object r3 = r3.k
            return r3
        Lf:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhya.get(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        zzhxx zzhxxVar = this.k;
        if (zzhxxVar == null) {
            zzhxx zzhxxVar2 = new zzhxx(this);
            this.k = zzhxxVar2;
            return zzhxxVar2;
        }
        return zzhxxVar;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object put(Object obj, Object obj2) {
        if (obj != null) {
            if (obj2 != null) {
                zzhxz a2 = a(obj, true);
                Object obj3 = a2.k;
                a2.k = obj2;
                return obj3;
            }
            throw new NullPointerException("value == null");
        }
        throw new NullPointerException("key == null");
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x000c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0012  */
    @Override // java.util.AbstractMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object remove(java.lang.Object r3) {
        /*
            r2 = this;
            r0 = 0
            if (r3 == 0) goto L9
            r1 = 0
            com.google.android.gms.internal.ads.zzhxz r3 = r2.a(r3, r1)     // Catch: java.lang.ClassCastException -> L9
            goto La
        L9:
            r3 = r0
        La:
            if (r3 == 0) goto L10
            r1 = 1
            r2.b(r3, r1)
        L10:
            if (r3 == 0) goto L15
            java.lang.Object r3 = r3.k
            return r3
        L15:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhya.remove(java.lang.Object):java.lang.Object");
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.g;
    }
}
