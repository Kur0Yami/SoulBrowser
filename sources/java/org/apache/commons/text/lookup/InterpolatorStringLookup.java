package org.apache.commons.text.lookup;

import j$.util.Collection;
import j$.util.Objects;
import j$.util.stream.Collectors;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes4.dex */
final class InterpolatorStringLookup extends AbstractStringLookup {
    public static final /* synthetic */ int d = 0;
    public final StringLookup b;

    /* renamed from: c, reason: collision with root package name */
    public final Map f22480c;

    static {
        new InterpolatorStringLookup();
    }

    public InterpolatorStringLookup() {
        FunctionStringLookup functionStringLookup = StringLookupFactory.f22484a;
        Map map = Collections.EMPTY_MAP;
        Objects.requireNonNull(map);
        this.b = new FunctionStringLookup(new org.apache.commons.lang3.stream.a(1, map));
        Map map2 = (Map) Collection.EL.stream(map.entrySet()).collect(Collectors.toMap(new b(0), new b(3)));
        this.f22480c = map2;
        if (map2 != null) {
            map2.putAll(StringLookupFactory.DefaultStringLookupsHolder.b.f22486a);
        }
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        String str2;
        if (str != null) {
            int indexOf = str.indexOf(58);
            if (indexOf >= 0) {
                String substring = str.substring(0, indexOf);
                FunctionStringLookup functionStringLookup = StringLookupFactory.f22484a;
                String lowerCase = substring.toLowerCase(Locale.ROOT);
                int i = indexOf + 1;
                String substring2 = str.substring(i);
                StringLookup stringLookup = (StringLookup) this.f22480c.get(lowerCase);
                if (stringLookup != null) {
                    str2 = stringLookup.b(substring2);
                } else {
                    str2 = null;
                }
                if (str2 != null) {
                    return str2;
                }
                str = str.substring(i);
            }
            StringLookup stringLookup2 = this.b;
            if (stringLookup2 != null) {
                return ((AbstractStringLookup) stringLookup2).a(str);
            }
        }
        return null;
    }

    public final String toString() {
        return super.toString() + " [stringLookupMap=" + this.f22480c + ", defaultStringLookup=" + this.b + "]";
    }
}
