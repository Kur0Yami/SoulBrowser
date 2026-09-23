package com.google.android.gms.internal.ads;

import j$.util.Optional;
import j$.util.function.Function$CC;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Function;

/* loaded from: classes.dex */
public final /* synthetic */ class zzatt implements zzauk {
    public static final /* synthetic */ zzatt b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ zzatt f4409c;
    public static final /* synthetic */ zzatt d;
    public static final /* synthetic */ zzatt e;
    public static final /* synthetic */ zzatt f;
    public static final /* synthetic */ zzatt g;
    public static final /* synthetic */ zzatt h;
    public static final /* synthetic */ zzatt i;
    public static final /* synthetic */ zzatt j;
    public static final /* synthetic */ zzatt k;
    public static final /* synthetic */ zzatt l;
    public static final /* synthetic */ zzatt m;
    public static final /* synthetic */ zzatt n;
    public static final /* synthetic */ zzatt o;
    public static final /* synthetic */ zzatt p;
    public static final /* synthetic */ zzatt q;

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f4410a;

    static {
        int i2 = (((((~358984857) & 11257432) | 369424399) + ((358984857 & 615188052) | 873771151)) - 1245366369) ^ (1985433483 % 395279207);
        int i3 = (((((~1402492972) & 1009329808) | 1643537068) + ((1402492972 & 503911450) | 580170602)) - (-2136216298)) ^ (1489001354 % 953691761);
        int i4 = (((((~1389079342) & 405954790) | 5768193) + ((1389079342 & 967468022) | 1640566552)) - 1618010502) ^ (1588695568 % 1155465115);
        int i5 = (((((~1666231349) & 289538432) | 621649449) + ((1666231349 & 406985104) | 264059443)) - 1093855303) ^ (1698487330 % 272312086);
        int i6 = (((((~1953161956) & 2021553924) | 1308628610) + ((1953161956 & 813590916) | 134225131)) - 2074905685) ^ (1172063133 % 990526343);
        int i7 = (((((~1889804310) & 69748745) | 707083896) + ((1889804310 & 604795185) | 951435262)) - 1284100923) ^ (1663080928 % 610506582);
        int i8 = (((((~279121308) & 136482862) | 293951273) + ((279121308 & 1302561302) | 1440046744)) - 1857458389) ^ (1404515797 % 695748720);
        int i9 = (((((~1460082195) & 849562858) | 543970048) + ((1460082195 & 381881578) | 1279262981)) - 1872584419) ^ (1122336503 % 861109485);
        int i10 = (((((~70788355) & 1377181904) | 713084892) + ((70788355 & 1410740224) | 99160279)) - 1955016785) ^ (1156541312 % 318561886);
        int i11 = (((((~12895151) & 1277237303) | 185162640) + ((12895151 & 1411547303) | 306429832)) - 1475739783) ^ (1498617647 % 669908538);
        int i12 = (((((~1566288819) & 1018167620) | 793479703) + ((1566288819 & 284165456) | 1648575546)) - (-1895196318)) ^ (846942590 % 524688209);
        int i13 = (((((~1540846267) & 571107379) | 1484708373) + ((1540846267 & 709108258) | 1568035525)) - (-834164565)) ^ (2037335344 % 1874960596);
        q = new zzatt((((((~1245644428) & 268473430) | 2019232319) + ((1245644428 & 2266696) | 1693582250)) - (-827594116)) ^ (1308581515 % 354367395));
        p = new zzatt((((((~464837581) & 1181588952) | 603091067) + ((464837581 & 1544523140) | 967967255)) - (-2124025763)) ^ (1295815494 % 753959819));
        o = new zzatt(i13);
        n = new zzatt(i4);
        m = new zzatt(i5);
        l = new zzatt(i6);
        k = new zzatt(i3);
        j = new zzatt(i7);
        i = new zzatt(i8);
        h = new zzatt(i9);
        g = new zzatt(i2);
        f = new zzatt(i10);
        e = new zzatt(i11);
        d = new zzatt(i12);
        f4409c = new zzatt(1);
        b = new zzatt(0);
    }

    public /* synthetic */ zzatt(int i2) {
        this.f4410a = i2;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        zzatc zzatcVar;
        zzaus zzausVar;
        int i2 = 0;
        try {
            try {
                try {
                    try {
                        try {
                            switch (this.f4410a) {
                                case 0:
                                    return ((zzaun) obj).a();
                                case 1:
                                    try {
                                        zzauj zzaujVar = ((zzaun) obj).f4424a;
                                        long m2 = zzaujVar.c().m();
                                        zzaus c2 = zzaujVar.c();
                                        List o2 = c2.o();
                                        if (m2 < 0) {
                                            m2 += ((ArrayList) o2).size();
                                        }
                                        if (m2 >= 0) {
                                            ArrayList arrayList = (ArrayList) o2;
                                            if (m2 < arrayList.size()) {
                                                arrayList.remove((int) m2);
                                                zzaujVar.b(c2);
                                                return Optional.empty();
                                            }
                                        }
                                        throw new Exception();
                                    } catch (zzauq unused) {
                                        zzatcVar = zzatc.N;
                                        break;
                                    }
                                case 2:
                                    zzaun zzaunVar = (zzaun) obj;
                                    zzauj zzaujVar2 = zzaunVar.f4424a;
                                    zzaus c3 = zzaujVar2.c();
                                    zzatw n2 = zzaujVar2.c().n();
                                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                                    c3.k(byteArrayOutputStream);
                                    zzaunVar.f4424a.b(zzaus.d(n2.d(zzatw.e(byteArrayOutputStream.toByteArray()))));
                                    return Optional.empty();
                                case 3:
                                    zzaun zzaunVar2 = (zzaun) obj;
                                    zzauj zzaujVar3 = zzaunVar2.f4424a;
                                    zzaus c4 = zzaujVar3.c();
                                    zzatw n3 = zzaujVar3.c().n();
                                    ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                    zzats.b(c4.m(), new zzaur(byteArrayOutputStream2), false);
                                    zzaunVar2.f4424a.b(zzaus.d(n3.d(zzatw.e(byteArrayOutputStream2.toByteArray()))));
                                    return Optional.empty();
                                case 4:
                                    zzaun zzaunVar3 = (zzaun) obj;
                                    zzaub zzaubVar = zzaunVar3.f4425c;
                                    zzauj zzaujVar4 = zzaunVar3.f4424a;
                                    zzaujVar4.f4422a.set(zzaujVar4.a(-(zzaunVar3.b.b().b + zzaubVar.e())), zzaujVar4.c());
                                    return Optional.empty();
                                case 5:
                                    zzauj zzaujVar5 = ((zzaun) obj).f4424a;
                                    zzaujVar5.b(zzaus.b(zzaujVar5.c().m() << ((int) zzaujVar5.c().m())));
                                    return Optional.empty();
                                case 6:
                                    zzauj zzaujVar6 = ((zzaun) obj).f4424a;
                                    zzaujVar6.b(zzaus.b(zzaujVar6.c().m() >>> ((int) zzaujVar6.c().m())));
                                    return Optional.empty();
                                case 7:
                                    zzauj zzaujVar7 = ((zzaun) obj).f4424a;
                                    zzaujVar7.b(zzaus.c(zzaujVar7.c().q() - zzaujVar7.c().q()));
                                    return Optional.empty();
                                case 8:
                                    zzauj zzaujVar8 = ((zzaun) obj).f4424a;
                                    zzaujVar8.b(zzaus.b(zzaujVar8.c().m() - zzaujVar8.c().m()));
                                    return Optional.empty();
                                case 9:
                                    zzaun zzaunVar4 = (zzaun) obj;
                                    zzauj zzaujVar9 = zzaunVar4.f4424a;
                                    long m3 = zzaujVar9.c().m();
                                    zzaus c5 = zzaujVar9.c();
                                    zzauj zzaujVar10 = zzaunVar4.f4424a;
                                    zzaus d2 = zzaujVar10.d(m3);
                                    zzaujVar10.f4422a.set(zzaujVar10.a(m3), c5);
                                    zzaujVar10.b(d2);
                                    return Optional.empty();
                                case 10:
                                    zzaun zzaunVar5 = (zzaun) obj;
                                    zzauj zzaujVar11 = zzaunVar5.f4424a;
                                    long m4 = zzaunVar5.b.b().b + zzaujVar11.c().m();
                                    zzaus c6 = zzaujVar11.c();
                                    zzauj zzaujVar12 = zzaunVar5.f4424a;
                                    long j2 = -m4;
                                    zzaus d3 = zzaujVar12.d(j2);
                                    zzaujVar12.f4422a.set(zzaujVar12.a(j2), c6);
                                    zzaujVar12.b(d3);
                                    return Optional.empty();
                                case 11:
                                    zzaun zzaunVar6 = (zzaun) obj;
                                    zzaub zzaubVar2 = zzaunVar6.f4425c;
                                    zzauj zzaujVar13 = zzaunVar6.f4424a;
                                    long e2 = zzaunVar6.b.b().b + zzaubVar2.e();
                                    zzaus c7 = zzaujVar13.c();
                                    long j3 = -e2;
                                    zzaus d4 = zzaujVar13.d(j3);
                                    zzaujVar13.f4422a.set(zzaujVar13.a(j3), c7);
                                    zzaujVar13.b(d4);
                                    return Optional.empty();
                                case 12:
                                    zzaun zzaunVar7 = (zzaun) obj;
                                    long m5 = zzaunVar7.f4424a.c().m();
                                    try {
                                        zzauj zzaujVar14 = zzaunVar7.f4424a;
                                        if (m5 == 0) {
                                            zzausVar = zzaujVar14.c();
                                        } else {
                                            zzaujVar14.b--;
                                            zzausVar = (zzaus) zzaujVar14.f4422a.remove(zzaujVar14.a(m5));
                                        }
                                        zzaujVar14.b(zzausVar);
                                        return Optional.empty();
                                    } catch (zzauh unused2) {
                                        zzatcVar = zzatc.l;
                                        break;
                                    }
                                case 13:
                                    zzaun zzaunVar8 = (zzaun) obj;
                                    try {
                                        zzauj zzaujVar15 = zzaunVar8.f4424a;
                                        long m6 = zzaujVar15.c().m();
                                        long m7 = zzaujVar15.c().m();
                                        zzaug zzaugVar = zzaunVar8.b;
                                        zzaub zzaubVar3 = zzaunVar8.f4425c;
                                        zzaugVar.a(zzaubVar3.b(), m7, zzaugVar.b().b);
                                        zzaubVar3.a(m6);
                                        return Optional.empty();
                                    } catch (zzatz | zzaua unused3) {
                                        zzatcVar = zzatc.w;
                                        break;
                                    } catch (zzaue unused4) {
                                        zzatcVar = zzatc.G;
                                        break;
                                    } catch (zzauf unused5) {
                                        zzatcVar = zzatc.B;
                                        break;
                                    }
                                case 14:
                                    zzaun zzaunVar9 = (zzaun) obj;
                                    try {
                                        zzaunVar9.f4424a.b(zzaus.g(zzaunVar9.f4424a.c().l()));
                                        return Optional.empty();
                                    } catch (zzaup unused6) {
                                        zzatcVar = zzatc.u;
                                        break;
                                    }
                                default:
                                    try {
                                        zzauj zzaujVar16 = ((zzaun) obj).f4424a;
                                        ArrayList arrayList2 = (ArrayList) zzaujVar16.c().o();
                                        int size = arrayList2.size();
                                        while (i2 < size) {
                                            Object obj2 = arrayList2.get(i2);
                                            i2++;
                                            zzaujVar16.b((zzaus) obj2);
                                        }
                                        return Optional.empty();
                                    } catch (zzaui unused7) {
                                        zzatcVar = zzatc.f;
                                        break;
                                    }
                            }
                        } catch (zzauf | zzauh unused8) {
                            zzatcVar = zzatc.C;
                        }
                    } catch (zzauh unused9) {
                        zzatcVar = zzatc.m;
                    }
                } catch (zzaui e3) {
                    e = e3;
                    throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
                }
            } catch (zzaty | zzaua | zzaup unused10) {
                zzatcVar = zzatc.D;
            }
        } catch (zzaup unused11) {
            zzatcVar = zzatc.p;
        } catch (IOException e4) {
            e = e4;
            throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
        }
        return Optional.of(zzatcVar);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
