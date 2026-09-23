package org.apache.commons.codec.language.bm;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Scanner;
import java.util.regex.Pattern;
import org.apache.commons.codec.Resources;
import org.apache.commons.codec.language.bm.Languages;

/* loaded from: classes4.dex */
public class Rule {
    public static final RPattern d = new Object();
    public static final EnumMap e = new EnumMap(NameType.class);

    /* renamed from: a, reason: collision with root package name */
    public final RPattern f22253a;
    public final PhonemeExpr b;

    /* renamed from: c, reason: collision with root package name */
    public final RPattern f22254c;

    /* renamed from: org.apache.commons.codec.language.bm.Rule$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static class AnonymousClass1 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$10, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass10 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$3, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass3 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$4, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass4 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$5, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass5 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$6, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass6 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$7, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass7 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$8, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass8 implements RPattern {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.apache.commons.codec.language.bm.Rule$9, reason: invalid class name */
    /* loaded from: classes4.dex */
    public final class AnonymousClass9 implements RPattern {
    }

    /* loaded from: classes4.dex */
    public static final class Phoneme implements PhonemeExpr {

        /* renamed from: a, reason: collision with root package name */
        public final StringBuilder f22255a;
        public final Languages.LanguageSet b;

        /* renamed from: org.apache.commons.codec.language.bm.Rule$Phoneme$1, reason: invalid class name */
        /* loaded from: classes4.dex */
        public static class AnonymousClass1 implements Comparator<Phoneme> {
            @Override // java.util.Comparator
            public final int compare(Phoneme phoneme, Phoneme phoneme2) {
                Phoneme phoneme3 = phoneme;
                Phoneme phoneme4 = phoneme2;
                int i = 0;
                while (true) {
                    StringBuilder sb = phoneme3.f22255a;
                    if (i < sb.length()) {
                        if (i >= phoneme4.f22255a.length()) {
                            return 1;
                        }
                        int charAt = sb.charAt(i) - phoneme4.f22255a.charAt(i);
                        if (charAt != 0) {
                            return charAt;
                        }
                        i++;
                    } else {
                        if (sb.length() >= phoneme4.f22255a.length()) {
                            return 0;
                        }
                        return -1;
                    }
                }
            }
        }

        public Phoneme(CharSequence charSequence, Languages.LanguageSet languageSet) {
            this.f22255a = new StringBuilder(charSequence);
            this.b = languageSet;
        }

        public final String toString() {
            return this.f22255a.toString() + "[" + this.b + "]";
        }
    }

    /* loaded from: classes4.dex */
    public interface PhonemeExpr {
    }

    /* loaded from: classes4.dex */
    public static final class PhonemeList implements PhonemeExpr {
    }

    /* loaded from: classes4.dex */
    public interface RPattern {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    static {
        for (NameType nameType : NameType.values()) {
            EnumMap enumMap = new EnumMap(RuleType.class);
            for (RuleType ruleType : RuleType.values()) {
                HashMap hashMap = new HashMap();
                for (String str : ((Languages) Languages.b.get(nameType)).f22249a) {
                    try {
                        Scanner scanner = new Scanner(Resources.a(a(nameType, ruleType, str)), "UTF-8");
                        try {
                            hashMap.put(str, d(scanner, a(nameType, ruleType, str)));
                            scanner.close();
                        } finally {
                        }
                    } catch (IllegalStateException e2) {
                        throw new IllegalStateException("Problem processing ".concat(a(nameType, ruleType, str)), e2);
                    }
                }
                if (!ruleType.equals(RuleType.RULES)) {
                    Scanner scanner2 = new Scanner(Resources.a(a(nameType, ruleType, "common")), "UTF-8");
                    try {
                        hashMap.put("common", d(scanner2, a(nameType, ruleType, "common")));
                        scanner2.close();
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            try {
                                scanner2.close();
                            } catch (Throwable th3) {
                                th.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    }
                }
                enumMap.put((EnumMap) ruleType, (RuleType) DesugarCollections.unmodifiableMap(hashMap));
            }
            e.put((EnumMap) nameType, (NameType) DesugarCollections.unmodifiableMap(enumMap));
        }
    }

    public Rule(String str, String str2, String str3, PhonemeExpr phonemeExpr) {
        this.f22253a = e(str2 + "$");
        StringBuilder sb = new StringBuilder("^");
        sb.append(str3);
        this.f22254c = e(sb.toString());
        this.b = phonemeExpr;
    }

    public static String a(NameType nameType, RuleType ruleType, String str) {
        return a.p(androidx.work.impl.workers.a.u("org/apache/commons/codec/language/bm/", nameType.f22251c, "_", ruleType.f22256c, "_"), str, ".txt");
    }

    public static Phoneme b(String str) {
        Languages.LanguageSet someLanguages;
        int indexOf = str.indexOf("[");
        if (indexOf >= 0) {
            if (str.endsWith("]")) {
                String substring = str.substring(0, indexOf);
                HashSet hashSet = new HashSet(Arrays.asList(a.d(1, indexOf + 1, str).split("[+]")));
                if (hashSet.isEmpty()) {
                    someLanguages = Languages.f22248c;
                } else {
                    someLanguages = new Languages.SomeLanguages(hashSet);
                }
                return new Phoneme(substring, someLanguages);
            }
            throw new IllegalArgumentException("Phoneme expression contains a '[' but does not end in ']'");
        }
        return new Phoneme(str, Languages.d);
    }

