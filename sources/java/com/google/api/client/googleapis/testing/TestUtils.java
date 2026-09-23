package com.google.api.client.googleapis.testing;

import com.google.common.base.Splitter;
import com.google.common.collect.Lists;
import java.io.IOException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;

/* loaded from: classes3.dex */
public final class TestUtils {
    private static final String UTF_8 = "UTF-8";

    private TestUtils() {
    }

    public static Map<String, String> parseQuery(String str) {
        ArrayList a2;
        HashMap hashMap = new HashMap();
        Iterator it = Splitter.a(Typography.amp).c(str).iterator();
        while (it.hasNext()) {
            Iterable c2 = Splitter.a('=').c((String) it.next());
            if (c2 instanceof Collection) {
                a2 = new ArrayList((Collection) c2);
            } else {
                a2 = Lists.a(c2.iterator());
            }
            if (a2.size() == 2) {
                hashMap.put(URLDecoder.decode((String) a2.get(0), UTF_8), URLDecoder.decode((String) a2.get(1), UTF_8));
            } else {
                throw new IOException("Invalid Query String");
            }
        }
        return hashMap;
    }
}
