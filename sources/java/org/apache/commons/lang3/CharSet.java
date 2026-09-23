package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.DesugarCollections;
import j$.util.stream.Stream;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* loaded from: classes4.dex */
public class CharSet implements Serializable {
    public static final Map f;

    /* renamed from: c, reason: collision with root package name */
    public final Set f22341c = DesugarCollections.synchronizedSet(new HashSet());

    static {
        CharSet charSet = new CharSet(null);
        CharSet charSet2 = new CharSet("a-zA-Z");
        CharSet charSet3 = new CharSet("a-z");
        CharSet charSet4 = new CharSet("A-Z");
        CharSet charSet5 = new CharSet("0-9");
        Map synchronizedMap = DesugarCollections.synchronizedMap(new HashMap());
        f = synchronizedMap;
        synchronizedMap.put(null, charSet);
        synchronizedMap.put(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, charSet);
        synchronizedMap.put("a-zA-Z", charSet2);
        synchronizedMap.put("A-Za-z", charSet2);
        synchronizedMap.put("a-z", charSet3);
        synchronizedMap.put("A-Z", charSet4);
        synchronizedMap.put("0-9", charSet5);
    }

    public CharSet(String... strArr) {
        Stream.CC.of(strArr).forEach(new d(0, this));
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CharSet)) {
            return false;
        }
        return this.f22341c.equals(((CharSet) obj).f22341c);
    }

    public final int hashCode() {
        return this.f22341c.hashCode() + 89;
    }

    public final String toString() {
        return this.f22341c.toString();
    }
}
