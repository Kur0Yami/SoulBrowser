package org.apache.commons.codec.language.bm;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.EnumMap;
import java.util.HashSet;

/* loaded from: classes4.dex */
public class PhoneticEngine {

    /* renamed from: org.apache.commons.codec.language.bm.PhoneticEngine$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f22252a;

        static {
            int[] iArr = new int[NameType.values().length];
            f22252a = iArr;
            try {
                iArr[2] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f22252a[0] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f22252a[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    /* loaded from: classes4.dex */
    public static final class PhonemeBuilder {
    }

    /* loaded from: classes4.dex */
    public static final class RulesApplication {
    }

    static {
        EnumMap enumMap = new EnumMap(NameType.class);
        enumMap.put((EnumMap) NameType.ASHKENAZI, (NameType) DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("bar", "ben", "da", "de", "van", "von"))));
        enumMap.put((EnumMap) NameType.SEPHARDIC, (NameType) DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("al", "el", "da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
        enumMap.put((EnumMap) NameType.GENERIC, (NameType) DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("da", "dal", "de", "del", "dela", "de la", "della", "des", "di", "do", "dos", "du", "van", "von"))));
    }
}
