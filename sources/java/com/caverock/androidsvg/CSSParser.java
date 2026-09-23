package com.caverock.androidsvg;

import android.support.v4.media.a;
import android.util.Log;
import com.caverock.androidsvg.SVG;
import com.caverock.androidsvg.SVGParser;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.googleapis.notifications.ResourceStates;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CSSParser {

    /* renamed from: a, reason: collision with root package name */
    public MediaType f2504a;
    public Source b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2505c;

    /* renamed from: com.caverock.androidsvg.CSSParser$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2506a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[PseudoClassIdents.values().length];
            b = iArr;
            try {
                PseudoClassIdents pseudoClassIdents = PseudoClassIdents.f2515c;
                iArr[6] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                int[] iArr2 = b;
                PseudoClassIdents pseudoClassIdents2 = PseudoClassIdents.f2515c;
                iArr2[7] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                int[] iArr3 = b;
                PseudoClassIdents pseudoClassIdents3 = PseudoClassIdents.f2515c;
                iArr3[10] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                int[] iArr4 = b;
                PseudoClassIdents pseudoClassIdents4 = PseudoClassIdents.f2515c;
                iArr4[8] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                int[] iArr5 = b;
                PseudoClassIdents pseudoClassIdents5 = PseudoClassIdents.f2515c;
                iArr5[9] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                int[] iArr6 = b;
                PseudoClassIdents pseudoClassIdents6 = PseudoClassIdents.f2515c;
                iArr6[11] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                int[] iArr7 = b;
                PseudoClassIdents pseudoClassIdents7 = PseudoClassIdents.f2515c;
                iArr7[1] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                int[] iArr8 = b;
                PseudoClassIdents pseudoClassIdents8 = PseudoClassIdents.f2515c;
                iArr8[12] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                int[] iArr9 = b;
                PseudoClassIdents pseudoClassIdents9 = PseudoClassIdents.f2515c;
                iArr9[2] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                int[] iArr10 = b;
                PseudoClassIdents pseudoClassIdents10 = PseudoClassIdents.f2515c;
                iArr10[3] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                int[] iArr11 = b;
                PseudoClassIdents pseudoClassIdents11 = PseudoClassIdents.f2515c;
                iArr11[4] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                int[] iArr12 = b;
                PseudoClassIdents pseudoClassIdents12 = PseudoClassIdents.f2515c;
                iArr12[5] = 12;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                int[] iArr13 = b;
                PseudoClassIdents pseudoClassIdents13 = PseudoClassIdents.f2515c;
                iArr13[13] = 13;
            } catch (NoSuchFieldError unused13) {
            }
            try {
                int[] iArr14 = b;
                PseudoClassIdents pseudoClassIdents14 = PseudoClassIdents.f2515c;
                iArr14[0] = 14;
            } catch (NoSuchFieldError unused14) {
            }
            try {
                int[] iArr15 = b;
                PseudoClassIdents pseudoClassIdents15 = PseudoClassIdents.f2515c;
                iArr15[14] = 15;
            } catch (NoSuchFieldError unused15) {
            }
            try {
                int[] iArr16 = b;
                PseudoClassIdents pseudoClassIdents16 = PseudoClassIdents.f2515c;
                iArr16[15] = 16;
            } catch (NoSuchFieldError unused16) {
            }
            try {
                int[] iArr17 = b;
                PseudoClassIdents pseudoClassIdents17 = PseudoClassIdents.f2515c;
                iArr17[16] = 17;
            } catch (NoSuchFieldError unused17) {
            }
            try {
                int[] iArr18 = b;
                PseudoClassIdents pseudoClassIdents18 = PseudoClassIdents.f2515c;
                iArr18[17] = 18;
            } catch (NoSuchFieldError unused18) {
            }
            try {
                int[] iArr19 = b;
                PseudoClassIdents pseudoClassIdents19 = PseudoClassIdents.f2515c;
                iArr19[18] = 19;
            } catch (NoSuchFieldError unused19) {
            }
            try {
                int[] iArr20 = b;
                PseudoClassIdents pseudoClassIdents20 = PseudoClassIdents.f2515c;
                iArr20[19] = 20;
            } catch (NoSuchFieldError unused20) {
            }
            try {
                int[] iArr21 = b;
                PseudoClassIdents pseudoClassIdents21 = PseudoClassIdents.f2515c;
                iArr21[20] = 21;
            } catch (NoSuchFieldError unused21) {
            }
            try {
                int[] iArr22 = b;
                PseudoClassIdents pseudoClassIdents22 = PseudoClassIdents.f2515c;
                iArr22[21] = 22;
            } catch (NoSuchFieldError unused22) {
            }
            try {
                int[] iArr23 = b;
                PseudoClassIdents pseudoClassIdents23 = PseudoClassIdents.f2515c;
                iArr23[22] = 23;
            } catch (NoSuchFieldError unused23) {
            }
            try {
                int[] iArr24 = b;
                PseudoClassIdents pseudoClassIdents24 = PseudoClassIdents.f2515c;
                iArr24[23] = 24;
            } catch (NoSuchFieldError unused24) {
            }
            int[] iArr25 = new int[AttribOp.values().length];
            f2506a = iArr25;
            try {
                iArr25[1] = 1;
            } catch (NoSuchFieldError unused25) {
            }
            try {
                f2506a[2] = 2;
            } catch (NoSuchFieldError unused26) {
            }
            try {
                f2506a[3] = 3;
            } catch (NoSuchFieldError unused27) {
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Attrib {

        /* renamed from: a, reason: collision with root package name */
        public final String f2507a;
        public final AttribOp b;

        /* renamed from: c, reason: collision with root package name */
        public final String f2508c;

        public Attrib(String str, AttribOp attribOp, String str2) {
            this.f2507a = str;
            this.b = attribOp;
            this.f2508c = str2;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class AttribOp {

        /* renamed from: c, reason: collision with root package name */
        public static final AttribOp f2509c;
        public static final AttribOp f;
        public static final AttribOp g;
        public static final AttribOp h;
        public static final /* synthetic */ AttribOp[] i;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$AttribOp] */
        static {
            ?? r0 = new Enum(ResourceStates.EXISTS, 0);
            f2509c = r0;
            ?? r1 = new Enum("EQUALS", 1);
            f = r1;
            ?? r3 = new Enum("INCLUDES", 2);
            g = r3;
            ?? r5 = new Enum("DASHMATCH", 3);
            h = r5;
            i = new AttribOp[]{r0, r1, r3, r5};
        }

        public static AttribOp valueOf(String str) {
            return (AttribOp) Enum.valueOf(AttribOp.class, str);
        }

        public static AttribOp[] values() {
            return (AttribOp[]) i.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class CSSTextScanner extends SVGParser.TextScanner {

        /* loaded from: classes.dex */
        public static class AnPlusB {

            /* renamed from: a, reason: collision with root package name */
            public final int f2510a;
            public final int b;

            public AnPlusB(int i, int i2) {
                this.f2510a = i;
                this.b = i2;
            }
        }

        public CSSTextScanner(String str) {
            super(str.replaceAll("(?s)/\\*.*?\\*/", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
        }

        public static int r(int i) {
            if (i >= 48 && i <= 57) {
                return i - 48;
            }
            if (i >= 65 && i <= 70) {
                return i - 55;
            }
            if (i >= 97 && i <= 102) {
                return i - 87;
            }
            return -1;
        }

        public final String s() {
            int r;
            if (!f()) {
                char charAt = this.f2595a.charAt(this.b);
                if (charAt != '\'' && charAt != '\"') {
                    return null;
                }
                StringBuilder sb = new StringBuilder();
                this.b++;
                int intValue = h().intValue();
                while (intValue != -1 && intValue != charAt) {
                    if (intValue == 92) {
                        intValue = h().intValue();
                        if (intValue != -1) {
                            if (intValue != 10 && intValue != 13 && intValue != 12) {
                                int r2 = r(intValue);
                                if (r2 != -1) {
                                    for (int i = 1; i <= 5 && (r = r((intValue = h().intValue()))) != -1; i++) {
                                        r2 = (r2 * 16) + r;
                                    }
                                    sb.append((char) r2);
                                }
                            } else {
                                intValue = h().intValue();
                            }
                        }
                    }
                    sb.append((char) intValue);
                    intValue = h().intValue();
                }
                return sb.toString();
            }
            return null;
        }

        public final String t() {
            int i;
            int i2;
            boolean f = f();
            String str = this.f2595a;
            if (f) {
                i2 = this.b;
            } else {
                int i3 = this.b;
                int charAt = str.charAt(i3);
                if (charAt == 45) {
                    charAt = a();
                }
                if ((charAt >= 65 && charAt <= 90) || ((charAt >= 97 && charAt <= 122) || charAt == 95)) {
                    int a2 = a();
                    while (true) {
                        if ((a2 < 65 || a2 > 90) && ((a2 < 97 || a2 > 122) && !((a2 >= 48 && a2 <= 57) || a2 == 45 || a2 == 95))) {
                            break;
                        }
                        a2 = a();
                    }
                    i = this.b;
                } else {
                    i = i3;
                }
                this.b = i3;
                i2 = i;
            }
            int i4 = this.b;
            if (i2 == i4) {
                return null;
            }
            String substring = str.substring(i4, i2);
            this.b = i2;
            return substring;
        }

        /* JADX WARN: Code restructure failed: missing block: B:114:0x0244, code lost:
        
            continue;
         */
        /* JADX WARN: Code restructure failed: missing block: B:217:0x0455, code lost:
        
            r2 = r4.f2522a;
         */
        /* JADX WARN: Code restructure failed: missing block: B:218:0x0457, code lost:
        
            if (r2 == null) goto L269;
         */
        /* JADX WARN: Code restructure failed: missing block: B:220:0x045d, code lost:
        
            if (r2.isEmpty() == false) goto L268;
         */
        /* JADX WARN: Code restructure failed: missing block: B:221:0x0460, code lost:
        
            r1.add(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:222:0x0463, code lost:
        
            return r1;
         */
        /* JADX WARN: Failed to find 'out' block for switch in B:42:0x0175. Please report as an issue. */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:141:0x03dd  */
        /* JADX WARN: Removed duplicated region for block: B:142:0x03f4 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:153:0x03d8  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x0055  */
        /* JADX WARN: Removed duplicated region for block: B:206:0x0430  */
        /* JADX WARN: Removed duplicated region for block: B:215:0x0453 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:283:0x005b  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x0415  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x024b  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x026f A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r10v0, types: [com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r10v3, types: [com.caverock.androidsvg.CSSParser$AttribOp] */
        /* JADX WARN: Type inference failed for: r10v38, types: [java.lang.Object, com.caverock.androidsvg.CSSParser$PseudoClassNot] */
        /* JADX WARN: Type inference failed for: r10v60 */
        /* JADX WARN: Type inference failed for: r10v61 */
        /* JADX WARN: Type inference failed for: r11v17 */
        /* JADX WARN: Type inference failed for: r11v18 */
        /* JADX WARN: Type inference failed for: r11v19, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r11v22 */
        /* JADX WARN: Type inference failed for: r11v23 */
        /* JADX WARN: Type inference failed for: r6v1 */
        /* JADX WARN: Type inference failed for: r6v10 */
        /* JADX WARN: Type inference failed for: r6v2, types: [com.caverock.androidsvg.CSSParser$Combinator] */
        /* JADX WARN: Type inference failed for: r6v9 */
        /* JADX WARN: Type inference failed for: r7v20 */
        /* JADX WARN: Type inference failed for: r7v24, types: [com.caverock.androidsvg.CSSParser$CSSTextScanner$AnPlusB] */
        /* JADX WARN: Type inference failed for: r7v26 */
        /* JADX WARN: Type inference failed for: r7v33 */
        /* JADX WARN: Type inference failed for: r8v10, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v11 */
        /* JADX WARN: Type inference failed for: r8v12, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v13, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v14, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v15, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v16, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /* JADX WARN: Type inference failed for: r8v19 */
        /* JADX WARN: Type inference failed for: r8v20 */
        /* JADX WARN: Type inference failed for: r8v21 */
        /* JADX WARN: Type inference failed for: r8v3 */
        /* JADX WARN: Type inference failed for: r8v6 */
        /* JADX WARN: Type inference failed for: r8v7 */
        /* JADX WARN: Type inference failed for: r8v8, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r8v9, types: [com.caverock.androidsvg.CSSParser$SimpleSelector] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.ArrayList u() {
            /*
                Method dump skipped, instructions count: 1176
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.CSSTextScanner.u():java.util.ArrayList");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Combinator {

        /* renamed from: c, reason: collision with root package name */
        public static final Combinator f2511c;
        public static final Combinator f;
        public static final Combinator g;
        public static final /* synthetic */ Combinator[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.CSSParser$Combinator, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.caverock.androidsvg.CSSParser$Combinator, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.caverock.androidsvg.CSSParser$Combinator, java.lang.Enum] */
        static {
            ?? r0 = new Enum("DESCENDANT", 0);
            f2511c = r0;
            ?? r1 = new Enum("CHILD", 1);
            f = r1;
            ?? r3 = new Enum("FOLLOWS", 2);
            g = r3;
            h = new Combinator[]{r0, r1, r3};
        }

        public static Combinator valueOf(String str) {
            return (Combinator) Enum.valueOf(Combinator.class, str);
        }

        public static Combinator[] values() {
            return (Combinator[]) h.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class MediaType {

        /* renamed from: c, reason: collision with root package name */
        public static final MediaType f2512c;
        public static final MediaType f;
        public static final /* synthetic */ MediaType[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.caverock.androidsvg.CSSParser$MediaType, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r13v1, types: [com.caverock.androidsvg.CSSParser$MediaType, java.lang.Enum] */
        static {
            ?? r0 = new Enum("all", 0);
            f2512c = r0;
            Enum r1 = new Enum("aural", 1);
            Enum r3 = new Enum("braille", 2);
            Enum r5 = new Enum("embossed", 3);
            Enum r7 = new Enum("handheld", 4);
            Enum r9 = new Enum("print", 5);
            Enum r11 = new Enum("projection", 6);
            ?? r13 = new Enum("screen", 7);
            f = r13;
            g = new MediaType[]{r0, r1, r3, r5, r7, r9, r11, r13, new Enum("speech", 8), new Enum("tty", 9), new Enum("tv", 10)};
        }

        public static MediaType valueOf(String str) {
            return (MediaType) Enum.valueOf(MediaType.class, str);
        }

        public static MediaType[] values() {
            return (MediaType[]) g.clone();
        }
    }

    /* loaded from: classes.dex */
    public interface PseudoClass {
        boolean a(SVG.SvgElementBase svgElementBase);
    }

    /* loaded from: classes.dex */
    public static class PseudoClassAnPlusB implements PseudoClass {

        /* renamed from: a, reason: collision with root package name */
        public final int f2513a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f2514c;
        public final boolean d;
        public final String e;

        public PseudoClassAnPlusB(int i, int i2, String str, boolean z, boolean z2) {
            this.f2513a = i;
            this.b = i2;
            this.f2514c = z;
            this.d = z2;
            this.e = str;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0065 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0064 A[RETURN] */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a(com.caverock.androidsvg.SVG.SvgElementBase r8) {
            /*
                r7 = this;
                boolean r0 = r7.d
                java.lang.String r1 = r7.e
                if (r0 == 0) goto Lc
                if (r1 != 0) goto Lc
                java.lang.String r1 = r8.n()
            Lc:
                com.caverock.androidsvg.SVG$SvgContainer r0 = r8.b
                r2 = 0
                r3 = 1
                if (r0 == 0) goto L3c
                java.util.List r0 = r0.a()
                java.util.Iterator r0 = r0.iterator()
                r4 = r2
                r5 = r4
            L1c:
                boolean r6 = r0.hasNext()
                if (r6 == 0) goto L3e
                java.lang.Object r6 = r0.next()
                com.caverock.androidsvg.SVG$SvgObject r6 = (com.caverock.androidsvg.SVG.SvgObject) r6
                com.caverock.androidsvg.SVG$SvgElementBase r6 = (com.caverock.androidsvg.SVG.SvgElementBase) r6
                if (r6 != r8) goto L2d
                r4 = r5
            L2d:
                if (r1 == 0) goto L39
                java.lang.String r6 = r6.n()
                boolean r6 = r6.equals(r1)
                if (r6 == 0) goto L1c
            L39:
                int r5 = r5 + 1
                goto L1c
            L3c:
                r4 = r2
                r5 = r3
            L3e:
                boolean r8 = r7.f2514c
                if (r8 == 0) goto L44
                int r4 = r4 + r3
                goto L46
            L44:
                int r4 = r5 - r4
            L46:
                int r8 = r7.f2513a
                int r0 = r7.b
                if (r8 != 0) goto L4f
                if (r4 != r0) goto L65
                goto L64
            L4f:
                int r4 = r4 - r0
                int r0 = r4 % r8
                if (r0 != 0) goto L65
                int r0 = java.lang.Integer.signum(r4)
                if (r0 == 0) goto L64
                int r0 = java.lang.Integer.signum(r4)
                int r8 = java.lang.Integer.signum(r8)
                if (r0 != r8) goto L65
            L64:
                return r3
            L65:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.PseudoClassAnPlusB.a(com.caverock.androidsvg.SVG$SvgElementBase):boolean");
        }

        public final String toString() {
            String str;
            if (this.f2514c) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            } else {
                str = "last-";
            }
            boolean z = this.d;
            int i = this.b;
            int i2 = this.f2513a;
            if (z) {
                return String.format("nth-%schild(%dn%+d of type <%s>)", str, Integer.valueOf(i2), Integer.valueOf(i), this.e);
            }
            return String.format("nth-%schild(%dn%+d)", str, Integer.valueOf(i2), Integer.valueOf(i));
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassEmpty implements PseudoClass {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            if ((svgElementBase instanceof SVG.SvgContainer) && ((SVG.SvgContainer) svgElementBase).a().size() != 0) {
                return false;
            }
            return true;
        }

        public final String toString() {
            return "empty";
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class PseudoClassIdents {

        /* renamed from: c, reason: collision with root package name */
        public static final PseudoClassIdents f2515c;
        public static final PseudoClassIdents f;
        public static final PseudoClassIdents g;
        public static final PseudoClassIdents h;
        public static final HashMap i;
        public static final /* synthetic */ PseudoClassIdents[] j;

        /* JADX INFO: Fake field, exist only in values array */
        PseudoClassIdents EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$PseudoClassIdents] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$PseudoClassIdents] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$PseudoClassIdents] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$PseudoClassIdents] */
        static {
            Enum r0 = new Enum("target", 0);
            Enum r1 = new Enum("root", 1);
            ?? r3 = new Enum("nth_child", 2);
            f2515c = r3;
            Enum r5 = new Enum("nth_last_child", 3);
            ?? r7 = new Enum("nth_of_type", 4);
            f = r7;
            ?? r9 = new Enum("nth_last_of_type", 5);
            g = r9;
            Enum r11 = new Enum("first_child", 6);
            Enum r13 = new Enum("last_child", 7);
            Enum r15 = new Enum("first_of_type", 8);
            Enum r2 = new Enum("last_of_type", 9);
            Enum r4 = new Enum("only_child", 10);
            Enum r6 = new Enum("only_of_type", 11);
            Enum r8 = new Enum("empty", 12);
            Enum r10 = new Enum("not", 13);
            Enum r12 = new Enum("lang", 14);
            Enum r14 = new Enum("link", 15);
            Enum r02 = new Enum("visited", 16);
            Enum r16 = new Enum("hover", 17);
            Enum r22 = new Enum("active", 18);
            Enum r03 = new Enum("focus", 19);
            Enum r17 = new Enum("enabled", 20);
            Enum r23 = new Enum("disabled", 21);
            Enum r04 = new Enum("checked", 22);
            Enum r18 = new Enum("indeterminate", 23);
            ?? r05 = new Enum("UNSUPPORTED", 24);
            h = r05;
            j = new PseudoClassIdents[]{r0, r1, r3, r5, r7, r9, r11, r13, r15, r2, r4, r6, r8, r10, r12, r14, r02, r16, r22, r03, r17, r23, r04, r18, r05};
            i = new HashMap();
            for (PseudoClassIdents pseudoClassIdents : values()) {
                if (pseudoClassIdents != h) {
                    i.put(pseudoClassIdents.name().replace('_', '-'), pseudoClassIdents);
                }
            }
        }

        public static PseudoClassIdents valueOf(String str) {
            return (PseudoClassIdents) Enum.valueOf(PseudoClassIdents.class, str);
        }

        public static PseudoClassIdents[] values() {
            return (PseudoClassIdents[]) j.clone();
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassNot implements PseudoClass {

        /* renamed from: a, reason: collision with root package name */
        public List f2516a;

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            Iterator it = this.f2516a.iterator();
            while (it.hasNext()) {
                if (CSSParser.g((Selector) it.next(), svgElementBase)) {
                    return false;
                }
            }
            return true;
        }

        public final String toString() {
            return "not(" + this.f2516a + ")";
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassNotSupported implements PseudoClass {

        /* renamed from: a, reason: collision with root package name */
        public final String f2517a;

        public PseudoClassNotSupported(String str) {
            this.f2517a = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public final String toString() {
            return this.f2517a;
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassOnlyChild implements PseudoClass {

        /* renamed from: a, reason: collision with root package name */
        public final boolean f2518a;
        public final String b;

        public PseudoClassOnlyChild(String str, boolean z) {
            this.f2518a = z;
            this.b = str;
        }

        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            int i;
            boolean z = this.f2518a;
            String str = this.b;
            if (z && str == null) {
                str = svgElementBase.n();
            }
            SVG.SvgContainer svgContainer = svgElementBase.b;
            if (svgContainer != null) {
                Iterator it = svgContainer.a().iterator();
                i = 0;
                while (it.hasNext()) {
                    SVG.SvgElementBase svgElementBase2 = (SVG.SvgElementBase) ((SVG.SvgObject) it.next());
                    if (str == null || svgElementBase2.n().equals(str)) {
                        i++;
                    }
                }
            } else {
                i = 1;
            }
            if (i != 1) {
                return false;
            }
            return true;
        }

        public final String toString() {
            if (this.f2518a) {
                return a.l("only-of-type <", this.b, ">");
            }
            return "only-child";
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassRoot implements PseudoClass {
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            if (svgElementBase.b == null) {
                return true;
            }
            return false;
        }

        public final String toString() {
            return "root";
        }
    }

    /* loaded from: classes.dex */
    public static class PseudoClassTarget implements PseudoClass {
        @Override // com.caverock.androidsvg.CSSParser.PseudoClass
        public final boolean a(SVG.SvgElementBase svgElementBase) {
            return false;
        }

        public final String toString() {
            return "target";
        }
    }

    /* loaded from: classes.dex */
    public static class Rule {

        /* renamed from: a, reason: collision with root package name */
        public Selector f2519a;
        public SVG.Style b;

        /* renamed from: c, reason: collision with root package name */
        public Source f2520c;

        public final String toString() {
            return String.valueOf(this.f2519a) + " {...} (src=" + this.f2520c + ")";
        }
    }

    /* loaded from: classes.dex */
    public static class RuleMatchContext {
        public final String toString() {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* loaded from: classes.dex */
    public static class Ruleset {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f2521a = null;

        public final void a(Rule rule) {
            if (this.f2521a == null) {
                this.f2521a = new ArrayList();
            }
            for (int i = 0; i < this.f2521a.size(); i++) {
                if (((Rule) this.f2521a.get(i)).f2519a.b > rule.f2519a.b) {
                    this.f2521a.add(i, rule);
                    return;
                }
            }
            this.f2521a.add(rule);
        }

        public final void b(Ruleset ruleset) {
            if (ruleset.f2521a != null) {
                if (this.f2521a == null) {
                    this.f2521a = new ArrayList(ruleset.f2521a.size());
                }
                ArrayList arrayList = ruleset.f2521a;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    a((Rule) obj);
                }
            }
        }

        public final String toString() {
            if (this.f2521a == null) {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = this.f2521a;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                sb.append(((Rule) obj).toString());
                sb.append('\n');
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class Selector {

        /* renamed from: a, reason: collision with root package name */
        public ArrayList f2522a = null;
        public int b = 0;

        public final void a() {
            this.b += 1000;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            ArrayList arrayList = this.f2522a;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                sb.append((SimpleSelector) obj);
                sb.append(' ');
            }
            sb.append('[');
            sb.append(this.b);
            sb.append(']');
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public static class SimpleSelector {

        /* renamed from: a, reason: collision with root package name */
        public final Combinator f2523a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public ArrayList f2524c = null;
        public ArrayList d = null;

        public SimpleSelector(Combinator combinator, String str) {
            this.f2523a = null;
            this.b = null;
            this.f2523a = combinator == null ? Combinator.f2511c : combinator;
            this.b = str;
        }

        public final void a(String str, AttribOp attribOp, String str2) {
            if (this.f2524c == null) {
                this.f2524c = new ArrayList();
            }
            this.f2524c.add(new Attrib(str, attribOp, str2));
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Combinator combinator = Combinator.f;
            Combinator combinator2 = this.f2523a;
            if (combinator2 == combinator) {
                sb.append("> ");
            } else if (combinator2 == Combinator.g) {
                sb.append("+ ");
            }
            String str = this.b;
            if (str == null) {
                str = "*";
            }
            sb.append(str);
            ArrayList arrayList = this.f2524c;
            int i = 0;
            if (arrayList != null) {
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    Attrib attrib = (Attrib) obj;
                    sb.append('[');
                    String str2 = attrib.f2507a;
                    String str3 = attrib.f2508c;
                    sb.append(str2);
                    int ordinal = attrib.b.ordinal();
                    if (ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal == 3) {
                                sb.append("|=");
                                sb.append(str3);
                            }
                        } else {
                            sb.append("~=");
                            sb.append(str3);
                        }
                    } else {
                        sb.append('=');
                        sb.append(str3);
                    }
                    sb.append(']');
                }
            }
            ArrayList arrayList2 = this.d;
            if (arrayList2 != null) {
                int size2 = arrayList2.size();
                while (i < size2) {
                    Object obj2 = arrayList2.get(i);
                    i++;
                    sb.append(':');
                    sb.append((PseudoClass) obj2);
                }
            }
            return sb.toString();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Source {

        /* renamed from: c, reason: collision with root package name */
        public static final Source f2525c;
        public static final Source f;
        public static final /* synthetic */ Source[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$Source] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.caverock.androidsvg.CSSParser$Source] */
        static {
            ?? r0 = new Enum("Document", 0);
            f2525c = r0;
            ?? r1 = new Enum("RenderOptions", 1);
            f = r1;
            g = new Source[]{r0, r1};
        }

        public static Source valueOf(String str) {
            return (Source) Enum.valueOf(Source.class, str);
        }

        public static Source[] values() {
            return (Source[]) g.clone();
        }
    }

    public static int a(ArrayList arrayList, int i, SVG.SvgElementBase svgElementBase) {
        int i2 = 0;
        if (i < 0) {
            return 0;
        }
        Object obj = arrayList.get(i);
        SVG.SvgContainer svgContainer = svgElementBase.b;
        if (obj == svgContainer) {
            Iterator it = svgContainer.a().iterator();
            while (it.hasNext()) {
                if (((SVG.SvgObject) it.next()) == svgElementBase) {
                    return i2;
                }
                i2++;
            }
            return -1;
        }
        return -1;
    }

    public static ArrayList c(CSSTextScanner cSSTextScanner) {
        ArrayList arrayList = new ArrayList();
        while (!cSSTextScanner.f()) {
            String str = cSSTextScanner.f2595a;
            String str2 = null;
            if (!cSSTextScanner.f()) {
                int i = cSSTextScanner.b;
                char charAt = str.charAt(i);
                if ((charAt >= 'A' && charAt <= 'Z') || (charAt >= 'a' && charAt <= 'z')) {
                    int a2 = cSSTextScanner.a();
                    while (true) {
                        if ((a2 < 65 || a2 > 90) && (a2 < 97 || a2 > 122)) {
                            break;
                        }
                        a2 = cSSTextScanner.a();
                    }
                    str2 = str.substring(i, cSSTextScanner.b);
                } else {
                    cSSTextScanner.b = i;
                }
            }
            if (str2 == null) {
                break;
            }
            try {
                arrayList.add(MediaType.valueOf(str2));
            } catch (IllegalArgumentException unused) {
            }
            if (!cSSTextScanner.p()) {
                break;
            }
        }
        return arrayList;
    }

    public static boolean f(Selector selector, int i, ArrayList arrayList, int i2, SVG.SvgElementBase svgElementBase) {
        SimpleSelector simpleSelector = (SimpleSelector) selector.f2522a.get(i);
        if (i(simpleSelector, svgElementBase)) {
            Combinator combinator = simpleSelector.f2523a;
            if (combinator == Combinator.f2511c) {
                if (i != 0) {
                    while (i2 >= 0) {
                        if (!h(selector, i - 1, arrayList, i2)) {
                            i2--;
                        }
                    }
                    return false;
                }
                return true;
            }
            if (combinator == Combinator.f) {
                return h(selector, i - 1, arrayList, i2);
            }
            int a2 = a(arrayList, i2, svgElementBase);
            if (a2 <= 0) {
                return false;
            }
            return f(selector, i - 1, arrayList, i2, (SVG.SvgElementBase) svgElementBase.b.a().get(a2 - 1));
        }
        return false;
    }

    public static boolean g(Selector selector, SVG.SvgElementBase svgElementBase) {
        int i;
        int size;
        ArrayList arrayList = new ArrayList();
        Object obj = svgElementBase.b;
        while (true) {
            i = 0;
            if (obj == null) {
                break;
            }
            arrayList.add(0, obj);
            obj = ((SVG.SvgObject) obj).b;
        }
        int size2 = arrayList.size() - 1;
        ArrayList arrayList2 = selector.f2522a;
        if (arrayList2 == null) {
            size = 0;
        } else {
            size = arrayList2.size();
        }
        if (size == 1) {
            return i((SimpleSelector) selector.f2522a.get(0), svgElementBase);
        }
        ArrayList arrayList3 = selector.f2522a;
        if (arrayList3 != null) {
            i = arrayList3.size();
        }
        return f(selector, i - 1, arrayList, size2, svgElementBase);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x002b, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001c, code lost:
    
        if (r5 == 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if (r7 <= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0021, code lost:
    
        r7 = r7 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0029, code lost:
    
        if (h(r4, r5 - 1, r6, r7) == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean h(com.caverock.androidsvg.CSSParser.Selector r4, int r5, java.util.ArrayList r6, int r7) {
        /*
            java.util.ArrayList r0 = r4.f2522a
            java.lang.Object r0 = r0.get(r5)
            com.caverock.androidsvg.CSSParser$SimpleSelector r0 = (com.caverock.androidsvg.CSSParser.SimpleSelector) r0
            java.lang.Object r1 = r6.get(r7)
            com.caverock.androidsvg.SVG$SvgElementBase r1 = (com.caverock.androidsvg.SVG.SvgElementBase) r1
            boolean r2 = i(r0, r1)
            if (r2 != 0) goto L15
            goto L3d
        L15:
            com.caverock.androidsvg.CSSParser$Combinator r0 = r0.f2523a
            com.caverock.androidsvg.CSSParser$Combinator r2 = com.caverock.androidsvg.CSSParser.Combinator.f2511c
            r3 = 1
            if (r0 != r2) goto L2c
            if (r5 != 0) goto L1f
            goto L2b
        L1f:
            if (r7 <= 0) goto L3d
            int r0 = r5 + (-1)
            int r7 = r7 + (-1)
            boolean r0 = h(r4, r0, r6, r7)
            if (r0 == 0) goto L1f
        L2b:
            return r3
        L2c:
            com.caverock.androidsvg.CSSParser$Combinator r2 = com.caverock.androidsvg.CSSParser.Combinator.f
            if (r0 != r2) goto L37
            int r5 = r5 - r3
            int r7 = r7 - r3
            boolean r4 = h(r4, r5, r6, r7)
            return r4
        L37:
            int r0 = a(r6, r7, r1)
            if (r0 > 0) goto L3f
        L3d:
            r4 = 0
            return r4
        L3f:
            com.caverock.androidsvg.SVG$SvgContainer r1 = r1.b
            java.util.List r1 = r1.a()
            int r0 = r0 - r3
            java.lang.Object r0 = r1.get(r0)
            com.caverock.androidsvg.SVG$SvgElementBase r0 = (com.caverock.androidsvg.SVG.SvgElementBase) r0
            int r5 = r5 - r3
            boolean r4 = f(r4, r5, r6, r7, r0)
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.caverock.androidsvg.CSSParser.h(com.caverock.androidsvg.CSSParser$Selector, int, java.util.ArrayList, int):boolean");
    }

    public static boolean i(SimpleSelector simpleSelector, SVG.SvgElementBase svgElementBase) {
        ArrayList arrayList;
        String str = simpleSelector.b;
        if (str == null || str.equals(svgElementBase.n().toLowerCase(Locale.US))) {
            ArrayList arrayList2 = simpleSelector.f2524c;
            if (arrayList2 != null) {
                int size = arrayList2.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList2.get(i);
                    i++;
                    Attrib attrib = (Attrib) obj;
                    String str2 = attrib.f2507a;
                    String str3 = attrib.f2508c;
                    if (!str2.equals("id")) {
                        if (!str2.equals("class") || (arrayList = svgElementBase.g) == null || !arrayList.contains(str3)) {
                            break;
                        }
                    } else if (!str3.equals(svgElementBase.f2558c)) {
                        break;
                    }
                }
            }
            ArrayList arrayList3 = simpleSelector.d;
            if (arrayList3 != null) {
                int size2 = arrayList3.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList3.get(i2);
                    i2++;
                    if (!((PseudoClass) obj2).a(svgElementBase)) {
                    }
                }
                return true;
            }
            return true;
        }
        return false;
    }

    public final void b(Ruleset ruleset, CSSTextScanner cSSTextScanner) {
        int intValue;
        char charAt;
        int r;
        String t = cSSTextScanner.t();
        cSSTextScanner.q();
        if (t != null) {
            int i = 0;
            if (!this.f2505c && t.equals("media")) {
                ArrayList c2 = c(cSSTextScanner);
                if (cSSTextScanner.d('{')) {
                    cSSTextScanner.q();
                    MediaType mediaType = this.f2504a;
                    int size = c2.size();
                    int i2 = 0;
                    while (i2 < size) {
                        Object obj = c2.get(i2);
                        i2++;
                        MediaType mediaType2 = (MediaType) obj;
                        if (mediaType2 == MediaType.f2512c || mediaType2 == mediaType) {
                            this.f2505c = true;
                            ruleset.b(e(cSSTextScanner));
                            this.f2505c = false;
                            break;
                        }
                    }
                    e(cSSTextScanner);
                    if (!cSSTextScanner.f() && !cSSTextScanner.d('}')) {
                        throw new Exception("Invalid @media rule: expected '}' at end of rule set");
                    }
                } else {
                    throw new Exception("Invalid @media rule: missing rule set");
                }
            } else if (!this.f2505c && t.equals("import")) {
                String str = null;
                if (!cSSTextScanner.f()) {
                    int i3 = cSSTextScanner.b;
                    if (cSSTextScanner.e("url(")) {
                        cSSTextScanner.q();
                        String s = cSSTextScanner.s();
                        if (s == null) {
                            String str2 = cSSTextScanner.f2595a;
                            StringBuilder sb = new StringBuilder();
                            while (!cSSTextScanner.f() && (charAt = str2.charAt(cSSTextScanner.b)) != '\'' && charAt != '\"' && charAt != '(' && charAt != ')' && !SVGParser.TextScanner.g(charAt) && !Character.isISOControl((int) charAt)) {
                                cSSTextScanner.b++;
                                if (charAt == '\\') {
                                    if (!cSSTextScanner.f()) {
                                        int i4 = cSSTextScanner.b;
                                        cSSTextScanner.b = i4 + 1;
                                        charAt = str2.charAt(i4);
                                        if (charAt != '\n' && charAt != '\r' && charAt != '\f') {
                                            int r2 = CSSTextScanner.r(charAt);
                                            if (r2 != -1) {
                                                for (int i5 = 1; i5 <= 5 && !cSSTextScanner.f() && (r = CSSTextScanner.r(str2.charAt(cSSTextScanner.b))) != -1; i5++) {
                                                    cSSTextScanner.b++;
                                                    r2 = (r2 * 16) + r;
                                                }
                                                sb.append((char) r2);
                                            }
                                        }
                                    }
                                }
                                sb.append(charAt);
                            }
                            if (sb.length() == 0) {
                                s = null;
                            } else {
                                s = sb.toString();
                            }
                        }
                        if (s == null) {
                            cSSTextScanner.b = i3;
                        } else {
                            cSSTextScanner.q();
                            if (!cSSTextScanner.f() && !cSSTextScanner.e(")")) {
                                cSSTextScanner.b = i3;
                            } else {
                                str = s;
                            }
                        }
                    }
                }
                if (str == null) {
                    str = cSSTextScanner.s();
                }
                if (str != null) {
                    cSSTextScanner.q();
                    c(cSSTextScanner);
                    if (!cSSTextScanner.f() && !cSSTextScanner.d(';')) {
                        throw new Exception("Invalid @media rule: expected '}' at end of rule set");
                    }
                } else {
                    throw new Exception("Invalid @import rule: expected string or url()");
                }
            } else {
                Log.w("CSSParser", "Ignoring @" + t + " rule");
                while (!cSSTextScanner.f() && ((intValue = cSSTextScanner.h().intValue()) != 59 || i != 0)) {
                    if (intValue == 123) {
                        i++;
                    } else if (intValue == 125 && i > 0 && i - 1 == 0) {
                        break;
                    }
                }
            }
            cSSTextScanner.q();
            return;
        }
        throw new Exception("Invalid '@' rule");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, com.caverock.androidsvg.CSSParser$Rule] */
    public final boolean d(Ruleset ruleset, CSSTextScanner cSSTextScanner) {
        ArrayList u = cSSTextScanner.u();
        int i = 0;
        if (u == null || u.isEmpty()) {
            return false;
        }
        if (cSSTextScanner.d('{')) {
            cSSTextScanner.q();
            SVG.Style style = new SVG.Style();
            do {
                String t = cSSTextScanner.t();
                cSSTextScanner.q();
                if (cSSTextScanner.d(':')) {
                    cSSTextScanner.q();
                    String str = cSSTextScanner.f2595a;
                    String str2 = null;
                    if (!cSSTextScanner.f()) {
                        int i2 = cSSTextScanner.b;
                        int charAt = str.charAt(i2);
                        int i3 = i2;
                        while (charAt != -1 && charAt != 59 && charAt != 125 && charAt != 33 && charAt != 10 && charAt != 13) {
                            if (!SVGParser.TextScanner.g(charAt)) {
                                i3 = cSSTextScanner.b + 1;
                            }
                            charAt = cSSTextScanner.a();
                        }
                        if (cSSTextScanner.b > i2) {
                            str2 = str.substring(i2, i3);
                        } else {
                            cSSTextScanner.b = i2;
                        }
                    }
                    if (str2 != null) {
                        cSSTextScanner.q();
                        if (cSSTextScanner.d('!')) {
                            cSSTextScanner.q();
                            if (cSSTextScanner.e("important")) {
                                cSSTextScanner.q();
                            } else {
                                throw new Exception("Malformed rule set: found unexpected '!'");
                            }
                        }
                        cSSTextScanner.d(';');
                        SVGParser.E(style, t, str2);
                        cSSTextScanner.q();
                        if (cSSTextScanner.f()) {
                            break;
                        }
                    } else {
                        throw new Exception("Expected property value");
                    }
                } else {
                    throw new Exception("Expected ':'");
                }
            } while (!cSSTextScanner.d('}'));
            cSSTextScanner.q();
            int size = u.size();
            while (i < size) {
                Object obj = u.get(i);
                i++;
                Source source = this.b;
                ?? obj2 = new Object();
                obj2.f2519a = (Selector) obj;
                obj2.b = style;
                obj2.f2520c = source;
                ruleset.a(obj2);
            }
            return true;
        }
        throw new Exception("Malformed rule block: expected '{'");
    }

    public final Ruleset e(CSSTextScanner cSSTextScanner) {
        Ruleset ruleset = new Ruleset();
        while (!cSSTextScanner.f()) {
            try {
                if (!cSSTextScanner.e("<!--") && !cSSTextScanner.e("-->")) {
                    if (cSSTextScanner.d('@')) {
                        b(ruleset, cSSTextScanner);
                    } else if (!d(ruleset, cSSTextScanner)) {
                        break;
                    }
                }
            } catch (CSSParseException e) {
                Log.e("CSSParser", "CSS parser terminated early due to error: " + e.getMessage());
                return ruleset;
            }
        }
        return ruleset;
    }
}
