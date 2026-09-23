package org.apache.commons.text.lookup;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.Properties;
import java.util.function.Supplier;

/* loaded from: classes4.dex */
public final class StringLookupFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final FunctionStringLookup f22484a = new FunctionStringLookup(new b(1));
    public static final FunctionStringLookup b = new FunctionStringLookup(new b(2));

    /* renamed from: c, reason: collision with root package name */
    public static final FunctionStringLookup f22485c = new FunctionStringLookup(new b(5));
    public static final FunctionStringLookup d = new FunctionStringLookup(new b(6));

    /* loaded from: classes4.dex */
    public static final class Builder implements Supplier<StringLookupFactory> {
        /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.text.lookup.StringLookupFactory, java.lang.Object] */
        @Override // java.util.function.Supplier
        public final StringLookupFactory get() {
            return new Object();
        }
    }

    /* loaded from: classes4.dex */
    public static final class DefaultStringLookupsHolder {
        public static final DefaultStringLookupsHolder b = new DefaultStringLookupsHolder(System.getProperties());

        /* renamed from: a, reason: collision with root package name */
        public final Map f22486a;

        public DefaultStringLookupsHolder(Properties properties) {
            HashMap hashMap;
            if (properties.containsKey("org.apache.commons.text.lookup.StringLookupFactory.defaultStringLookups")) {
                String property = properties.getProperty("org.apache.commons.text.lookup.StringLookupFactory.defaultStringLookups");
                hashMap = new HashMap();
                try {
                    for (String str : property.split("[\\s,]+")) {
                        if (!str.isEmpty()) {
                            a(DefaultStringLookup.valueOf(str.toUpperCase()), hashMap);
                        }
                    }
                } catch (IllegalArgumentException e) {
                    throw new IllegalArgumentException(android.support.v4.media.a.C("Invalid default string lookups definition: ", property), e);
                }
            } else {
                hashMap = new HashMap();
                a(DefaultStringLookup.BASE64_DECODER, hashMap);
                a(DefaultStringLookup.BASE64_ENCODER, hashMap);
                a(DefaultStringLookup.CONST, hashMap);
                a(DefaultStringLookup.DATE, hashMap);
                a(DefaultStringLookup.ENVIRONMENT, hashMap);
                a(DefaultStringLookup.FILE, hashMap);
                a(DefaultStringLookup.JAVA, hashMap);
                a(DefaultStringLookup.LOCAL_HOST, hashMap);
                a(DefaultStringLookup.LOOPBACK_ADDRESS, hashMap);
                a(DefaultStringLookup.PROPERTIES, hashMap);
                a(DefaultStringLookup.RESOURCE_BUNDLE, hashMap);
                a(DefaultStringLookup.SYSTEM_PROPERTIES, hashMap);
                a(DefaultStringLookup.URL_DECODER, hashMap);
                a(DefaultStringLookup.URL_ENCODER, hashMap);
                a(DefaultStringLookup.XML, hashMap);
                a(DefaultStringLookup.XML_DECODER, hashMap);
                a(DefaultStringLookup.XML_ENCODER, hashMap);
            }
            this.f22486a = DesugarCollections.unmodifiableMap(hashMap);
        }

        public static void a(DefaultStringLookup defaultStringLookup, HashMap hashMap) {
            String str = defaultStringLookup.f22477c;
            Locale locale = Locale.ROOT;
            String lowerCase = str.toLowerCase(locale);
            StringLookup stringLookup = defaultStringLookup.f;
            hashMap.put(lowerCase, stringLookup);
            if (DefaultStringLookup.BASE64_DECODER.equals(defaultStringLookup)) {
                hashMap.put("base64".toLowerCase(locale), stringLookup);
            }
        }
    }
}
