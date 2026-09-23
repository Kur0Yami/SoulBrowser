package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzhai implements zzhih {

    /* renamed from: a, reason: collision with root package name */
    public final List f8327a;
    public final zzhip b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhai f8328c;

    public zzhai(ArrayList arrayList, zzhip zzhipVar, zzhai zzhaiVar) {
        this.f8327a = arrayList;
        this.b = zzhipVar;
        this.f8328c = zzhaiVar;
    }

    public static final zzhai a(zzhpj zzhpjVar) {
        zzgzx zzhimVar;
        boolean z;
        if (zzhpjVar != null && zzhpjVar.F() > 0) {
            ArrayList arrayList = new ArrayList(zzhpjVar.F());
            for (zzhpi zzhpiVar : zzhpjVar.E()) {
                int F = zzhpiVar.F();
                try {
                    zzhjz g = g(zzhpiVar);
                    zzhje zzhjeVar = zzhje.b;
                    zzhki zzhkiVar = (zzhki) zzhjeVar.f8591a.get();
                    zzhkiVar.getClass();
                    if (!zzhkiVar.b.containsKey(new zzhkg(zzhjz.class, g.b))) {
                        zzhimVar = new zzhim(g);
                    } else {
                        zzhimVar = zzhjeVar.e(g);
                    }
                    z = false;
                } catch (GeneralSecurityException e) {
                    if (!((zzhgy) zzhgz.f8540a).f8539a.get()) {
                        zzhimVar = new zzhim(g(zzhpiVar));
                        z = true;
                    } else {
                        throw e;
                    }
                }
                if (!((zzhgy) zzhgz.f8540a).f8539a.get() || h(zzhpiVar.L())) {
                    boolean z2 = true;
                    int L = zzhpiVar.L();
                    if (F != zzhpjVar.D()) {
                        z2 = false;
                    }
                    arrayList.add(new zzhag(zzhimVar, L, F, z2, z, zzhaf.f8324a));
                } else {
                    throw new GeneralSecurityException("Parsing of a single key failed (wrong status) and Tink is configured via validateKeysetsOnParsing to reject such keysets.");
                }
            }
            return new zzhai(DesugarCollections.unmodifiableList(arrayList), zzhip.b);
        }
        throw new GeneralSecurityException("empty keyset");
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhae] */
    public static final zzhai e(zzhan zzhanVar) {
        int i;
        int i2;
        Integer num;
        int i3;
        zzhad zzhadVar = new zzhad();
        zzhab zzhabVar = new zzhab(zzhanVar);
        zzhac zzhacVar = zzhac.f8321a;
        zzhabVar.f8320c = zzhacVar;
        zzhabVar.f8319a = true;
        ArrayList arrayList = zzhadVar.f8322a;
        int size = arrayList.size();
        int i4 = 0;
        int i5 = 0;
        while (i5 < size) {
            Object obj = arrayList.get(i5);
            i5++;
            ((zzhab) obj).f8319a = false;
        }
        arrayList.add(zzhabVar);
        if (!zzhadVar.f8323c) {
            zzhadVar.f8323c = true;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int i6 = 0;
            while (i6 < arrayList.size() - 1) {
                int i7 = i6 + 1;
                if (((zzhab) arrayList.get(i6)).f8320c == zzhacVar && ((zzhab) arrayList.get(i7)).f8320c != zzhacVar) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
                i6 = i7;
            }
            HashSet hashSet = new HashSet();
            int size2 = arrayList.size();
            int i8 = 0;
            Integer num2 = null;
            while (i8 < size2) {
                Object obj2 = arrayList.get(i8);
                i8++;
                zzhab zzhabVar2 = (zzhab) obj2;
                zzhabVar2.getClass();
                zzhan zzhanVar2 = zzhabVar2.b;
                zzhac zzhacVar2 = zzhabVar2.f8320c;
                if (zzhacVar2 != null) {
                    if (zzhacVar2 == zzhacVar) {
                        int i9 = i4;
                        while (true) {
                            i = i4;
                            if (i9 != 0 && !hashSet.contains(Integer.valueOf(i9))) {
                                break;
                            }
                            int i10 = zzhkl.f8617a;
                            i9 = i;
                            while (i9 == 0) {
                                byte[] a2 = zzhkc.a(4);
                                int i11 = a2[i] & UByte.MAX_VALUE;
                                i9 = ((a2[1] & UByte.MAX_VALUE) << 16) | (i11 << 24) | ((a2[2] & UByte.MAX_VALUE) << 8) | (a2[3] & UByte.MAX_VALUE);
                            }
                            i4 = i;
                        }
                        i2 = i9;
                    } else {
                        i = i4;
                        i2 = i;
                    }
                    Integer valueOf = Integer.valueOf(i2);
                    if (!hashSet.contains(valueOf)) {
                        hashSet.add(valueOf);
                        if (true != zzhanVar2.a()) {
                            num = null;
                        } else {
                            num = valueOf;
                        }
                        zzgzx b = zzhiv.f8581c.b(zzhanVar2, num);
                        Object obj3 = zzgzz.b;
                        if (obj3.equals(obj3)) {
                            i3 = 3;
                        } else if (zzgzz.f8315c.equals(obj3)) {
                            i3 = 4;
                        } else if (zzgzz.d.equals(obj3)) {
                            i3 = 5;
                        } else {
                            throw new IllegalStateException("Unknown key status");
                        }
                        boolean z = zzhabVar2.f8319a;
                        zzhag zzhagVar = new zzhag(b, i3, i2, z, false, zzhaf.f8324a);
                        if (z) {
                            if (num2 == null) {
                                num2 = valueOf;
                            } else {
                                throw new GeneralSecurityException("Two primaries were set");
                            }
                        }
                        arrayList2.add(zzhagVar);
                        i4 = i;
                    } else {
                        int i12 = i2;
                        throw new GeneralSecurityException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i12).length() + 31), "Id ", i12, " is used twice in the keyset"));
                    }
                } else {
                    throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
                }
            }
            int i13 = i4;
            if (num2 != null) {
                zzhip zzhipVar = zzhadVar.b;
                zzhai zzhaiVar = new zzhai(arrayList2, zzhipVar);
                if (!zzhipVar.f8578a.isEmpty()) {
                    ?? obj4 = new Object();
                    ArrayList arrayList3 = new ArrayList(arrayList2.size());
                    int size3 = arrayList2.size();
                    for (int i14 = i13; i14 < size3; i14++) {
                        zzhag zzhagVar2 = (zzhag) arrayList2.get(i14);
                        arrayList3.add(new zzhag(zzhagVar2.f8325a, zzhagVar2.g, zzhagVar2.f8326c, zzhagVar2.d, zzhagVar2.e, obj4));
                    }
                    return new zzhai(arrayList3, zzhipVar, zzhaiVar);
                }
                return zzhaiVar;
            }
            throw new GeneralSecurityException("No primary was set");
        }
        throw new GeneralSecurityException("KeysetHandle.Builder#build must only be called once");
    }

    public static zzhjz g(zzhpi zzhpiVar) {
        Integer valueOf;
        int F = zzhpiVar.F();
        if (zzhpiVar.G() == zzhpw.RAW) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(F);
        }
        return zzhjz.a(zzhpiVar.E().D(), zzhpiVar.E().E(), zzhpiVar.E().F(), zzhpiVar.G(), valueOf);
    }

    public static boolean h(int i) {
        int i2 = i - 2;
        return i2 == 1 || i2 == 2 || i2 == 3;
    }

    public final zzhpj b() {
        try {
            zzhpg J = zzhpj.J();
            for (zzhag zzhagVar : this.f8327a) {
                zzgzx a2 = zzhagVar.a();
                int i = zzhagVar.f8326c;
                int i2 = zzhagVar.g;
                zzhjz zzhjzVar = (zzhjz) zzhje.b.f(a2);
                Integer b = a2.b();
                if (b != null && b.intValue() != i) {
                    throw new GeneralSecurityException("Wrong ID set for key with ID requirement");
                }
                zzhph H = zzhpi.H();
                zzhoy G = zzhpa.G();
                String str = zzhjzVar.f8605a;
                G.k();
                ((zzhpa) G.f).I(str);
                zzhzl zzhzlVar = zzhjzVar.f8606c;
                G.k();
                ((zzhpa) G.f).J(zzhzlVar);
                zzhoz zzhozVar = zzhjzVar.d;
                G.k();
                ((zzhpa) G.f).K(zzhozVar);
                H.k();
                ((zzhpi) H.f).I((zzhpa) G.m());
                H.k();
                ((zzhpi) H.f).M(i2);
                H.k();
                ((zzhpi) H.f).J(i);
                zzhpw zzhpwVar = zzhjzVar.e;
                H.k();
                ((zzhpi) H.f).K(zzhpwVar);
                zzhpi zzhpiVar = (zzhpi) H.m();
                J.k();
                ((zzhpj) J.f).L(zzhpiVar);
                if (zzhagVar.d) {
                    J.k();
                    ((zzhpj) J.f).K(i);
                }
            }
            return (zzhpj) J.m();
        } catch (GeneralSecurityException e) {
            throw new RuntimeException(e);
        }
    }

    public final zzhag c() {
        for (zzhag zzhagVar : this.f8327a) {
            if (zzhagVar != null && zzhagVar.d) {
                if (zzhagVar.b == zzgzz.b) {
                    return zzhagVar;
                }
                throw new IllegalStateException("Keyset has primary which isn't enabled");
            }
        }
        throw new IllegalStateException("Keyset has no valid primary");
    }

    public final zzhag d(int i) {
        List list = this.f8327a;
        if (i >= 0 && i < list.size()) {
            zzhag zzhagVar = (zzhag) list.get(i);
            if (h(zzhagVar.g)) {
                if (!zzhagVar.e) {
                    return (zzhag) list.get(i);
                }
                throw new IllegalStateException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 48), "Keyset-Entry at position ", i, " didn't parse correctly"));
            }
            throw new IllegalStateException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 42), "Keyset-Entry at position ", i, " has wrong status"));
        }
        int size = list.size();
        throw new IndexOutOfBoundsException(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(i).length() + 34 + String.valueOf(size).length()), "Invalid index ", i, " for keyset of size ", size));
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x00eb, code lost:
    
        r13 = r1.G(r5).E().D();
        r0 = new java.lang.StringBuilder((java.lang.String.valueOf(r13).length() + (java.lang.String.valueOf(r5).length() + 44)) + 32);
        r0.append("Key parsing of key with index ");
        r0.append(r5);
        r0.append(" and type_url ");
        r0.append(r13);
        r0.append(" failed, unable to get primitive");
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x012f, code lost:
    
        throw new java.security.GeneralSecurityException(r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object f(com.google.android.gms.internal.ads.zzhhv r13, java.lang.Class r14) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhai.f(com.google.android.gms.internal.ads.zzhhv, java.lang.Class):java.lang.Object");
    }

    public final String toString() {
        zzhpj b = b();
        int i = zzhau.f8330a;
        zzhpk D = zzhpn.D();
        int D2 = b.D();
        D.k();
        ((zzhpn) D.f).E(D2);
        for (zzhpi zzhpiVar : b.E()) {
            zzhpl D3 = zzhpm.D();
            String D4 = zzhpiVar.E().D();
            D3.k();
            ((zzhpm) D3.f).E(D4);
            int L = zzhpiVar.L();
            D3.k();
            ((zzhpm) D3.f).H(L);
            zzhpw G = zzhpiVar.G();
            D3.k();
            ((zzhpm) D3.f).G(G);
            int F = zzhpiVar.F();
            D3.k();
            ((zzhpm) D3.f).F(F);
            zzhpm zzhpmVar = (zzhpm) D3.m();
            D.k();
            ((zzhpn) D.f).F(zzhpmVar);
        }
        return ((zzhpn) D.m()).toString();
    }

    @Override // com.google.android.gms.internal.ads.zzhih
    public final int zzd() {
        return this.f8327a.size();
    }

    public zzhai(List list, zzhip zzhipVar) {
        this.f8327a = list;
        this.b = zzhipVar;
        if (((zzhgy) zzhgz.f8540a).f8539a.get()) {
            HashSet hashSet = new HashSet();
            Iterator it = list.iterator();
            boolean z = false;
            while (it.hasNext()) {
                zzhag zzhagVar = (zzhag) it.next();
                int i = zzhagVar.f8326c;
                if (!hashSet.contains(Integer.valueOf(i))) {
                    hashSet.add(Integer.valueOf(i));
                    z |= zzhagVar.d;
                } else {
                    throw new GeneralSecurityException(androidx.work.impl.workers.a.t(new StringBuilder(String.valueOf(i).length() + 121), "KeyID ", i, " is duplicated in the keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing."));
                }
            }
            if (!z) {
                throw new GeneralSecurityException("Primary key id not found in keyset, and Tink is configured to reject such keysets with the flag validateKeysetsOnParsing.");
            }
        }
        this.f8328c = null;
    }
}
