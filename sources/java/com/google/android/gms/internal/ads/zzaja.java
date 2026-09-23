package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import j$.util.DesugarCollections;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import kotlin.KotlinVersion;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzaja implements zzaeo {
    public static final byte[] k0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] l0;
    public static final byte[] m0;
    public static final byte[] n0;
    public static final UUID o0;
    public static final Map p0;
    public long A;
    public final SparseArray B;
    public boolean C;
    public long D;
    public int E;
    public long F;
    public long G;
    public int H;
    public boolean I;
    public long J;
    public long K;
    public long L;
    public boolean M;
    public int N;
    public long O;
    public long P;
    public int Q;
    public int R;
    public int[] S;
    public int T;
    public int U;
    public int V;
    public int W;
    public boolean X;
    public long Y;
    public int Z;

    /* renamed from: a, reason: collision with root package name */
    public final zzajc f4082a;
    public int a0;
    public final SparseArray b;
    public int b0;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4083c;
    public boolean c0;
    public final boolean d;
    public boolean d0;
    public final zzalw e;
    public boolean e0;
    public final zzer f;
    public int f0;
    public final zzer g;
    public byte g0;
    public final zzer h;
    public boolean h0;
    public final zzer i;
    public zzaer i0;
    public final zzer j;
    public final zzait j0;
    public final zzer k;
    public final zzer l;
    public final zzer m;
    public final zzer n;
    public final zzer o;
    public ByteBuffer p;
    public long q;
    public long r;
    public long s;
    public long t;
    public long u;
    public boolean v;
    public boolean w;
    public zzaiz x;
    public boolean y;
    public int z;

    static {
        String str = zzfj.f7405a;
        l0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        m0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        n0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        o0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        androidx.work.impl.workers.a.v(0, hashMap, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        androidx.work.impl.workers.a.v(180, hashMap, "htc_video_rotA-180", 270, "htc_video_rotA-270");
        p0 = DesugarCollections.unmodifiableMap(hashMap);
    }

    public zzaja() {
        this(new zzait(), 2, zzalw.f4170a);
    }

    public static byte[] n(long j, long j2, String str) {
        boolean z;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        Locale locale = Locale.US;
        int i = (int) (j / 3600000000L);
        Integer valueOf = Integer.valueOf(i);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        Integer valueOf2 = Integer.valueOf(i2);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / 1000000);
        String format = String.format(locale, str, valueOf, valueOf2, Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2)));
        String str2 = zzfj.f7405a;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    public final void a() {
        if (this.w) {
            int i = 0;
            while (true) {
                SparseArray sparseArray = this.b;
                if (i < sparseArray.size()) {
                    if (!((zzaiz) sparseArray.valueAt(i)).W) {
                        i++;
                    } else {
                        return;
                    }
                } else {
                    zzaer zzaerVar = this.i0;
                    zzaerVar.getClass();
                    zzaerVar.zzv();
                    this.w = false;
                    return;
                }
            }
        }
    }

    public final void b(int i, long j) {
        if (i != 240) {
            if (i != 241) {
                if (i != 20529) {
                    if (i != 20530) {
                        boolean z = false;
                        switch (i) {
                            case 131:
                                int i2 = (int) j;
                                if (i2 != 1) {
                                    if (i2 != 2) {
                                        if (i2 != 17) {
                                            if (i2 != 33) {
                                                g(i);
                                                this.x.e = -1;
                                                return;
                                            } else {
                                                g(i);
                                                this.x.e = 5;
                                                return;
                                            }
                                        }
                                        g(i);
                                        this.x.e = 3;
                                        return;
                                    }
                                    g(i);
                                    this.x.e = 1;
                                    return;
                                }
                                g(i);
                                this.x.e = 2;
                                return;
                            case 136:
                                if (j == 1) {
                                    z = true;
                                }
                                g(i);
                                this.x.Y = z;
                                return;
                            case 155:
                                this.P = o(j);
                                return;
                            case 159:
                                g(i);
                                this.x.Q = (int) j;
                                return;
                            case 176:
                                g(i);
                                this.x.n = (int) j;
                                return;
                            case 179:
                                if (!this.y) {
                                    h(i);
                                    this.D = o(j);
                                    return;
                                }
                                return;
                            case 186:
                                g(i);
                                this.x.o = (int) j;
                                return;
                            case 215:
                                g(i);
                                this.x.d = (int) j;
                                return;
                            case 231:
                                this.L = o(j);
                                return;
                            case 238:
                                this.W = (int) j;
                                return;
                            case 247:
                                if (!this.y) {
                                    h(i);
                                    this.E = (int) j;
                                    return;
                                }
                                return;
                            case 251:
                                this.X = true;
                                return;
                            case 16871:
                                g(i);
                                this.x.h = (int) j;
                                return;
                            case 16980:
                                if (j != 3) {
                                    StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 30);
                                    sb.append("ContentCompAlgo ");
                                    sb.append(j);
                                    sb.append(" not supported");
                                    throw zzat.a(sb.toString(), null);
                                }
                                return;
                            case 17029:
                                if (j < 1 || j > 2) {
                                    StringBuilder sb2 = new StringBuilder(String.valueOf(j).length() + 33);
                                    sb2.append("DocTypeReadVersion ");
                                    sb2.append(j);
                                    sb2.append(" not supported");
                                    throw zzat.a(sb2.toString(), null);
                                }
                                return;
                            case 17143:
                                if (j != 1) {
                                    StringBuilder sb3 = new StringBuilder(String.valueOf(j).length() + 30);
                                    sb3.append("EBMLReadVersion ");
                                    sb3.append(j);
                                    sb3.append(" not supported");
                                    throw zzat.a(sb3.toString(), null);
                                }
                                return;
                            case 18401:
                                if (j != 5) {
                                    StringBuilder sb4 = new StringBuilder(String.valueOf(j).length() + 29);
                                    sb4.append("ContentEncAlgo ");
                                    sb4.append(j);
                                    sb4.append(" not supported");
                                    throw zzat.a(sb4.toString(), null);
                                }
                                return;
                            case 18408:
                                if (j != 1) {
                                    StringBuilder sb5 = new StringBuilder(String.valueOf(j).length() + 36);
                                    sb5.append("AESSettingsCipherMode ");
                                    sb5.append(j);
                                    sb5.append(" not supported");
                                    throw zzat.a(sb5.toString(), null);
                                }
                                return;
                            case 21420:
                                this.A = j + this.r;
                                return;
                            case 21432:
                                int i3 = (int) j;
                                g(i);
                                if (i3 != 0) {
                                    if (i3 != 1) {
                                        if (i3 != 3) {
                                            if (i3 == 15) {
                                                this.x.y = 3;
                                                return;
                                            }
                                            return;
                                        }
                                        this.x.y = 1;
                                        return;
                                    }
                                    this.x.y = 2;
                                    return;
                                }
                                this.x.y = 0;
                                return;
                            case 21680:
                                g(i);
                                this.x.q = (int) j;
                                return;
                            case 21682:
                                g(i);
                                this.x.s = (int) j;
                                return;
                            case 21690:
                                g(i);
                                this.x.r = (int) j;
                                return;
                            case 21930:
                                if (j == 1) {
                                    z = true;
                                }
                                g(i);
                                this.x.X = z;
                                return;
                            case 21938:
                                g(i);
                                zzaiz zzaizVar = this.x;
                                zzaizVar.z = true;
                                zzaizVar.p = (int) j;
                                return;
                            case 21998:
                                g(i);
                                this.x.g = (int) j;
                                return;
                            case 22186:
                                g(i);
                                this.x.T = j;
                                return;
                            case 22203:
                                g(i);
                                this.x.U = j;
                                return;
                            case 25188:
                                g(i);
                                this.x.R = (int) j;
                                return;
                            case 30114:
                                this.Y = j;
                                return;
                            case 30321:
                                int i4 = (int) j;
                                g(i);
                                if (i4 != 0) {
                                    if (i4 != 1) {
                                        if (i4 != 2) {
                                            if (i4 == 3) {
                                                this.x.t = 3;
                                                return;
                                            }
                                            return;
                                        }
                                        this.x.t = 2;
                                        return;
                                    }
                                    this.x.t = 1;
                                    return;
                                }
                                this.x.t = 0;
                                return;
                            case 2352003:
                                g(i);
                                this.x.f = (int) j;
                                return;
                            case 2807729:
                                this.s = j;
                                return;
                            default:
                                switch (i) {
                                    case 21945:
                                        int i5 = (int) j;
                                        g(i);
                                        if (i5 != 1) {
                                            if (i5 == 2) {
                                                this.x.C = 1;
                                                return;
                                            }
                                            return;
                                        }
                                        this.x.C = 2;
                                        return;
                                    case 21946:
                                        g(i);
                                        int c2 = zzi.c((int) j);
                                        if (c2 != -1) {
                                            this.x.B = c2;
                                            return;
                                        }
                                        return;
                                    case 21947:
                                        g(i);
                                        this.x.z = true;
                                        int b = zzi.b((int) j);
                                        if (b != -1) {
                                            this.x.A = b;
                                            return;
                                        }
                                        return;
                                    case 21948:
                                        g(i);
                                        this.x.D = (int) j;
                                        return;
                                    case 21949:
                                        g(i);
                                        this.x.E = (int) j;
                                        return;
                                    default:
                                        return;
                                }
                        }
                    }
                    if (j != 1) {
                        StringBuilder sb6 = new StringBuilder(String.valueOf(j).length() + 35);
                        sb6.append("ContentEncodingScope ");
                        sb6.append(j);
                        sb6.append(" not supported");
                        throw zzat.a(sb6.toString(), null);
                    }
                    return;
                }
                if (j != 0) {
                    StringBuilder sb7 = new StringBuilder(String.valueOf(j).length() + 35);
                    sb7.append("ContentEncodingOrder ");
                    sb7.append(j);
                    sb7.append(" not supported");
                    throw zzat.a(sb7.toString(), null);
                }
                return;
            }
            if (!this.y) {
                h(i);
                if (this.F == -1) {
                    this.F = j;
                    return;
                }
                return;
            }
            return;
        }
        if (!this.y) {
            h(i);
            if (this.G == -1) {
                this.G = j;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void c(long j, long j2) {
        this.L = -9223372036854775807L;
        this.N = 0;
        zzait zzaitVar = this.j0;
        zzaitVar.e = 0;
        zzaitVar.b.clear();
        zzajc zzajcVar = zzaitVar.f4075c;
        zzajcVar.b = 0;
        zzajcVar.f4086c = 0;
        zzajc zzajcVar2 = this.f4082a;
        zzajcVar2.b = 0;
        zzajcVar2.f4086c = 0;
        l();
        this.C = false;
        this.D = -9223372036854775807L;
        this.E = -1;
        this.F = -1L;
        this.G = -1L;
        if (!this.y) {
            this.B.clear();
        }
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.b;
            if (i < sparseArray.size()) {
                zzagb zzagbVar = ((zzaiz) sparseArray.valueAt(i)).V;
                if (zzagbVar != null) {
                    zzagbVar.b = false;
                    zzagbVar.f3997c = 0;
                }
                i++;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x008c, code lost:
    
        return false;
     */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean d(com.google.android.gms.internal.ads.zzaep r15) {
        /*
            r14 = this;
            com.google.android.gms.internal.ads.zzajb r0 = new com.google.android.gms.internal.ads.zzajb
            r0.<init>()
            com.google.android.gms.internal.ads.zzaef r15 = (com.google.android.gms.internal.ads.zzaef) r15
            long r1 = r15.f3951c
            r3 = -1
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            r4 = 1024(0x400, double:5.06E-321)
            if (r3 == 0) goto L17
            int r6 = (r1 > r4 ? 1 : (r1 == r4 ? 0 : -1))
            if (r6 <= 0) goto L16
            goto L17
        L16:
            r4 = r1
        L17:
            com.google.android.gms.internal.ads.zzer r6 = r0.f4084a
            byte[] r7 = r6.f6834a
            r8 = 0
            r9 = 4
            r15.m(r7, r8, r9, r8)
            long r10 = r6.P()
            r0.b = r9
        L26:
            r12 = 440786851(0x1a45dfa3, double:2.1777764E-315)
            int r7 = (r10 > r12 ? 1 : (r10 == r12 ? 0 : -1))
            r9 = 1
            if (r7 == 0) goto L4d
            int r7 = (int) r4
            int r12 = r0.b
            int r12 = r12 + r9
            r0.b = r12
            if (r12 != r7) goto L37
            goto L8c
        L37:
            byte[] r7 = r6.f6834a
            r15.m(r7, r8, r9, r8)
            r7 = 8
            long r9 = r10 << r7
            byte[] r7 = r6.f6834a
            r7 = r7[r8]
            r7 = r7 & 255(0xff, float:3.57E-43)
            r11 = -256(0xffffffffffffff00, double:NaN)
            long r9 = r9 & r11
            long r11 = (long) r7
            long r9 = r9 | r11
            r10 = r9
            goto L26
        L4d:
            long r4 = r0.a(r15)
            int r6 = r0.b
            long r6 = (long) r6
            r10 = -9223372036854775808
            int r12 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1))
            if (r12 == 0) goto L8c
            long r6 = r6 + r4
            if (r3 != 0) goto L5e
            goto L63
        L5e:
            int r1 = (r6 > r1 ? 1 : (r6 == r1 ? 0 : -1))
            if (r1 < 0) goto L63
            goto L8c
        L63:
            int r1 = r0.b
            long r1 = (long) r1
            int r1 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r1 >= 0) goto L89
            long r1 = r0.a(r15)
            int r1 = (r1 > r10 ? 1 : (r1 == r10 ? 0 : -1))
            if (r1 != 0) goto L73
            goto L8c
        L73:
            long r1 = r0.a(r15)
            r3 = 0
            int r3 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r3 < 0) goto L8c
            if (r3 == 0) goto L63
            int r1 = (int) r1
            r15.e(r1, r8)
            int r2 = r0.b
            int r2 = r2 + r1
            r0.b = r2
            goto L63
        L89:
            if (r1 != 0) goto L8c
            return r9
        L8c:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaja.d(com.google.android.gms.internal.ads.zzaep):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:249:0x099a, code lost:
    
        throw com.google.android.gms.internal.ads.zzat.a("EBML lacing sample size out of range.", null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:375:0x05ef, code lost:
    
        if (r14 == 1) goto L346;
     */
    /* JADX WARN: Code restructure failed: missing block: B:565:0x0366, code lost:
    
        if (r5.equals("A_OPUS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x04a8, code lost:
    
        r3.a(r3.d);
        r3.a0 = r4.i0.f(r3.d, r3.e);
        r7.put(r3.d, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0370, code lost:
    
        if (r5.equals("A_FLAC") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x037a, code lost:
    
        if (r5.equals("A_EAC3") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:572:0x0384, code lost:
    
        if (r5.equals("V_MPEG2") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:574:0x038e, code lost:
    
        if (r5.equals("S_TEXT/UTF8") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x0398, code lost:
    
        if (r5.equals("S_TEXT/WEBVTT") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x03a2, code lost:
    
        if (r5.equals("V_MPEGH/ISO/HEVC") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x03ac, code lost:
    
        if (r5.equals("S_TEXT/SSA") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x03b6, code lost:
    
        if (r5.equals("S_TEXT/ASS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x03c0, code lost:
    
        if (r5.equals("A_PCM/INT/LIT") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x03ca, code lost:
    
        if (r5.equals("A_PCM/INT/BIG") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x03d4, code lost:
    
        if (r5.equals("A_PCM/FLOAT/IEEE") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x03de, code lost:
    
        if (r5.equals("A_DTS/EXPRESS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x03e8, code lost:
    
        if (r5.equals("V_THEORA") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:594:0x03f2, code lost:
    
        if (r5.equals("S_HDMV/PGS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x03fc, code lost:
    
        if (r5.equals("V_VP9") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x0406, code lost:
    
        if (r5.equals("V_VP8") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:600:0x0410, code lost:
    
        if (r5.equals("V_AV1") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x041a, code lost:
    
        if (r5.equals("A_DTS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x0424, code lost:
    
        if (r5.equals("A_AC3") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x042e, code lost:
    
        if (r5.equals("A_AAC") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x0438, code lost:
    
        if (r5.equals("A_DTS/LOSSLESS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:610:0x0442, code lost:
    
        if (r5.equals("S_VOBSUB") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:612:0x044c, code lost:
    
        if (r5.equals("V_MPEG4/ISO/AVC") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0455, code lost:
    
        if (r5.equals("V_MPEG4/ISO/ASP") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x045e, code lost:
    
        if (r5.equals("S_DVBSUB") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0467, code lost:
    
        if (r5.equals("V_MS/VFW/FOURCC") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:620:0x0470, code lost:
    
        if (r5.equals("A_MPEG/L3") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:622:0x0479, code lost:
    
        if (r5.equals("A_MPEG/L2") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:624:0x0482, code lost:
    
        if (r5.equals("A_VORBIS") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x048b, code lost:
    
        if (r5.equals("A_TRUEHD") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x0494, code lost:
    
        if (r5.equals("A_MS/ACM") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:630:0x049d, code lost:
    
        if (r5.equals("V_MPEG4/ISO/SP") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x04a6, code lost:
    
        if (r5.equals("V_MPEG4/ISO/AP") != false) goto L285;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0552, code lost:
    
        r21 = true;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:44:0x0605. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:563:0x035d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:430:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:456:0x01a3  */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [int] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r14v22, types: [com.google.android.gms.internal.ads.zzaef] */
    /* JADX WARN: Type inference failed for: r3v23, types: [com.google.android.gms.internal.ads.zzaiz, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v39, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v69 */
    @Override // com.google.android.gms.internal.ads.zzaeo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int e(com.google.android.gms.internal.ads.zzaep r45, com.google.android.gms.internal.ads.zzafo r46) {
        /*
            Method dump skipped, instructions count: 3828
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaja.e(com.google.android.gms.internal.ads.zzaep, com.google.android.gms.internal.ads.zzafo):int");
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void f(zzaer zzaerVar) {
        if (this.d) {
            zzaerVar = new zzalz(zzaerVar, this.e);
        }
        this.i0 = zzaerVar;
    }

    public final void g(int i) {
        if (this.x != null) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 32);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a TrackEntry");
        throw zzat.a(sb.toString(), null);
    }

    public final void h(int i) {
        if (this.C) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 26);
        sb.append("Element ");
        sb.append(i);
        sb.append(" must be in a Cues");
        throw zzat.a(sb.toString(), null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008f, code lost:
    
        if (r2.equals("S_TEXT/SSA") != false) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0098, code lost:
    
        r2 = n(r11, 10000, "%01d:%02d:%02d:%02d");
        r3 = 21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0096, code lost:
    
        if (r2.equals("S_TEXT/ASS") != false) goto L34;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:30:0x0068. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b9 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(com.google.android.gms.internal.ads.zzaiz r18, long r19, int r21, int r22, int r23) {
        /*
            Method dump skipped, instructions count: 264
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaja.i(com.google.android.gms.internal.ads.zzaiz, long, int, int, int):void");
    }

    public final void j(zzaep zzaepVar, int i) {
        zzer zzerVar = this.h;
        if (zzerVar.f6835c >= i) {
            return;
        }
        byte[] bArr = zzerVar.f6834a;
        if (bArr.length < i) {
            int length = bArr.length;
            zzerVar.A(Math.max(length + length, i));
        }
        byte[] bArr2 = zzerVar.f6834a;
        int i2 = zzerVar.f6835c;
        zzaepVar.i(bArr2, i2, i - i2);
        zzerVar.C(i);
    }

    public final int k(zzaep zzaepVar, zzaiz zzaizVar, int i, boolean z) {
        int f;
        int f2;
        int i2;
        String str = zzaizVar.f4081c;
        if ("S_TEXT/UTF8".equals(str)) {
            m(zzaepVar, k0, i);
            int i3 = this.a0;
            l();
            return i3;
        }
        if (!"S_TEXT/ASS".equals(str) && !"S_TEXT/SSA".equals(str)) {
            if ("S_TEXT/WEBVTT".equals(str)) {
                m(zzaepVar, n0, i);
                int i4 = this.a0;
                l();
                return i4;
            }
            boolean z2 = true;
            if (zzaizVar.W) {
                zzaizVar.b0.getClass();
                zzer zzerVar = new zzer(i);
                if (zzaepVar.m(zzerVar.f6834a, 0, i, true)) {
                    zzaepVar.zzl();
                    if (zzaen.a(zzerVar.J()) == 1 && zzerVar.B() >= 10) {
                        byte[] bArr = new byte[10];
                        zzerVar.H(bArr, 0, 10);
                        zzerVar.E(0);
                        int b = zzaen.b(bArr);
                        if (zzerVar.B() >= b + 4) {
                            zzerVar.G(b);
                            if (zzaen.a(zzerVar.b()) == 2) {
                                zzv zzvVar = zzaizVar.b0;
                                zzvVar.getClass();
                                zzt zztVar = new zzt(zzvVar);
                                zztVar.e("audio/vnd.dts.hd");
                                zzaizVar.b0 = new zzv(zztVar);
                            }
                        }
                    }
                }
                zzaizVar.a0.e(zzaizVar.b0);
                zzaizVar.W = false;
                a();
            }
            zzaga zzagaVar = zzaizVar.a0;
            boolean z3 = this.c0;
            zzer zzerVar2 = this.k;
            if (!z3) {
                boolean z4 = zzaizVar.i;
                zzer zzerVar3 = this.h;
                if (z4) {
                    this.V &= -1073741825;
                    boolean z5 = this.d0;
                    int i5 = Uuid.SIZE_BITS;
                    if (!z5) {
                        zzaepVar.i(zzerVar3.f6834a, 0, 1);
                        this.Z++;
                        byte b2 = zzerVar3.f6834a[0];
                        if ((b2 & ByteCompanionObject.MIN_VALUE) != 128) {
                            this.g0 = b2;
                            this.d0 = true;
                        } else {
                            throw zzat.a("Extension bit is set in signal byte", null);
                        }
                    }
                    byte b3 = this.g0;
                    if ((b3 & 1) == 1) {
                        int i6 = b3 & 2;
                        this.V |= 1073741824;
                        if (!this.h0) {
                            zzer zzerVar4 = this.m;
                            zzaepVar.i(zzerVar4.f6834a, 0, 8);
                            this.Z += 8;
                            this.h0 = true;
                            if (i6 != 2) {
                                i5 = 0;
                            }
                            zzerVar3.f6834a[0] = (byte) (i5 | 8);
                            zzerVar3.E(0);
                            zzagaVar.c(zzerVar3, 1, 1);
                            this.a0++;
                            zzerVar4.E(0);
                            zzagaVar.c(zzerVar4, 8, 1);
                            this.a0 += 8;
                        }
                        if (i6 == 2) {
                            if (!this.e0) {
                                zzaepVar.i(zzerVar3.f6834a, 0, 1);
                                this.Z++;
                                zzerVar3.E(0);
                                this.f0 = zzerVar3.K();
                                this.e0 = true;
                            }
                            int i7 = this.f0 * 4;
                            zzerVar3.y(i7);
                            zzaepVar.i(zzerVar3.f6834a, 0, i7);
                            this.Z += i7;
                            int i8 = (this.f0 >> 1) + 1;
                            int i9 = (i8 * 6) + 2;
                            ByteBuffer byteBuffer = this.p;
                            if (byteBuffer == null || byteBuffer.capacity() < i9) {
                                this.p = ByteBuffer.allocate(i9);
                            }
                            this.p.position(0);
                            this.p.putShort((short) i8);
                            int i10 = 0;
                            int i11 = 0;
                            while (true) {
                                i2 = this.f0;
                                if (i10 >= i2) {
                                    break;
                                }
                                int h = zzerVar3.h();
                                int i12 = h - i11;
                                if (i10 % 2 == 0) {
                                    this.p.putShort((short) i12);
                                } else {
                                    this.p.putInt(i12);
                                }
                                i10++;
                                i11 = h;
                            }
                            int i13 = (i - this.Z) - i11;
                            if ((i2 & 1) == 1) {
                                this.p.putInt(i13);
                            } else {
                                this.p.putShort((short) i13);
                                this.p.putInt(0);
                            }
                            byte[] array = this.p.array();
                            zzer zzerVar5 = this.n;
                            zzerVar5.z(array, i9);
                            zzagaVar.c(zzerVar5, i9, 1);
                            this.a0 += i9;
                        }
                    }
                } else {
                    byte[] bArr2 = zzaizVar.j;
                    if (bArr2 != null) {
                        zzerVar2.z(bArr2, bArr2.length);
                    }
                }
                if (!"A_OPUS".equals(zzaizVar.f4081c) ? zzaizVar.g > 0 : z) {
                    this.V |= 268435456;
                    this.o.y(0);
                    int i14 = (zzerVar2.f6835c + i) - this.Z;
                    zzerVar3.y(4);
                    byte[] bArr3 = zzerVar3.f6834a;
                    bArr3[0] = (byte) ((i14 >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
                    bArr3[1] = (byte) ((i14 >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
                    bArr3[2] = (byte) ((i14 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
                    bArr3[3] = (byte) (i14 & KotlinVersion.MAX_COMPONENT_VALUE);
                    zzagaVar.c(zzerVar3, 4, 2);
                    this.a0 += 4;
                }
                this.c0 = true;
            }
            int i15 = i + zzerVar2.f6835c;
            String str2 = zzaizVar.f4081c;
            if (!"V_MPEG4/ISO/AVC".equals(str2) && !"V_MPEGH/ISO/HEVC".equals(str2)) {
                if (zzaizVar.V != null) {
                    if (zzerVar2.f6835c != 0) {
                        z2 = false;
                    }
                    zzgqa.f(z2);
                    zzaizVar.V.a(zzaepVar);
                }
                while (true) {
                    int i16 = this.Z;
                    if (i16 >= i15) {
                        break;
                    }
                    int i17 = i15 - i16;
                    int B = zzerVar2.B();
                    if (B > 0) {
                        f2 = Math.min(i17, B);
                        zzagaVar.b(f2, zzerVar2);
                    } else {
                        f2 = zzagaVar.f(zzaepVar, i17, false);
                    }
                    this.Z += f2;
                    this.a0 += f2;
                }
            } else {
                zzer zzerVar6 = this.g;
                byte[] bArr4 = zzerVar6.f6834a;
                bArr4[0] = 0;
                bArr4[1] = 0;
                bArr4[2] = 0;
                int i18 = zzaizVar.c0;
                int i19 = 4 - i18;
                while (this.Z < i15) {
                    int i20 = this.b0;
                    if (i20 == 0) {
                        int min = Math.min(i18, zzerVar2.B());
                        zzaepVar.i(bArr4, i19 + min, i18 - min);
                        if (min > 0) {
                            zzerVar2.H(bArr4, i19, min);
                        }
                        this.Z += i18;
                        zzerVar6.E(0);
                        this.b0 = zzerVar6.h();
                        zzer zzerVar7 = this.f;
                        zzerVar7.E(0);
                        zzagaVar.b(4, zzerVar7);
                        this.a0 += 4;
                    } else {
                        int B2 = zzerVar2.B();
                        if (B2 > 0) {
                            f = Math.min(i20, B2);
                            zzagaVar.b(f, zzerVar2);
                        } else {
                            f = zzagaVar.f(zzaepVar, i20, false);
                        }
                        this.Z += f;
                        this.a0 += f;
                        this.b0 -= f;
                    }
                }
            }
            if ("A_VORBIS".equals(zzaizVar.f4081c)) {
                zzer zzerVar8 = this.i;
                zzerVar8.E(0);
                zzagaVar.b(4, zzerVar8);
                this.a0 += 4;
            }
            int i21 = this.a0;
            l();
            return i21;
        }
        m(zzaepVar, m0, i);
        int i22 = this.a0;
        l();
        return i22;
    }

    public final void l() {
        this.Z = 0;
        this.a0 = 0;
        this.b0 = 0;
        this.c0 = false;
        this.d0 = false;
        this.e0 = false;
        this.f0 = 0;
        this.g0 = (byte) 0;
        this.h0 = false;
        this.k.y(0);
    }

    public final void m(zzaep zzaepVar, byte[] bArr, int i) {
        int length = bArr.length;
        int i2 = length + i;
        zzer zzerVar = this.l;
        byte[] bArr2 = zzerVar.f6834a;
        if (bArr2.length < i2) {
            byte[] copyOf = Arrays.copyOf(bArr, i2 + i);
            zzerVar.z(copyOf, copyOf.length);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, length);
        }
        zzaepVar.i(zzerVar.f6834a, length, i);
        zzerVar.E(0);
        zzerVar.C(i2);
    }

    public final long o(long j) {
        long j2 = this.s;
        if (j2 != -9223372036854775807L) {
            return zzfj.u(j, j2, 1000L, RoundingMode.DOWN);
        }
        throw zzat.a("Can't scale timecode prior to timecodeScale being set.", null);
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final List zzb() {
        zzgvs zzgvsVar = zzgtd.f;
        return zzguy.i;
    }

    @Override // com.google.android.gms.internal.ads.zzaeo
    public final void zzf() {
    }

    public zzaja(zzait zzaitVar, int i, zzalw zzalwVar) {
        this.r = -1L;
        this.s = -9223372036854775807L;
        this.t = -9223372036854775807L;
        this.u = -9223372036854775807L;
        this.D = -9223372036854775807L;
        this.E = -1;
        this.F = -1L;
        this.G = -1L;
        this.H = -1;
        this.J = -1L;
        this.K = -1L;
        this.L = -9223372036854775807L;
        this.j0 = zzaitVar;
        zzaitVar.d = new zzaiv(this);
        this.e = zzalwVar;
        this.B = new SparseArray();
        this.f4083c = true;
        this.d = (i & 2) == 0;
        this.f4082a = new zzajc();
        this.b = new SparseArray();
        this.h = new zzer(4);
        this.i = new zzer(ByteBuffer.allocate(4).putInt(-1).array());
        this.j = new zzer(4);
        this.f = new zzer(zzgm.f8111a);
        this.g = new zzer(4);
        this.k = new zzer();
        this.l = new zzer();
        this.m = new zzer(8);
        this.n = new zzer();
        this.o = new zzer();
        this.S = new int[1];
        this.w = true;
    }
}
