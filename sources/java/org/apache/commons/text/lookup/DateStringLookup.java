package org.apache.commons.text.lookup;

import java.util.Date;
import org.apache.commons.lang3.time.FastDateFormat;

/* loaded from: classes4.dex */
final class DateStringLookup extends AbstractStringLookup {
    public static final DateStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        FastDateFormat b2;
        long currentTimeMillis = System.currentTimeMillis();
        if (str != null) {
            try {
                b2 = FastDateFormat.b(str);
            } catch (Exception e) {
                throw IllegalArgumentExceptions.a(e, "Invalid date format: [%s]", str);
            }
        } else {
            b2 = null;
        }
        if (b2 == null) {
            b2 = FastDateFormat.a();
        }
        return b2.f22408c.c(new Date(currentTimeMillis));
    }
}
