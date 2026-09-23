package org.apache.commons.lang3.time;

import j$.util.Map;
import j$.util.Objects;
import j$.util.function.BiConsumer$CC;
import java.util.Calendar;
import java.util.Locale;
import java.util.Map;
import java.util.function.BiConsumer;

/* loaded from: classes4.dex */
public class CalendarUtils {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f22404c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Calendar f22405a;
    public final Locale b;

    static {
        new CalendarUtils(Calendar.getInstance(), Locale.getDefault());
    }

    public CalendarUtils(Calendar calendar, Locale locale) {
        Objects.requireNonNull(calendar, "calendar");
        this.f22405a = calendar;
        Objects.requireNonNull(locale, "locale");
        this.b = locale;
    }

    public final String[] a(int i) {
        Map<String, Integer> displayNames = this.f22405a.getDisplayNames(2, i, this.b);
        if (displayNames == null) {
            return null;
        }
        final String[] strArr = new String[displayNames.size()];
        Map.EL.forEach(displayNames, new BiConsumer() { // from class: org.apache.commons.lang3.time.c
            @Override // java.util.function.BiConsumer
            public final void accept(Object obj, Object obj2) {
                int i2 = CalendarUtils.f22404c;
                int intValue = ((Integer) obj2).intValue();
                strArr[intValue] = (String) obj;
            }

            public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
                return BiConsumer$CC.$default$andThen(this, biConsumer);
            }
        });
        return strArr;
    }
}
