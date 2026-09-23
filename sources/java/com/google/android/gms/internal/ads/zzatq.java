package com.google.android.gms.internal.ads;

import j$.util.Optional;
import j$.util.function.Function$CC;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class zzatq implements zzauk {
    public static final /* synthetic */ zzatq b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzatq f4406c;
    public static final /* synthetic */ zzatq d;
    public static final /* synthetic */ zzatq e;
    public static final /* synthetic */ zzatq f;
    public static final /* synthetic */ zzatq g;
    public static final /* synthetic */ zzatq h;
    public static final /* synthetic */ zzatq i;
    public static final /* synthetic */ zzatq j;
    public static final /* synthetic */ zzatq k;
    public static final /* synthetic */ zzatq l;
    public static final /* synthetic */ zzatq m;
    public static final /* synthetic */ zzatq n;
    public static final /* synthetic */ zzatq o;
    public static final /* synthetic */ zzatq p;
    public static final /* synthetic */ zzatq q;
    public static final /* synthetic */ zzatq r;
    public static final /* synthetic */ zzatq s;
    public static final /* synthetic */ zzatq t;
    public static final /* synthetic */ zzatq u;
    public static final /* synthetic */ zzatq v;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4407a;

    static {
        int i2 = (((((~574682290) & 203332142) | 828655825) + ((574682290 & 488280686) | 1367367889)) - 2039730118) ^ (1891066487 % 382926234);
        int i3 = (((((~138700754) & 1311190796) | 1098494210) + ((138700754 & 235277837) | 2126145)) - 1303500118) ^ (631340353 % 54449299);
        int i4 = (((((~429857344) & 761470753) | 244716435) + ((429857344 & 862030880) | 1585885407)) - (-1912977126)) ^ (1209597698 % 1200977805);
        int i5 = (((((~353056618) & 587352576) | 1209239528) + ((353056618 & 1728108930) | 1420269559)) - (-1847305937)) ^ (1896236448 % 1127167744);
        int i6 = (((((~899633766) & 123837830) | 368257288) + ((899633766 & 167810182) | 1023429240)) - 1335244442) ^ (2104001379 % 2013966848);
        int i7 = (((((~1451163042) & 1144033732) | 979119168) + ((1451163042 & 1142985108) | 17523737)) - 1635219142) ^ (1178835412 % 674426555);
        int i8 = (((((~2129768394) & 1627076842) | 1930240353) + ((2129768394 & 384997514) | 369722160)) - (-1995771891)) ^ (1450967523 % 42186306);
        v = new zzatq((((((~880944650) & 1717883648) | 10231720) + ((880944650 & 1718140932) | 277359766)) - 1470954277) ^ (2122533302 % 1588279465));
        u = new zzatq((((((~2105342203) & 63587109) | 1700430907) + ((2105342203 & 42025732) | 358031402)) - 2053339984) ^ (1059789835 % 1012707329));
        t = new zzatq((((((~217704412) & 144255288) | 1174857666) + ((217704412 & 1788447288) | 1667270208)) - (-1441824169)) ^ (1234644696 % 220282619));
        s = new zzatq(i8);
        r = new zzatq(i5);
        q = new zzatq(i6);
        zzatq zzatqVar = new zzatq(i7);
        int i9 = (((((~363159161) & 562794784) | 672605403) + ((363159161 & 25727904) | 2081572569)) - (-1616076716)) ^ (912078408 % 135177290);
        int i10 = (((((~1362243428) & 18451060) | 1179867339) + ((1362243428 & 558662325) | 550966467)) - 1623872455) ^ (1106211926 % 327305250);
        int i11 = (((((~1725362297) & 1360741300) | 1109702041) + ((1725362297 & 354116135) | 1147188355)) - (-1834394863)) ^ (1760481135 % 279527351);
        int i12 = (((((~167368542) & 67146177) | 1656237739) + ((167368542 & 1145098568) | 1113671327)) - (-1733089599)) ^ (1999038585 % 574620392);
        int i13 = (((((~1855103807) & 659964675) | 1290440236) + ((1855103807 & 588562691) | 482511980)) - 1987315200) ^ (988506952 % 614340012);
        int i14 = (((((~309667127) & 3230344) | 101519449) + ((309667127 & 607439488) | 793023522)) - 846909944) ^ (1953534826 % 1902736997);
        int i15 = (((((~682736626) & 1985796848) | 208315317) + ((682736626 & 1922324801) | 8464129)) - 2089727599) ^ (649022765 % 608034986);
        int i16 = (((((~2068224547) & 575179716) | 1587938398) + ((2068224547 & 1013484418) | 1605526586)) - (-1152499266)) ^ (1603386966 % 1010764797);
        int i17 = (((((~1281944976) & 1463473736) | 847256033) + ((1281944976 & 1698424328) | 948255187)) - (-1974214194)) ^ (1727952741 % 1091714937);
        p = zzatqVar;
        o = new zzatq(i4);
        n = new zzatq(i9);
        m = new zzatq(i10);
        l = new zzatq(i11);
        k = new zzatq(i3);
        j = new zzatq(i12);
        i = new zzatq(i13);
        h = new zzatq(i14);
        g = new zzatq(i2);
        f = new zzatq(i15);
        e = new zzatq(i16);
        d = new zzatq(i17);
        f4406c = new zzatq(1);
        b = new zzatq(0);
    }

    public /* synthetic */ zzatq(int i2) {
        this.f4407a = i2;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        zzatc zzatcVar;
        long j2 = 1;
        try {
            try {
                try {
                    try {
                        try {
                            try {
                                try {
                                    try {
                                        switch (this.f4407a) {
                                            case 0:
                                                zzaun zzaunVar = (zzaun) obj;
                                                zzauj zzaujVar = zzaunVar.f4424a;
                                                long m2 = zzaujVar.c().m();
                                                if (zzaujVar.c().m() != 0) {
                                                    zzaunVar.f4425c.a(m2);
                                                }
                                                return Optional.empty();
                                            case 1:
                                                try {
                                                    zzauj zzaujVar2 = ((zzaun) obj).f4424a;
                                                    long m3 = zzaujVar2.c().m();
                                                    zzaus c2 = zzaujVar2.c();
                                                    zzaus c3 = zzaujVar2.c();
                                                    List o2 = c3.o();
                                                    if (m3 < 0) {
                                                        m3 += ((ArrayList) o2).size() + 1;
                                                    }
                                                    if (m3 >= 0) {
                                                        ArrayList arrayList = (ArrayList) o2;
                                                        if (m3 < arrayList.size() + 1) {
                                                            arrayList.add((int) m3, c2);
                                                            zzaujVar2.b(c3);
                                                            return Optional.empty();
                                                        }
                                                    }
                                                    throw new Exception();
                                                } catch (zzauq unused) {
                                                    zzatcVar = zzatc.N;
                                                    break;
                                                }
                                            case 2:
                                                zzaun zzaunVar2 = (zzaun) obj;
                                                zzauj zzaujVar3 = zzaunVar2.f4424a;
                                                long m4 = zzaujVar3.c().m();
                                                if (zzaujVar3.c().m() == 0) {
                                                    zzaunVar2.f4425c.a(m4);
                                                }
                                                return Optional.empty();
                                            case 3:
                                                ((zzaun) obj).f4424a.b(zzaus.b(((ArrayList) r12.c().o()).size()));
                                                return Optional.empty();
                                            case 4:
                                                ((zzaun) obj).f4424a.b(zzaus.b(r12.c().n().f4413a.length));
                                                return Optional.empty();
                                            case 5:
                                                zzauj zzaujVar4 = ((zzaun) obj).f4424a;
                                                zzaujVar4.b(zzaus.c(Math.log(zzaujVar4.c().q())));
                                                return Optional.empty();
                                            case 6:
                                                zzauj zzaujVar5 = ((zzaun) obj).f4424a;
                                                long m5 = zzaujVar5.c().m();
                                                long m6 = zzaujVar5.c().m();
                                                if (m5 == 0 || m6 == 0) {
                                                    j2 = 0;
                                                }
                                                zzaujVar5.b(zzaus.b(j2));
                                                return Optional.empty();
                                            case 7:
                                                zzauj zzaujVar6 = ((zzaun) obj).f4424a;
                                                if (zzaujVar6.c().m() != 0) {
                                                    j2 = 0;
                                                }
                                                zzaujVar6.b(zzaus.b(j2));
                                                return Optional.empty();
                                            case 8:
                                                zzauj zzaujVar7 = ((zzaun) obj).f4424a;
                                                long m7 = zzaujVar7.c().m();
                                                long m8 = zzaujVar7.c().m();
                                                if (m7 == 0 && m8 == 0) {
                                                    j2 = 0;
                                                }
                                                zzaujVar7.b(zzaus.b(j2));
                                                return Optional.empty();
                                            case 9:
                                                zzaun zzaunVar3 = (zzaun) obj;
                                                zzauj zzaujVar8 = zzaunVar3.f4424a;
                                                try {
                                                    int compare = new zzauo(false).compare(zzaujVar8.c(), zzaujVar8.c());
                                                    zzauj zzaujVar9 = zzaunVar3.f4424a;
                                                    if (compare >= 0) {
                                                        j2 = 0;
                                                    }
                                                    zzaujVar9.b(zzaus.b(j2));
                                                    return Optional.empty();
                                                } catch (IllegalArgumentException unused2) {
                                                    return Optional.of(zzatc.i);
                                                }
                                            case 10:
                                                zzaun zzaunVar4 = (zzaun) obj;
                                                try {
                                                    zzauj zzaujVar10 = zzaunVar4.f4424a;
                                                    long m9 = zzaujVar10.c().m();
                                                    zzauj zzaujVar11 = new zzauj();
                                                    for (int i2 = 0; i2 < zzaujVar10.b; i2++) {
                                                        try {
                                                            zzaujVar11.b(zzaus.j((zzaus) zzaujVar10.f4422a.get(i2)));
                                                        } catch (zzaui e2) {
                                                            throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e2);
                                                        }
                                                    }
                                                    zzaub zzaubVar = zzaunVar4.f4425c;
                                                    zzatw zzatwVar = zzaubVar.b;
                                                    int i3 = zzaubVar.f4416a;
                                                    zzatk zzc = zzaubVar.f4417c.zzc();
                                                    zzatn zzatnVar = zzaubVar.d;
                                                    zzaub zzaubVar2 = new zzaub(zzatwVar, i3, zzc);
                                                    zzaubVar2.d = zzatnVar;
                                                    new zzaun(zzaujVar11, zzaubVar2);
                                                    zzaubVar2.a(m9);
                                                    zzaujVar10.b(zzaus.a(new Object()));
                                                    return Optional.empty();
                                                } catch (zzatz | zzaua unused3) {
                                                    zzatcVar = zzatc.y;
                                                    break;
                                                }
                                            case 11:
                                                try {
                                                    zzauj zzaujVar12 = ((zzaun) obj).f4424a;
                                                    zzaujVar12.b(zzaus.a(zzaujVar12.c().i((Class) zzaujVar12.c().l())));
                                                    return Optional.empty();
                                                } catch (zzaup unused4) {
                                                    zzatcVar = zzatc.u;
                                                    break;
                                                }
                                            case 12:
                                                zzauj zzaujVar13 = ((zzaun) obj).f4424a;
                                                long m10 = zzaujVar13.c().m();
                                                long m11 = zzaujVar13.c().m();
                                                if (m10 == 0) {
                                                    return Optional.of(zzatc.K);
                                                }
                                                zzaujVar13.b(zzaus.b(m11 % m10));
                                                return Optional.empty();
                                            case 13:
                                                zzauj zzaujVar14 = ((zzaun) obj).f4424a;
                                                zzaujVar14.b(zzaus.c(zzaujVar14.c().q() * zzaujVar14.c().q()));
                                                return Optional.empty();
                                            case 14:
                                                zzauj zzaujVar15 = ((zzaun) obj).f4424a;
                                                zzaujVar15.b(zzaus.b(zzaujVar15.c().m() * zzaujVar15.c().m()));
                                                return Optional.empty();
                                            case 15:
                                                zzauj zzaujVar16 = ((zzaun) obj).f4424a;
                                                long m12 = zzaujVar16.c().m();
                                                ArrayList arrayList2 = new ArrayList();
                                                for (long j3 = 0; j3 < m12; j3++) {
                                                    arrayList2.add(zzaujVar16.c());
                                                }
                                                Collections.reverse(arrayList2);
                                                zzaujVar16.b(zzaus.e(arrayList2));
                                                return Optional.empty();
                                            case 16:
                                                zzauj zzaujVar17 = ((zzaun) obj).f4424a;
                                                zzaujVar17.b(zzaus.c(Math.pow(zzaujVar17.c().q(), zzaujVar17.c().q())));
                                                return Optional.empty();
                                            case 17:
                                                ((zzaun) obj).f4424a.b(zzaus.a(null));
                                                return Optional.empty();
                                            case 18:
                                                zzaun zzaunVar5 = (zzaun) obj;
                                                ByteBuffer wrap = ByteBuffer.wrap(zzaunVar5.f4425c.f(64L).a());
                                                wrap.order(ByteOrder.LITTLE_ENDIAN);
                                                zzaunVar5.f4424a.b(zzaus.c(Double.longBitsToDouble(wrap.getLong())));
                                                return Optional.empty();
                                            case 19:
                                                zzaun zzaunVar6 = (zzaun) obj;
                                                zzaunVar6.f4424a.b(zzaus.b(zzaunVar6.f4425c.e()));
                                                return Optional.empty();
                                            default:
                                                zzaun zzaunVar7 = (zzaun) obj;
                                                zzaub zzaubVar3 = zzaunVar7.f4425c;
                                                long e3 = zzaubVar3.e();
                                                if (e3 >= 0 && e3 <= 2147483647L) {
                                                    if ((7 & e3) != 0) {
                                                        return Optional.of(zzatc.j);
                                                    }
                                                    zzaunVar7.f4424a.b(zzaus.d(zzaubVar3.f(e3)));
                                                    return Optional.empty();
                                                }
                                                return Optional.of(zzatc.E);
                                        }
                                    } catch (zzatz e4) {
                                        e = e4;
                                        throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
                                    }
                                } catch (zzaty unused5) {
                                    zzatcVar = zzatc.I;
                                }
                            } catch (zzaup unused6) {
                                zzatcVar = zzatc.D;
                            }
                        } catch (zzaui unused7) {
                            zzatcVar = zzatc.f;
                        }
                    } catch (zzaua unused8) {
                        zzatcVar = zzatc.E;
                    }
                } catch (zzaui e5) {
                    e = e5;
                    throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
                }
            } catch (zzatz | zzaua unused9) {
                zzatcVar = zzatc.n;
            }
        } catch (zzauh unused10) {
            zzatcVar = zzatc.C;
        }
        return Optional.of(zzatcVar);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
