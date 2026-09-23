package com.google.android.gms.internal.ads;

import android.util.Pair;
import android.util.SparseArray;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class zzakh implements zzaeo {
    public static final byte[] L = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final zzv M;
    public zzakg A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public zzaer G;
    public zzaga[] H;
    public zzaga[] I;
    public boolean J;
    public long K;

    /* renamed from: a, reason: collision with root package name */
    public final zzalw f4124a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final List f4125c;
    public final byte[] h;
    public final zzer i;
    public final zzgq n;
    public final zzaed o;
    public zzgtd p;
    public int q;
    public int r;
    public long s;
    public int t;
    public zzer u;
    public long v;
    public int w;
    public long x;
    public long y;
    public long z;
    public final zzahs j = new zzahs();
    public final zzer k = new zzer(16);
    public final zzer e = new zzer(zzgm.f8111a);
    public final zzer f = new zzer(6);
    public final zzer g = new zzer();
    public final ArrayDeque l = new ArrayDeque();
    public final ArrayDeque m = new ArrayDeque();
    public final SparseArray d = new SparseArray();

    static {
        zzt zztVar = new zzt();
        zztVar.e("application/x-emsg");
        M = new zzv(zztVar);
    }

    public zzakh(zzalw zzalwVar, int i, List list) {
        this.f4124a = zzalwVar;
        this.b = i;
        this.f4125c = DesugarCollections.unmodifiableList(list);
        byte[] bArr = new byte[16];
        this.h = bArr;
        this.i = new zzer(bArr);
        zzgvs zzgvsVar = zzgtd.f;
        this.p = zzguy.i;
        this.y = -9223372036854775807L;
        this.x = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.G = zzaer.d;
        this.H = new zzaga[0];
        this.I = new zzaga[0];
        this.n = new zzgq(new zzgp() { // from class: com.google.android.gms.internal.ads.zzake
            @Override // com.google.android.gms.internal.ads.zzgp
            public final /* synthetic */ void a(long j, zzer zzerVar) {
                zzaeb.a(j, zzerVar, zzakh.this.I);
            }
        });
        this.o = new zzaed();
        this.K = -1L;
    }

    public static void g(int i) {
        if (i >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 27);
        sb.append("Unexpected negative value: ");
        sb.append(i);
        throw zzat.a(sb.toString(), null);
    }

    public static void h(zzer zzerVar, int i, zzakx zzakxVar) {
        boolean z;
        zzerVar.E(i + 8);
        int b = zzerVar.b();
        byte[] bArr = zzaka.f4116a;
        if ((b & 1) == 0) {
            if ((b & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            int h = zzerVar.h();
            if (h == 0) {
                Arrays.fill(zzakxVar.l, 0, zzakxVar.e, false);
                return;
            }
            int i2 = zzakxVar.e;
            zzer zzerVar2 = zzakxVar.n;
            if (h == i2) {
                Arrays.fill(zzakxVar.l, 0, h, z);
                zzerVar2.y(zzerVar.B());
                zzakxVar.k = true;
                zzakxVar.o = true;
                zzerVar.H(zzerVar2.f6834a, 0, zzerVar2.f6835c);
                zzerVar2.E(0);
                zzakxVar.o = false;
                return;
            }
            throw zzat.a(com.mycompany.app.dialog.a.m(new StringBuilder(String.valueOf(h).length() + 58 + String.valueOf(i2).length()), "Senc sample count ", h, " is different from fragment sample count", i2), null);
        }
        throw zzat.b("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public static Pair i(long j, zzer zzerVar) {
        long j2;
        long j3;
        zzer zzerVar2 = zzerVar;
        zzerVar2.E(8);
        int a2 = zzaka.a(zzerVar2.b());
        zzerVar2.G(4);
        long P = zzerVar2.P();
        if (a2 == 0) {
            j2 = zzerVar2.P();
            j3 = zzerVar2.P();
        } else {
            j2 = zzerVar2.j();
            j3 = zzerVar2.j();
        }
        long j4 = j3 + j;
        long u = zzfj.u(j2, 1000000L, P, RoundingMode.DOWN);
        zzerVar2.G(2);
        int L2 = zzerVar2.L();
        int[] iArr = new int[L2];
        long[] jArr = new long[L2];
        long[] jArr2 = new long[L2];
        long[] jArr3 = new long[L2];
        long j5 = j4;
        long j6 = u;
        int i = 0;
        while (i < L2) {
            int b = zzerVar2.b();
            if ((Integer.MIN_VALUE & b) == 0) {
                long P2 = zzerVar2.P();
                iArr[i] = b & Integer.MAX_VALUE;
                jArr[i] = j5;
                jArr3[i] = j6;
                j2 += P2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                long u2 = zzfj.u(j2, 1000000L, P, RoundingMode.DOWN);
                jArr4[i] = u2 - jArr5[i];
                zzerVar2.G(4);
                j5 += iArr[i];
                i++;
                L2 = L2;
                zzerVar2 = zzerVar;
                j6 = u2;
                jArr2 = jArr4;
                jArr3 = jArr5;
            } else {
                throw zzat.a("Unhandled indirect reference", null);
            }
        }
        return Pair.create(Long.valueOf(u), new zzaec(iArr, jArr, jArr2, jArr3));
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0116  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzq j(java.util.List r18) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakh.j(java.util.List):com.google.android.gms.internal.ads.zzq");
    }

    public final void a() {
        this.q = 0;
        this.t = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:116:0x03f4, code lost:
    
        if ((com.google.android.gms.internal.ads.zzfj.u(r39, 1000000, r9, r45) + com.google.android.gms.internal.ads.zzfj.u(r4[0], 1000000, r1.f4142c, r45)) < r1.e) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x079f, code lost:
    
        a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x07a2, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0418  */
    /* JADX WARN: Type inference failed for: r10v1, types: [com.google.android.gms.internal.ads.zzgpr, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(long r55) {
        /*
            Method dump skipped, instructions count: 1955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakh.b(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        SparseArray sparseArray = this.d;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((zzakg) sparseArray.valueAt(i)).a();
        }
        this.m.clear();
        this.w = 0;
        this.n.d.clear();
        this.x = j2;
        this.l.clear();
        a();
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final boolean d(zzaep zzaepVar) {
        zzgtd zzgtdVar;
        zzafv a2 = zzaku.a(zzaepVar, true, false);
        if (a2 != null) {
            zzgtdVar = zzgtd.r(a2);
        } else {
            zzgvs zzgvsVar = zzgtd.f;
            zzgtdVar = zzguy.i;
        }
        this.p = zzgtdVar;
        if (a2 == null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x06c4, code lost:
    
        throw com.google.android.gms.internal.ads.zzat.b("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:365:0x00ba, code lost:
    
        r3 = r2.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:366:0x00c5, code lost:
    
        if (r35.q != 3) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:368:0x00c9, code lost:
    
        if (r2.m != false) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:369:0x00cb, code lost:
    
        r4 = r2.d.d[r2.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:370:0x00da, code lost:
    
        r35.B = r4;
        r4 = r2.d.f4147a.g.m;
     */
    /* JADX WARN: Code restructure failed: missing block: B:371:0x00e8, code lost:
    
        if (j$.util.Objects.equals(r4, "video/avc") != false) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:372:0x00ea, code lost:
    
        j$.util.Objects.equals(r4, "video/hevc");
     */
    /* JADX WARN: Code restructure failed: missing block: B:373:0x00ed, code lost:
    
        r35.E = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:374:0x00f4, code lost:
    
        if (r2.f >= r2.i) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x00f6, code lost:
    
        ((com.google.android.gms.internal.ads.zzaef) r36).d(r35.B, false);
        r0 = r2.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:376:0x0101, code lost:
    
        if (r0 != null) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:377:0x0104, code lost:
    
        r4 = r3.n;
        r0 = r0.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:378:0x0108, code lost:
    
        if (r0 == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:379:0x010a, code lost:
    
        r4.G(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:380:0x010d, code lost:
    
        r0 = r2.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:381:0x0111, code lost:
    
        if (r3.k == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:383:0x0117, code lost:
    
        if (r3.l[r0] == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:384:0x0119, code lost:
    
        r4.G(r4.L() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0125, code lost:
    
        if (r2.c() != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0127, code lost:
    
        r35.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0346, code lost:
    
        r35.q = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:390:0x034a, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:392:0x0134, code lost:
    
        if (r2.d.f4147a.h != 1) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:393:0x0136, code lost:
    
        r35.B -= 8;
        ((com.google.android.gms.internal.ads.zzaef) r36).d(8, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x0152, code lost:
    
        if ("audio/ac4".equals(r2.d.f4147a.g.m) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0154, code lost:
    
        r35.C = r2.d(r35.B, 7);
        com.google.android.gms.internal.ads.zzads.b(r35.B, r5);
        r2.f4122a.b(7, r5);
        r4 = r35.C + 7;
        r35.C = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:397:0x0175, code lost:
    
        r35.B += r4;
        r35.q = 4;
        r35.D = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:398:0x016d, code lost:
    
        r4 = r2.d(r35.B, 0);
        r35.C = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:399:0x00d4, code lost:
    
        r4 = r3.h[r2.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x017e, code lost:
    
        r4 = r2.d;
        r5 = r4.f4147a;
        r12 = r2.f4122a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x0186, code lost:
    
        if (r2.m != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:402:0x0188, code lost:
    
        r13 = r4.f[r2.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:403:0x0195, code lost:
    
        r3 = r5.k;
        r4 = r5.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:404:0x0199, code lost:
    
        if (r3 != 0) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:405:0x019b, code lost:
    
        r3 = r35.C;
        r4 = r35.B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:406:0x019f, code lost:
    
        if (r3 >= r4) goto L496;
     */
    /* JADX WARN: Code restructure failed: missing block: B:407:0x01a1, code lost:
    
        r35.C += r12.f(r36, r4 - r3, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x01ac, code lost:
    
        r17 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:410:0x01ae, code lost:
    
        r32 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x02e6, code lost:
    
        r0 = r17.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x02ec, code lost:
    
        if (r35.E != false) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x02ee, code lost:
    
        r0 = r0 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x02f1, code lost:
    
        r27 = r0;
        r0 = r17.e();
     */
    /* JADX WARN: Code restructure failed: missing block: B:415:0x02f7, code lost:
    
        if (r0 == null) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x02f9, code lost:
    
        r30 = r0.f4144c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x0300, code lost:
    
        r25 = r13;
        r12.d(r25, r27, r35.B, 0, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0311, code lost:
    
        if (r32.isEmpty() != false) goto L497;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0313, code lost:
    
        r0 = (com.google.android.gms.internal.ads.zzakf) r32.removeFirst();
        r2 = r35.w;
        r7 = r0.f4121c;
        r35.w = r2 - r7;
        r2 = r0.f4120a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0324, code lost:
    
        if (r0.b == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0326, code lost:
    
        r2 = r2 + r25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0328, code lost:
    
        r4 = r2;
        r0 = r35.H;
        r2 = r0.length;
        r10 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x032d, code lost:
    
        if (r10 >= r2) goto L500;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x032f, code lost:
    
        r0[r10].d(r4, 1, r7, r35.w, null);
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x033f, code lost:
    
        if (r17.c() != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0341, code lost:
    
        r35.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x02fe, code lost:
    
        r30 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x01b2, code lost:
    
        r5 = r35.f;
        r6 = r5.f6834a;
        r6[0] = 0;
        r6[1] = 0;
        r6[r18] = 0;
        r10 = 4 - r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:435:0x01c0, code lost:
    
        r17 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x01c6, code lost:
    
        if (r35.C >= r35.B) goto L502;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x01c8, code lost:
    
        r2 = r35.D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x01ca, code lost:
    
        if (r2 != 0) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x01cf, code lost:
    
        if (r35.I.length > 0) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x01d3, code lost:
    
        if (r35.E != false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x01d6, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:444:0x01ed, code lost:
    
        r19 = r3;
        r32 = r7;
        ((com.google.android.gms.internal.ads.zzaef) r36).k(r6, r10, r3 + r2, false);
        r5.E(0);
        r3 = r5.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0201, code lost:
    
        if (r3 < 0) goto L501;
     */
    /* JADX WARN: Code restructure failed: missing block: B:446:0x0203, code lost:
    
        r35.D = r3 - r2;
        r3 = r35.e;
        r3.E(0);
        r12.b(4, r3);
        r35.C += 4;
        r35.B += r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x021c, code lost:
    
        if (r35.I.length <= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x021e, code lost:
    
        if (r2 <= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x0220, code lost:
    
        r3 = r6[4];
        r7 = com.google.android.gms.internal.ads.zzgm.l(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x022a, code lost:
    
        if (j$.util.Objects.equals(r7, "video/avc") == false) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x022c, code lost:
    
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x0231, code lost:
    
        if ((r3 & 31) == 6) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x0247, code lost:
    
        r7 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x024d, code lost:
    
        r35.F = r7;
        r12.b(r2, r5);
        r35.C += r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x0257, code lost:
    
        if (r2 <= 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x025b, code lost:
    
        if (r35.E != false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:459:0x0261, code lost:
    
        if (com.google.android.gms.internal.ads.zzgm.c(r6, r2, r4) == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x0263, code lost:
    
        r35.E = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:461:0x0266, code lost:
    
        r2 = r17;
        r3 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x026a, code lost:
    
        r7 = r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x023b, code lost:
    
        if (j$.util.Objects.equals(r7, "video/hevc") == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0245, code lost:
    
        if (((r18 & 126) >> 1) != 39) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x0249, code lost:
    
        r7 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0234, code lost:
    
        r18 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0275, code lost:
    
        throw com.google.android.gms.internal.ads.zzat.a("Invalid NAL length", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x01d8, code lost:
    
        r2 = com.google.android.gms.internal.ads.zzgm.b(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:475:0x01e8, code lost:
    
        if ((r3 + r2) <= (r35.B - r35.C)) goto L102;
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x01eb, code lost:
    
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x0276, code lost:
    
        r19 = r3;
        r32 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x027d, code lost:
    
        if (r35.F == false) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x027f, code lost:
    
        r7 = r35.g;
        r7.y(r2);
        r24 = r5;
        ((com.google.android.gms.internal.ads.zzaef) r36).k(r7.f6834a, 0, r35.D, false);
        r12.b(r35.D, r7);
        r2 = r35.D;
        r3 = com.google.android.gms.internal.ads.zzgm.a(r7.f6834a, r7.f6835c);
        r7.E(0);
        r7.C(r3);
        r3 = r4.o;
     */
    /* JADX WARN: Code restructure failed: missing block: B:480:0x02a9, code lost:
    
        if (r3 != (-1)) goto L139;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x02ad, code lost:
    
        if (r11.e == 0) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x02af, code lost:
    
        r11.a(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x02ba, code lost:
    
        r11.b(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x02c6, code lost:
    
        if ((r17.b() & 4) == 0) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:486:0x02c8, code lost:
    
        r11.c(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x02d5, code lost:
    
        r35.C += r2;
        r35.D -= r2;
        r2 = r17;
        r3 = r19;
        r5 = r24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:490:0x02b5, code lost:
    
        if (r11.e == r3) goto L142;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x02b7, code lost:
    
        r11.a(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:492:0x02cc, code lost:
    
        r24 = r5;
        r2 = r12.f(r36, r2, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x018f, code lost:
    
        r13 = r3.i[r2.f];
     */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r36, com.google.android.gms.internal.ads.zzafo r37) {
        /*
            Method dump skipped, instructions count: 2239
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzakh.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        if ((this.b & 32) == 0) {
            zzaerVar = new zzalz(zzaerVar, this.f4124a);
        }
        this.G = zzaerVar;
        a();
        zzaga[] zzagaVarArr = new zzaga[2];
        this.H = zzagaVarArr;
        int i = 0;
        zzaga[] zzagaVarArr2 = (zzaga[]) zzfj.m(0, zzagaVarArr);
        this.H = zzagaVarArr2;
        for (zzaga zzagaVar : zzagaVarArr2) {
            zzagaVar.e(M);
        }
        List list = this.f4125c;
        this.I = new zzaga[list.size()];
        int i2 = 100;
        while (i < this.I.length) {
            int i3 = i2 + 1;
            zzaga f = this.G.f(i2, 3);
            f.e((zzv) list.get(i));
            this.I[i] = f;
            i++;
            i2 = i3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final /* synthetic */ List zzb() {
        return this.p;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }
}
