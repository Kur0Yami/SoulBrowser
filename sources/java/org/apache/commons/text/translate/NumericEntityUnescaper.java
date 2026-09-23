package org.apache.commons.text.translate;

import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.EnumSet;
import org.apache.commons.lang3.ArrayUtils;

/* loaded from: classes4.dex */
public class NumericEntityUnescaper extends CharSequenceTranslator {

    /* renamed from: c, reason: collision with root package name */
    public static final EnumSet f22515c = EnumSet.copyOf((Collection) Collections.singletonList(OPTION.f22516c));
    public final EnumSet b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class OPTION {

        /* renamed from: c, reason: collision with root package name */
        public static final OPTION f22516c;
        public static final OPTION f;
        public static final /* synthetic */ OPTION[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, org.apache.commons.text.translate.NumericEntityUnescaper$OPTION] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, org.apache.commons.text.translate.NumericEntityUnescaper$OPTION] */
        static {
            ?? r0 = new Enum("semiColonRequired", 0);
            f22516c = r0;
            Enum r1 = new Enum("semiColonOptional", 1);
            ?? r3 = new Enum("errorIfNoSemiColon", 2);
            f = r3;
            g = new OPTION[]{r0, r1, r3};
        }

        public static OPTION valueOf(String str) {
            return (OPTION) Enum.valueOf(OPTION.class, str);
        }

        public static OPTION[] values() {
            return (OPTION[]) g.clone();
        }
    }

    public NumericEntityUnescaper(OPTION... optionArr) {
        EnumSet copyOf;
        if (ArrayUtils.b(optionArr)) {
            copyOf = f22515c;
        } else {
            copyOf = EnumSet.copyOf((Collection) Arrays.asList(optionArr));
        }
        this.b = copyOf;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0072, code lost:
    
        if (r8.charAt(r2) != ';') goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0074, code lost:
    
        r0 = 1;
     */
    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.CharSequence r8, int r9, java.io.StringWriter r10) {
        /*
            r7 = this;
            int r0 = r8.length()
            char r1 = r8.charAt(r9)
            r2 = 38
            r3 = 0
            if (r1 != r2) goto Ld1
            int r1 = r0 + (-2)
            if (r9 >= r1) goto Ld1
            int r1 = r9 + 1
            char r1 = r8.charAt(r1)
            r2 = 35
            if (r1 != r2) goto Ld1
            int r1 = r9 + 2
            char r2 = r8.charAt(r1)
            r4 = 120(0x78, float:1.68E-43)
            r5 = 1
            if (r2 == r4) goto L2d
            r4 = 88
            if (r2 != r4) goto L2b
            goto L2d
        L2b:
            r9 = r3
            goto L34
        L2d:
            int r1 = r9 + 3
            if (r1 != r0) goto L33
            goto Ld1
        L33:
            r9 = r5
        L34:
            r2 = r1
        L35:
            if (r2 >= r0) goto L6a
            char r4 = r8.charAt(r2)
            r6 = 48
            if (r4 < r6) goto L47
            char r4 = r8.charAt(r2)
            r6 = 57
            if (r4 <= r6) goto L67
        L47:
            char r4 = r8.charAt(r2)
            r6 = 97
            if (r4 < r6) goto L57
            char r4 = r8.charAt(r2)
            r6 = 102(0x66, float:1.43E-43)
            if (r4 <= r6) goto L67
        L57:
            char r4 = r8.charAt(r2)
            r6 = 65
            if (r4 < r6) goto L6a
            char r4 = r8.charAt(r2)
            r6 = 70
            if (r4 > r6) goto L6a
        L67:
            int r2 = r2 + 1
            goto L35
        L6a:
            if (r2 == r0) goto L76
            char r0 = r8.charAt(r2)
            r4 = 59
            if (r0 != r4) goto L76
            r0 = r5
            goto L77
        L76:
            r0 = r3
        L77:
            if (r0 != 0) goto L95
            org.apache.commons.text.translate.NumericEntityUnescaper$OPTION r4 = org.apache.commons.text.translate.NumericEntityUnescaper.OPTION.f22516c
            java.util.EnumSet r6 = r7.b
            boolean r4 = r6.contains(r4)
            if (r4 == 0) goto L84
            goto Ld1
        L84:
            org.apache.commons.text.translate.NumericEntityUnescaper$OPTION r4 = org.apache.commons.text.translate.NumericEntityUnescaper.OPTION.f
            boolean r4 = r6.contains(r4)
            if (r4 != 0) goto L8d
            goto L95
        L8d:
            java.lang.IllegalArgumentException r8 = new java.lang.IllegalArgumentException
            java.lang.String r9 = "Semi-colon required at end of numeric entity"
            r8.<init>(r9)
            throw r8
        L95:
            if (r9 == 0) goto La6
            java.lang.CharSequence r8 = r8.subSequence(r1, r2)     // Catch: java.lang.NumberFormatException -> Ld1
            java.lang.String r8 = r8.toString()     // Catch: java.lang.NumberFormatException -> Ld1
            r4 = 16
            int r8 = java.lang.Integer.parseInt(r8, r4)     // Catch: java.lang.NumberFormatException -> Ld1
            goto Lb4
        La6:
            java.lang.CharSequence r8 = r8.subSequence(r1, r2)     // Catch: java.lang.NumberFormatException -> Ld1
            java.lang.String r8 = r8.toString()     // Catch: java.lang.NumberFormatException -> Ld1
            r4 = 10
            int r8 = java.lang.Integer.parseInt(r8, r4)     // Catch: java.lang.NumberFormatException -> Ld1
        Lb4:
            r4 = 65535(0xffff, float:9.1834E-41)
            if (r8 <= r4) goto Lc8
            char[] r8 = java.lang.Character.toChars(r8)
            char r3 = r8[r3]
            r10.write(r3)
            char r8 = r8[r5]
            r10.write(r8)
            goto Lcb
        Lc8:
            r10.write(r8)
        Lcb:
            int r2 = r2 + 2
            int r2 = r2 - r1
            int r2 = r2 + r9
            int r2 = r2 + r0
            return r2
        Ld1:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.translate.NumericEntityUnescaper.a(java.lang.CharSequence, int, java.io.StringWriter):int");
    }
}