    /* JADX WARN: Type inference failed for: r5v5, types: [org.apache.commons.codec.language.bm.Rule$PhonemeExpr, java.lang.Object] */
    public static PhonemeExpr c(String str) {
        if (str.startsWith("(")) {
            if (str.endsWith(")")) {
                ArrayList arrayList = new ArrayList();
                String d2 = a.d(1, 1, str);
                for (String str2 : d2.split("[|]")) {
                    arrayList.add(b(str2));
                }
                if (d2.startsWith("|") || d2.endsWith("|")) {
                    arrayList.add(new Phoneme(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, Languages.d));
                }
                return new Object();
            }
            throw new IllegalArgumentException("Phoneme starts with '(' so must end with ')'");
        }
        return b(str);
    }

    public static HashMap d(Scanner scanner, String str) {
        String str2;
        HashMap hashMap = new HashMap();
        int i = 0;
        boolean z = false;
        while (scanner.hasNextLine()) {
            int i2 = i + 1;
            String nextLine = scanner.nextLine();
            if (z) {
                if (nextLine.endsWith("*/")) {
                    z = false;
                }
            } else if (nextLine.startsWith("/*")) {
                z = true;
            } else {
                int indexOf = nextLine.indexOf("//");
                if (indexOf >= 0) {
                    str2 = nextLine.substring(0, indexOf);
                } else {
                    str2 = nextLine;
                }
                String trim = str2.trim();
                if (trim.length() == 0) {
                    continue;
                } else if (trim.startsWith("#include")) {
                    String trim2 = trim.substring(8).trim();
                    if (!trim2.contains(" ")) {
                        Scanner scanner2 = new Scanner(Resources.a(a.l("org/apache/commons/codec/language/bm/", trim2, ".txt")), "UTF-8");
                        try {
                            hashMap.putAll(d(scanner2, str + "->" + trim2));
                            scanner2.close();
                        } finally {
                        }
                    } else {
                        throw new IllegalArgumentException(a.m("Malformed import statement '", nextLine, "' in ", str));
                    }
                } else {
                    String[] split2 = trim.split("\\s+");
                    if (split2.length == 4) {
                        try {
                            String f = f(split2[0]);
                            String f2 = f(split2[1]);
                            String f3 = f(split2[2]);
                            Rule rule = new Rule(f, f2, f3, c(f(split2[3])), i2, str, f, f2, f3) { // from class: org.apache.commons.codec.language.bm.Rule.2
                                public final int f;
                                public final String g;
                                public final /* synthetic */ String h;
                                public final /* synthetic */ String i;
                                public final /* synthetic */ String j;

                                {
                                    this.h = f;
                                    this.i = f2;
                                    this.j = f3;
                                    this.f = i2;
                                    this.g = str;
                                }

                                public final String toString() {
                                    StringBuilder sb = new StringBuilder("Rule{line=");
                                    sb.append(this.f);
                                    sb.append(", loc='");
                                    sb.append(this.g);
                                    sb.append("', pat='");
                                    sb.append(this.h);
                                    sb.append("', lcon='");
                                    sb.append(this.i);
                                    sb.append("', rcon='");
                                    return a.p(sb, this.j, "'}");
                                }
                            };
                            String substring = f.substring(0, 1);
                            List list = (List) hashMap.get(substring);
                            if (list == null) {
                                list = new ArrayList();
                                hashMap.put(substring, list);
                            }
                            list.add(rule);
                        } catch (IllegalArgumentException e2) {
                            throw new IllegalStateException("Problem parsing line '" + i2 + "' in " + str, e2);
                        }
                    } else {
                        throw new IllegalArgumentException("Malformed rule statement split into " + split2.length + " parts: " + nextLine + " in " + str);
                    }
                }
            }
            i = i2;
        }
        return hashMap;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v2, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v3, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v5, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v6, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v9, types: [org.apache.commons.codec.language.bm.Rule$RPattern, java.lang.Object] */
    public static RPattern e(String str) {
        boolean startsWith = str.startsWith("^");
        boolean endsWith = str.endsWith("$");
        int length = str.length();
        if (endsWith) {
            length--;
        }
        String substring = str.substring(startsWith ? 1 : 0, length);
        if (!substring.contains("[")) {
            if (startsWith && endsWith) {
                if (substring.length() == 0) {
                    return new Object();
                }
                return new Object();
            }
            if ((startsWith || endsWith) && substring.length() == 0) {
                return d;
            }
            if (startsWith) {
                return new Object();
            }
            if (endsWith) {
                return new Object();
            }
        } else {
            boolean startsWith2 = substring.startsWith("[");
            boolean endsWith2 = substring.endsWith("]");
            if (startsWith2 && endsWith2) {
                String d2 = a.d(1, 1, substring);
                if (!d2.contains("[")) {
                    if (d2.startsWith("^")) {
                        d2.substring(1);
                    }
                    if (startsWith && endsWith) {
                        return new Object();
                    }
                    if (startsWith) {
                        return new Object();
                    }
                    if (endsWith) {
                        return new Object();
                    }
                }
            }
        }
        ?? obj = new Object();
        Pattern.compile(str);
        return obj;
    }

    public static String f(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        if (str.endsWith("\"")) {
            return a.d(1, 0, str);
        }
        return str;
    }
}
