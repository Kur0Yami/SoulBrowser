package org.apache.commons.lang3.time;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import j$.util.concurrent.ConcurrentMap;
import j$.util.function.Function$CC;
import java.text.Format;
import java.util.Arrays;
import java.util.Locale;
import java.util.TimeZone;
import java.util.function.Function;
import org.apache.commons.lang3.LocaleUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public abstract class AbstractFormatCache<F extends Format> {
    public static final ConcurrentHashMap b = new ConcurrentHashMap(7);

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f22402a = new ConcurrentHashMap(7);

    /* loaded from: classes4.dex */
    public static final class ArrayKey {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f22403a;
        public final int b;

        public ArrayKey(Object... objArr) {
            this.f22403a = objArr;
            this.b = Objects.hash(objArr);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || ArrayKey.class != obj.getClass()) {
                return false;
            }
            return Arrays.deepEquals(this.f22403a, ((ArrayKey) obj).f22403a);
        }

        public final int hashCode() {
            return this.b;
        }
    }

    public abstract FastDateFormat a(String str, TimeZone timeZone, Locale locale);

    public final Format b(final String str, final TimeZone timeZone, final Locale locale) {
        Objects.requireNonNull(str, "pattern");
        boolean z = TimeZones.f22446a;
        if (timeZone == null) {
            timeZone = TimeZone.getDefault();
        }
        int i = LocaleUtils.f22347a;
        if (locale == null) {
            locale = Locale.getDefault();
        }
        return (Format) ConcurrentMap.EL.computeIfAbsent(this.f22402a, new ArrayKey(str, timeZone, locale), new Function() { // from class: org.apache.commons.lang3.time.a
            @Override // java.util.function.Function
            /* renamed from: andThen */
            public /* synthetic */ Function mo17andThen(Function function) {
                return Function$CC.$default$andThen(this, function);
            }

            @Override // java.util.function.Function
            public final Object apply(Object obj) {
                ConcurrentHashMap concurrentHashMap = AbstractFormatCache.b;
                return AbstractFormatCache.this.a(str, timeZone, locale);
            }

            @Override // java.util.function.Function
            public /* synthetic */ Function compose(Function function) {
                return Function$CC.$default$compose(this, function);
            }
        });
    }
}
