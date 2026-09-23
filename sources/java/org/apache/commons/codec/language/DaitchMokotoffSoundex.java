package org.apache.commons.codec.language;

import android.support.v4.media.a;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Scanner;
import org.apache.commons.codec.Resources;
import org.apache.commons.codec.StringEncoder;

/* loaded from: classes4.dex */
public class DaitchMokotoffSoundex implements StringEncoder {

    /* renamed from: org.apache.commons.codec.language.DaitchMokotoffSoundex$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static class AnonymousClass1 implements Comparator<Rule> {
        @Override // java.util.Comparator
        public final int compare(Rule rule, Rule rule2) {
            return rule2.f22245a.length() - rule.f22245a.length();
        }
    }

    /* loaded from: classes4.dex */
    public static final class Branch {

        /* renamed from: a, reason: collision with root package name */
        public String f22244a;

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Branch)) {
                return false;
            }
            return toString().equals(((Branch) obj).toString());
        }

        public final int hashCode() {
            return toString().hashCode();
        }

        public final String toString() {
            this.f22244a.getClass();
            return this.f22244a;
        }
    }

    /* loaded from: classes4.dex */
    public static final class Rule {

        /* renamed from: a, reason: collision with root package name */
        public final String f22245a;
        public final String[] b;

        /* renamed from: c, reason: collision with root package name */
        public final String[] f22246c;
        public final String[] d;

        public Rule(String str, String str2, String str3, String str4) {
            this.f22245a = str;
            this.b = str2.split("\\|");
            this.f22246c = str3.split("\\|");
            this.d = str4.split("\\|");
        }

        public final String toString() {
            return String.format("%s=(%s,%s,%s)", this.f22245a, Arrays.asList(this.b), Arrays.asList(this.f22246c), Arrays.asList(this.d));
        }
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Object, java.util.Comparator] */
    static {
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        Scanner scanner = new Scanner(Resources.a("org/apache/commons/codec/language/dmrules.txt"), "UTF-8");
        try {
            a(scanner, hashMap, hashMap2);
            scanner.close();
            Iterator it = hashMap.entrySet().iterator();
            while (it.hasNext()) {
                Collections.sort((List) ((Map.Entry) it.next()).getValue(), new Object());
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                try {
                    scanner.close();
                } catch (Throwable th3) {
                    th.addSuppressed(th3);
                }
                throw th2;
            }
        }
    }

    public static void a(Scanner scanner, HashMap hashMap, HashMap hashMap2) {
        String str;
        int i = 0;
        boolean z = false;
        while (scanner.hasNextLine()) {
            i++;
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
                    str = nextLine.substring(0, indexOf);
                } else {
                    str = nextLine;
                }
                String trim = str.trim();
                if (trim.length() == 0) {
                    continue;
                } else if (trim.contains("=")) {
                    String[] split2 = trim.split("=");
                    if (split2.length == 2) {
                        String str2 = split2[0];
                        String str3 = split2[1];
                        if (str2.length() == 1 && str3.length() == 1) {
                            hashMap2.put(Character.valueOf(str2.charAt(0)), Character.valueOf(str3.charAt(0)));
                        } else {
                            throw new IllegalArgumentException(a.l("Malformed folding statement - patterns are not single characters: ", nextLine, " in org/apache/commons/codec/language/dmrules.txt"));
                        }
                    } else {
                        throw new IllegalArgumentException("Malformed folding statement split into " + split2.length + " parts: " + nextLine + " in org/apache/commons/codec/language/dmrules.txt");
                    }
                } else {
                    String[] split3 = trim.split("\\s+");
                    if (split3.length == 4) {
                        try {
                            String b = b(split3[0]);
                            Rule rule = new Rule(b, b(split3[1]), b(split3[2]), b(split3[3]));
                            char charAt = b.charAt(0);
                            List list = (List) hashMap.get(Character.valueOf(charAt));
                            if (list == null) {
                                list = new ArrayList();
                                hashMap.put(Character.valueOf(charAt), list);
                            }
                            list.add(rule);
                        } catch (IllegalArgumentException e) {
                            throw new IllegalStateException(a.f(i, "Problem parsing line '", "' in org/apache/commons/codec/language/dmrules.txt"), e);
                        }
                    } else {
                        throw new IllegalArgumentException("Malformed rule statement split into " + split3.length + " parts: " + nextLine + " in org/apache/commons/codec/language/dmrules.txt");
                    }
                }
            }
        }
    }

    public static String b(String str) {
        if (str.startsWith("\"")) {
            str = str.substring(1);
        }
        if (str.endsWith("\"")) {
            return a.d(1, 0, str);
        }
        return str;
    }
}
