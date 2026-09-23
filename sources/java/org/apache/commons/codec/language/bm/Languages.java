package org.apache.commons.codec.language.bm;

import android.support.v4.media.a;
import j$.util.DesugarCollections;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Scanner;
import java.util.Set;
import org.apache.commons.codec.Resources;

/* loaded from: classes4.dex */
public class Languages {
    public static final EnumMap b = new EnumMap(NameType.class);

    /* renamed from: c, reason: collision with root package name */
    public static final LanguageSet f22248c;
    public static final LanguageSet d;

    /* renamed from: a, reason: collision with root package name */
    public final Set f22249a;

    /* renamed from: org.apache.commons.codec.language.bm.Languages$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static class AnonymousClass1 extends LanguageSet {
        public final String toString() {
            return "NO_LANGUAGES";
        }
    }

    /* renamed from: org.apache.commons.codec.language.bm.Languages$2, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static class AnonymousClass2 extends LanguageSet {
        public final String toString() {
            return "ANY_LANGUAGE";
        }
    }

    /* loaded from: classes4.dex */
    public static abstract class LanguageSet {
    }

    /* loaded from: classes4.dex */
    public static final class SomeLanguages extends LanguageSet {

        /* renamed from: a, reason: collision with root package name */
        public final Set f22250a;

        public SomeLanguages(HashSet hashSet) {
            this.f22250a = DesugarCollections.unmodifiableSet(hashSet);
        }

        public final String toString() {
            return "Languages(" + this.f22250a.toString() + ")";
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.codec.language.bm.Languages$LanguageSet, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.commons.codec.language.bm.Languages$LanguageSet, java.lang.Object] */
    static {
        for (NameType nameType : NameType.values()) {
            EnumMap enumMap = b;
            String l = a.l("org/apache/commons/codec/language/bm/", nameType.f22251c, "_languages.txt");
            HashSet hashSet = new HashSet();
            Scanner scanner = new Scanner(Resources.a(l), "UTF-8");
            while (true) {
                boolean z = false;
                while (scanner.hasNextLine()) {
                    try {
                        String trim = scanner.nextLine().trim();
                        if (z) {
                            if (trim.endsWith("*/")) {
                                break;
                            }
                        } else if (trim.startsWith("/*")) {
                            z = true;
                        } else if (trim.length() > 0) {
                            hashSet.add(trim);
                        }
                    } finally {
                    }
                }
            }
            Languages languages = new Languages(DesugarCollections.unmodifiableSet(hashSet));
            scanner.close();
            enumMap.put((EnumMap) nameType, (NameType) languages);
        }
        f22248c = new Object();
        d = new Object();
    }

    public Languages(Set set) {
        this.f22249a = set;
    }
}
