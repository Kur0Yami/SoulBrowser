package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Locale;
import kotlin.UByte;

/* loaded from: classes.dex */
public final class zzaif {

    /* renamed from: a, reason: collision with root package name */
    public static final zzaic f4059a = null;

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0046, code lost:
    
        r4 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(com.google.android.gms.internal.ads.zzer r21, int r22, int r23, boolean r24) {
        /*
            r1 = r21
            r0 = r22
            int r2 = r1.b
        L6:
            int r3 = r1.B()     // Catch: java.lang.Throwable -> L20
            r4 = 1
            r5 = r23
            if (r3 < r5) goto La5
            r3 = 3
            r6 = 0
            if (r0 < r3) goto L23
            int r7 = r1.b()     // Catch: java.lang.Throwable -> L20
            long r8 = r1.P()     // Catch: java.lang.Throwable -> L20
            int r10 = r1.L()     // Catch: java.lang.Throwable -> L20
            goto L2d
        L20:
            r0 = move-exception
            goto La9
        L23:
            int r7 = r1.O()     // Catch: java.lang.Throwable -> L20
            int r8 = r1.O()     // Catch: java.lang.Throwable -> L20
            long r8 = (long) r8     // Catch: java.lang.Throwable -> L20
            r10 = r6
        L2d:
            r11 = 0
            if (r7 != 0) goto L39
            int r7 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1))
            if (r7 != 0) goto L39
            if (r10 != 0) goto L39
            goto La5
        L39:
            r7 = 4
            if (r0 != r7) goto L69
            if (r24 != 0) goto L69
            r13 = 8421504(0x808080, double:4.160776E-317)
            long r13 = r13 & r8
            int r11 = (r13 > r11 ? 1 : (r13 == r11 ? 0 : -1))
            if (r11 == 0) goto L49
        L46:
            r4 = r6
            goto La5
        L49:
            r11 = 255(0xff, double:1.26E-321)
            long r13 = r8 & r11
            r15 = 8
            long r15 = r8 >> r15
            r17 = 16
            long r17 = r8 >> r17
            r19 = 24
            long r8 = r8 >> r19
            long r15 = r15 & r11
            long r11 = r17 & r11
            r17 = 7
            long r15 = r15 << r17
            long r13 = r13 | r15
            r15 = 14
            long r11 = r11 << r15
            long r11 = r11 | r13
            r13 = 21
            long r8 = r8 << r13
            long r8 = r8 | r11
        L69:
            if (r0 != r7) goto L79
            r3 = r10 & 64
            if (r3 == 0) goto L70
            goto L71
        L70:
            r4 = r6
        L71:
            r3 = r10 & 1
            r20 = r4
            r4 = r3
            r3 = r20
            goto L8b
        L79:
            if (r0 != r3) goto L89
            r3 = r10 & 32
            if (r3 == 0) goto L81
            r3 = r4
            goto L82
        L81:
            r3 = r6
        L82:
            r7 = r10 & 128(0x80, float:1.8E-43)
            if (r7 == 0) goto L87
            goto L8b
        L87:
            r4 = r6
            goto L8b
        L89:
            r3 = r6
            r4 = r3
        L8b:
            if (r4 == 0) goto L8f
            int r3 = r3 + 4
        L8f:
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L20
            int r3 = (r8 > r3 ? 1 : (r8 == r3 ? 0 : -1))
            if (r3 >= 0) goto L95
            goto L46
        L95:
            int r3 = r1.B()     // Catch: java.lang.Throwable -> L20
            long r3 = (long) r3     // Catch: java.lang.Throwable -> L20
            int r3 = (r3 > r8 ? 1 : (r3 == r8 ? 0 : -1))
            if (r3 >= 0) goto L9f
            goto L46
        L9f:
            int r3 = (int) r8     // Catch: java.lang.Throwable -> L20
            r1.G(r3)     // Catch: java.lang.Throwable -> L20
            goto L6
        La5:
            r1.E(r2)
            return r4
        La9:
            r1.E(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaif.a(com.google.android.gms.internal.ads.zzer, int, int, boolean):boolean");
    }

    /* JADX WARN: Can't wrap try/catch for region: R(12:79|(2:81|(1:91)(3:86|(1:88)(1:90)|89))|92|(1:93)|(2:95|(7:117|118|119|(4:(6:125|126|(5:128|129|130|(1:132)|133)(2:139|(1:141)(1:142))|134|(1:136)(1:138)|137)|143|144|(2:(1:(1:(1:224)(4:219|(1:221)|222|223))(12:188|(1:190)(1:212)|191|(1:193)|194|195|(4:198|(3:200|201|202)(1:204)|203|196)|205|206|(1:208)(1:211)|209|210))(8:161|(1:163)(1:181)|164|(1:166)(1:180)|167|(4:170|(3:172|173|174)(1:176)|175|168)|177|178)|179)(2:152|(1:154)(1:155)))(9:225|(1:(1:(0)))|143|144|(1:146)|(1:157)|(1:183)|(1:214)|224)|55|(1:57)|58)(2:98|(9:102|103|104|105|(1:107)(1:109)|108|55|(0)|58)(1:101)))|234|118|119|(0)(0)|55|(0)|58) */
    /* JADX WARN: Code restructure failed: missing block: B:229:0x0282, code lost:
    
        if (r8 == 67) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:230:0x02bc, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:232:0x02bf, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x04f6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzaig b(int r33, com.google.android.gms.internal.ads.zzer r34, boolean r35, com.google.android.gms.internal.ads.zzaic r36) {
        /*
            Method dump skipped, instructions count: 1339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaif.b(int, com.google.android.gms.internal.ads.zzer, boolean, com.google.android.gms.internal.ads.zzaic):com.google.android.gms.internal.ads.zzaig");
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public static zzgtd c(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return zzgtd.r(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        int g = g(bArr, i2, i);
        while (i2 < g) {
            zzgsxVar.c(new String(bArr, i2, g - i2, e(i)));
            i2 = i(i) + g;
            g = g(bArr, i2, i);
        }
        zzgtd f = zzgsxVar.f();
        if (f.isEmpty()) {
            return zzgtd.r(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }
        return f;
    }

    public static int d(int i, zzer zzerVar) {
        byte[] bArr = zzerVar.f6834a;
        int i2 = zzerVar.b;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 < i2 + i) {
                if ((bArr[i3] & UByte.MAX_VALUE) == 255 && bArr[i4] == 0) {
                    System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                    i--;
                }
                i3 = i4;
            } else {
                return i;
            }
        }
    }

    public static Charset e(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return StandardCharsets.ISO_8859_1;
                }
                return StandardCharsets.UTF_8;
            }
            return StandardCharsets.UTF_16BE;
        }
        return StandardCharsets.UTF_16;
    }

    public static String f(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static int g(byte[] bArr, int i, int i2) {
        int h = h(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return h;
        }
        while (true) {
            int length = bArr.length;
            if (h < length - 1) {
                int i3 = h + 1;
                if ((h - i) % 2 == 0 && bArr[i3] == 0) {
                    return h;
                }
                h = h(bArr, i3);
            } else {
                return length;
            }
        }
    }

    public static int h(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i < length) {
                if (bArr[i] == 0) {
                    return i;
                }
                i++;
            } else {
                return length;
            }
        }
    }

    public static int i(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static String j(byte[] bArr, int i, int i2, Charset charset) {
        return (i2 <= i || i2 > bArr.length) ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : new String(bArr, i, i2 - i, charset);
    }
}
