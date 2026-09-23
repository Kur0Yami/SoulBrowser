package org.apache.commons.lang3;

import j$.util.Comparator;
import j$.util.DesugarCollections;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Arrays;
import java.util.Comparator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

/* loaded from: classes4.dex */
public class LocaleUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f22347a = 0;

    /* loaded from: classes4.dex */
    public static final class SyncAvoid {

        /* renamed from: a, reason: collision with root package name */
        public static final List f22348a;

        static {
            Locale[] availableLocales = Locale.getAvailableLocales();
            Comparator comparing = Comparator.CC.comparing(new b(3));
            if (availableLocales != null) {
                Arrays.sort(availableLocales, comparing);
            }
            List unmodifiableList = DesugarCollections.unmodifiableList(Arrays.asList(availableLocales));
            f22348a = unmodifiableList;
            DesugarCollections.unmodifiableSet(new LinkedHashSet(unmodifiableList));
        }
    }

    static {
        new ConcurrentHashMap();
        new ConcurrentHashMap();
    }
}
