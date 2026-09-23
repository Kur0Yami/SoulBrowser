package org.apache.commons.codec.language.bm;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.List;

/* loaded from: classes4.dex */
public class Lang {
    public static final EnumMap b = new EnumMap(NameType.class);

    /* renamed from: a, reason: collision with root package name */
    public final List f22247a;

    /* loaded from: classes4.dex */
    public static final class LangRule {
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c9, code lost:
    
        throw new java.lang.IllegalArgumentException("Malformed line '" + r11 + "' in language resource '" + r6 + "'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00ca, code lost:
    
        r9.close();
        r5.put((java.util.EnumMap) r4, (org.apache.commons.codec.language.bm.NameType) new org.apache.commons.codec.language.bm.Lang(r8, r7));
        r3 = r3 + 1;
     */
    static {
        /*
            java.util.EnumMap r0 = new java.util.EnumMap
            java.lang.Class<org.apache.commons.codec.language.bm.NameType> r1 = org.apache.commons.codec.language.bm.NameType.class
            r0.<init>(r1)
            org.apache.commons.codec.language.bm.Lang.b = r0
            org.apache.commons.codec.language.bm.NameType[] r0 = org.apache.commons.codec.language.bm.NameType.values()
            int r1 = r0.length
            r2 = 0
            r3 = r2
        L10:
            if (r3 >= r1) goto Le4
            r4 = r0[r3]
            java.util.EnumMap r5 = org.apache.commons.codec.language.bm.Lang.b
            java.lang.String r6 = r4.f22251c
            java.lang.String r7 = "org/apache/commons/codec/language/bm/"
            java.lang.String r8 = "_lang.txt"
            java.lang.String r6 = android.support.v4.media.a.l(r7, r6, r8)
            java.util.EnumMap r7 = org.apache.commons.codec.language.bm.Languages.b
            java.lang.Object r7 = r7.get(r4)
            org.apache.commons.codec.language.bm.Languages r7 = (org.apache.commons.codec.language.bm.Languages) r7
            java.util.ArrayList r8 = new java.util.ArrayList
            r8.<init>()
            java.util.Scanner r9 = new java.util.Scanner
            java.io.InputStream r10 = org.apache.commons.codec.Resources.a(r6)
            java.lang.String r11 = "UTF-8"
            r9.<init>(r10, r11)
        L38:
            r10 = r2
        L39:
            boolean r11 = r9.hasNextLine()     // Catch: java.lang.Throwable -> L4e
            if (r11 == 0) goto Lca
            java.lang.String r11 = r9.nextLine()     // Catch: java.lang.Throwable -> L4e
            if (r10 == 0) goto L51
        */
        //  java.lang.String r12 = "*/"
        /*
            boolean r11 = r11.endsWith(r12)     // Catch: java.lang.Throwable -> L4e
            if (r11 == 0) goto L39
            goto L38
        L4e:
            r0 = move-exception
            goto Ld9
        L51:
            java.lang.String r12 = "/*"
            boolean r12 = r11.startsWith(r12)     // Catch: java.lang.Throwable -> L4e
            r13 = 1
            if (r12 == 0) goto L5c
            r10 = r13
            goto L39
        L5c:
            java.lang.String r12 = "//"
            int r12 = r11.indexOf(r12)     // Catch: java.lang.Throwable -> L4e
            if (r12 < 0) goto L69
            java.lang.String r12 = r11.substring(r2, r12)     // Catch: java.lang.Throwable -> L4e
            goto L6a
        L69:
            r12 = r11
        L6a:
            java.lang.String r12 = r12.trim()     // Catch: java.lang.Throwable -> L4e
            int r14 = r12.length()     // Catch: java.lang.Throwable -> L4e
            if (r14 != 0) goto L75
            goto L39
        L75:
            java.lang.String r14 = "\\s+"
            java.lang.String[] r12 = r12.split(r14)     // Catch: java.lang.Throwable -> L4e
            int r14 = r12.length     // Catch: java.lang.Throwable -> L4e
            r15 = 3
            if (r14 != r15) goto La6
            r11 = r12[r2]     // Catch: java.lang.Throwable -> L4e
            java.util.regex.Pattern.compile(r11)     // Catch: java.lang.Throwable -> L4e
            r11 = r12[r13]     // Catch: java.lang.Throwable -> L4e
            java.lang.String r13 = "\\+"
            java.lang.String[] r11 = r11.split(r13)     // Catch: java.lang.Throwable -> L4e
            r13 = 2
            r12 = r12[r13]     // Catch: java.lang.Throwable -> L4e
            java.lang.String r13 = "true"
            r12.equals(r13)     // Catch: java.lang.Throwable -> L4e
            org.apache.commons.codec.language.bm.Lang$LangRule r12 = new org.apache.commons.codec.language.bm.Lang$LangRule     // Catch: java.lang.Throwable -> L4e
            java.util.HashSet r13 = new java.util.HashSet     // Catch: java.lang.Throwable -> L4e
            java.util.List r11 = java.util.Arrays.asList(r11)     // Catch: java.lang.Throwable -> L4e
            r13.<init>(r11)     // Catch: java.lang.Throwable -> L4e
            r12.<init>()     // Catch: java.lang.Throwable -> L4e
            r8.add(r12)     // Catch: java.lang.Throwable -> L4e
            goto L39
        La6:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException     // Catch: java.lang.Throwable -> L4e
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L4e
            r1.<init>()     // Catch: java.lang.Throwable -> L4e
            java.lang.String r2 = "Malformed line '"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4e
            r1.append(r11)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r2 = "' in language resource '"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4e
            r1.append(r6)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r2 = "'"
            r1.append(r2)     // Catch: java.lang.Throwable -> L4e
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L4e
            r0.<init>(r1)     // Catch: java.lang.Throwable -> L4e
            throw r0     // Catch: java.lang.Throwable -> L4e
        Lca:
            r9.close()
            org.apache.commons.codec.language.bm.Lang r6 = new org.apache.commons.codec.language.bm.Lang
            r6.<init>(r8, r7)
            r5.put(r4, r6)
            int r3 = r3 + 1
            goto L10
        Ld9:
            throw r0     // Catch: java.lang.Throwable -> Lda
        Lda:
            r1 = move-exception
            r9.close()     // Catch: java.lang.Throwable -> Ldf
            goto Le3
        Ldf:
            r2 = move-exception
            r0.addSuppressed(r2)
        Le3:
            throw r1
        Le4:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.codec.language.bm.Lang.<clinit>():void");
    }

    public Lang(ArrayList arrayList, Languages languages) {
        this.f22247a = DesugarCollections.unmodifiableList(arrayList);
    }
}
