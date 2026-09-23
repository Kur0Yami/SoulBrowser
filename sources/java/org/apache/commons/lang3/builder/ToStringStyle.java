package org.apache.commons.lang3.builder;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import kotlin.text.Typography;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
public abstract class ToStringStyle implements Serializable {
    public static final ToStringStyle u = new ToStringStyle();
    public static final androidx.emoji2.text.flatbuffer.b v;
    public boolean g;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f22369c = true;
    public boolean f = true;
    public boolean h = true;
    public String i = "[";
    public String j = "]";
    public final String k = "=";
    public String l = ",";
    public String m = "{";
    public String n = ",";
    public String o = "}";
    public final String p = "<null>";
    public final String q = "<size=";
    public final String r = ">";
    public final String s = "<";
    public final String t = ">";

    /* loaded from: classes4.dex */
    public static final class DefaultToStringStyle extends ToStringStyle {
    }

    /* loaded from: classes4.dex */
    public static final class JsonToStringStyle extends ToStringStyle {
        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void a(StringBuffer stringBuffer, String str, Object obj, Boolean bool) {
            boolean booleanValue;
            if (str != null) {
                if (bool == null) {
                    booleanValue = true;
                } else {
                    booleanValue = bool.booleanValue();
                }
                if (booleanValue) {
                    super.a(stringBuffer, str, obj, bool);
                    return;
                }
                throw new UnsupportedOperationException("FullDetail must be true when using JsonToStringStyle");
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void c(StringBuffer stringBuffer, char c2) {
            String valueOf = String.valueOf(c2);
            stringBuffer.append(Typography.quote);
            stringBuffer.append(StringEscapeUtils.a(valueOf));
            stringBuffer.append(Typography.quote);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void e(StringBuffer stringBuffer, String str, Object obj) {
            if (obj == null) {
                stringBuffer.append(A());
                return;
            }
            if (!(obj instanceof String) && !(obj instanceof Character)) {
                if (!(obj instanceof Number) && !(obj instanceof Boolean)) {
                    String obj2 = obj.toString();
                    if ((obj2.startsWith(this.i) && obj2.endsWith(this.j)) || (obj2.startsWith(this.m) && obj2.endsWith(this.o))) {
                        stringBuffer.append(obj);
                        return;
                    } else {
                        e(stringBuffer, str, obj2);
                        return;
                    }
                }
                stringBuffer.append(obj);
                return;
            }
            String obj3 = obj.toString();
            stringBuffer.append(Typography.quote);
            stringBuffer.append(StringEscapeUtils.a(obj3));
            stringBuffer.append(Typography.quote);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void f(StringBuffer stringBuffer, String str, Collection collection) {
            if (collection != null && !collection.isEmpty()) {
                stringBuffer.append(this.m);
                Iterator it = collection.iterator();
                int i = 0;
                while (it.hasNext()) {
                    d(stringBuffer, str, i, it.next());
                    i++;
                }
                stringBuffer.append(this.o);
                return;
            }
            stringBuffer.append(collection);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void p(StringBuffer stringBuffer, Map map) {
            if (map != null && !map.isEmpty()) {
                stringBuffer.append(this.i);
                boolean z = true;
                for (Map.Entry entry : map.entrySet()) {
                    String objects = Objects.toString(entry.getKey(), null);
                    if (objects != null) {
                        if (z) {
                            z = false;
                        } else {
                            stringBuffer.append(z());
                        }
                        q(objects, stringBuffer);
                        Object value = entry.getValue();
                        if (value == null) {
                            stringBuffer.append(A());
                        } else {
                            r(stringBuffer, objects, value, true);
                        }
                    }
                }
                stringBuffer.append(this.j);
                return;
            }
            stringBuffer.append(map);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void q(String str, StringBuffer stringBuffer) {
            if (str != null) {
                super.q("\"" + StringEscapeUtils.a(str) + "\"", stringBuffer);
                return;
            }
            throw new UnsupportedOperationException("Field names are mandatory when using JsonToStringStyle");
        }
    }

    /* loaded from: classes4.dex */
    public static final class MultiLineToStringStyle extends ToStringStyle {
    }

    /* loaded from: classes4.dex */
    public static final class NoClassNameToStringStyle extends ToStringStyle {
    }

    /* loaded from: classes4.dex */
    public static final class NoFieldNameToStringStyle extends ToStringStyle {
    }

    /* loaded from: classes4.dex */
    public static final class ShortPrefixToStringStyle extends ToStringStyle {
    }

    /* loaded from: classes4.dex */
    public static final class SimpleToStringStyle extends ToStringStyle {
    }

    static {
        Objects.toString(System.lineSeparator() + "  ", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        Objects.toString(System.lineSeparator() + "]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        v = new androidx.emoji2.text.flatbuffer.b(new a(1), 2);
    }

    public static void O(Object obj) {
        if (obj != null) {
            androidx.emoji2.text.flatbuffer.b bVar = v;
            Map map = (Map) bVar.get();
            map.remove(obj);
            if (map.isEmpty()) {
                bVar.remove();
            }
        }
    }

    public String A() {
        return this.p;
    }

    public String B(Class cls) {
        HashMap hashMap = ClassUtils.f22343a;
        String name = cls.getName();
        if (StringUtils.c(name)) {
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        if (name.startsWith("[")) {
            while (name.charAt(0) == '[') {
                name = name.substring(1);
                sb.append("[]");
            }
            if (name.charAt(0) == 'L' && name.charAt(name.length() - 1) == ';') {
                name = android.support.v4.media.a.d(1, 1, name);
            }
            Map map = ClassUtils.e;
            if (map.containsKey(name)) {
                name = (String) map.get(name);
            }
        }
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf != -1) {
            i = lastIndexOf + 1;
        }
        int indexOf = name.indexOf(36, i);
        String substring = name.substring(lastIndexOf + 1);
        if (indexOf != -1) {
            substring = substring.replace(Typography.dollar, '.');
        }
        return substring + ((Object) sb);
    }

    public String C() {
        return this.r;
    }

    public String D() {
        return this.q;
    }

    public String E() {
        return this.t;
    }

    public String F() {
        return this.s;
    }

    public boolean G() {
        return true;
    }

    public boolean H() {
        return true;
    }

    public boolean I() {
        return false;
    }

    public boolean J() {
        return this.f;
    }

    public boolean K() {
        return this.f22369c;
    }

    public boolean L() {
        return this.h;
    }

    public boolean M() {
        return this.g;
    }

    public void N(StringBuffer stringBuffer, Object obj) {
        stringBuffer.append(v());
        int length = Array.getLength(obj);
        for (int i = 0; i < length; i++) {
            d(stringBuffer, null, i, Array.get(obj, i));
        }
        stringBuffer.append(t());
    }

    public void a(StringBuffer stringBuffer, String str, Object obj, Boolean bool) {
        boolean booleanValue;
        q(str, stringBuffer);
        if (obj == null) {
            stringBuffer.append(A());
        } else {
            if (bool == null) {
                booleanValue = H();
            } else {
                booleanValue = bool.booleanValue();
            }
            r(stringBuffer, str, obj, booleanValue);
        }
        stringBuffer.append(z());
    }

    public final void b(StringBuffer stringBuffer, Object obj) {
        if (J() && obj != null) {
            ((Map) v.get()).put(obj, null);
            if (M()) {
                stringBuffer.append(B(obj.getClass()));
            } else {
                stringBuffer.append(obj.getClass().getName());
            }
        }
    }

    public void c(StringBuffer stringBuffer, char c2) {
        stringBuffer.append(c2);
    }

    public final void d(StringBuffer stringBuffer, String str, int i, Object obj) {
        if (i > 0) {
            stringBuffer.append(u());
        }
        if (obj == null) {
            stringBuffer.append(A());
        } else {
            r(stringBuffer, str, obj, G());
        }
    }

    public void e(StringBuffer stringBuffer, String str, Object obj) {
        stringBuffer.append(obj);
    }

    public void f(StringBuffer stringBuffer, String str, Collection collection) {
        stringBuffer.append(collection);
    }

    public void g(StringBuffer stringBuffer, String str, byte[] bArr) {
        stringBuffer.append(v());
        for (int i = 0; i < bArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append((int) bArr[i]);
        }
        stringBuffer.append(t());
    }

    public void h(StringBuffer stringBuffer, String str, char[] cArr) {
        stringBuffer.append(v());
        for (int i = 0; i < cArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            c(stringBuffer, cArr[i]);
        }
        stringBuffer.append(t());
    }

    public void i(StringBuffer stringBuffer, String str, double[] dArr) {
        stringBuffer.append(v());
        for (int i = 0; i < dArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append(dArr[i]);
        }
        stringBuffer.append(t());
    }

    public void j(StringBuffer stringBuffer, String str, float[] fArr) {
        stringBuffer.append(v());
        for (int i = 0; i < fArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append(fArr[i]);
        }
        stringBuffer.append(t());
    }

    public void k(StringBuffer stringBuffer, String str, int[] iArr) {
        stringBuffer.append(v());
        for (int i = 0; i < iArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append(iArr[i]);
        }
        stringBuffer.append(t());
    }

    public void l(StringBuffer stringBuffer, String str, long[] jArr) {
        stringBuffer.append(v());
        for (int i = 0; i < jArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append(jArr[i]);
        }
        stringBuffer.append(t());
    }

    public void m(StringBuffer stringBuffer, String str, Object[] objArr) {
        stringBuffer.append(v());
        for (int i = 0; i < objArr.length; i++) {
            d(stringBuffer, str, i, objArr[i]);
        }
        stringBuffer.append(t());
    }

    public void n(StringBuffer stringBuffer, String str, short[] sArr) {
        stringBuffer.append(v());
        for (int i = 0; i < sArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append((int) sArr[i]);
        }
        stringBuffer.append(t());
    }

    public void o(StringBuffer stringBuffer, String str, boolean[] zArr) {
        stringBuffer.append(v());
        for (int i = 0; i < zArr.length; i++) {
            if (i > 0) {
                stringBuffer.append(u());
            }
            stringBuffer.append(zArr[i]);
        }
        stringBuffer.append(t());
    }

    public void p(StringBuffer stringBuffer, Map map) {
        stringBuffer.append(map);
    }

    public void q(String str, StringBuffer stringBuffer) {
        if (K() && str != null) {
            stringBuffer.append(str);
            stringBuffer.append(y());
        }
    }

    public final void r(StringBuffer stringBuffer, String str, Object obj, boolean z) {
        androidx.emoji2.text.flatbuffer.b bVar = v;
        boolean z2 = true;
        if (((Map) bVar.get()).containsKey(obj) && !(obj instanceof Number) && !(obj instanceof Boolean) && !(obj instanceof Character)) {
            Objects.requireNonNull(obj, "object");
            String name = obj.getClass().getName();
            String hexString = Integer.toHexString(System.identityHashCode(obj));
            stringBuffer.ensureCapacity(hexString.length() + androidx.work.impl.workers.a.d(stringBuffer.length(), 1, name));
            stringBuffer.append(name);
            stringBuffer.append('@');
            stringBuffer.append(hexString);
            return;
        }
        if (obj != null) {
            ((Map) bVar.get()).put(obj, null);
        }
        try {
            if (obj instanceof Collection) {
                if (z) {
                    f(stringBuffer, str, (Collection) obj);
                } else {
                    s(stringBuffer, ((Collection) obj).size());
                }
            } else if (obj instanceof Map) {
                if (z) {
                    p(stringBuffer, (Map) obj);
                } else {
                    s(stringBuffer, ((Map) obj).size());
                }
            } else if (obj instanceof long[]) {
                if (z) {
                    l(stringBuffer, str, (long[]) obj);
                } else {
                    s(stringBuffer, ((long[]) obj).length);
                }
            } else if (obj instanceof int[]) {
                if (z) {
                    k(stringBuffer, str, (int[]) obj);
                } else {
                    s(stringBuffer, ((int[]) obj).length);
                }
            } else if (obj instanceof short[]) {
                if (z) {
                    n(stringBuffer, str, (short[]) obj);
                } else {
                    s(stringBuffer, ((short[]) obj).length);
                }
            } else if (obj instanceof byte[]) {
                if (z) {
                    g(stringBuffer, str, (byte[]) obj);
                } else {
                    s(stringBuffer, ((byte[]) obj).length);
                }
            } else if (obj instanceof char[]) {
                if (z) {
                    h(stringBuffer, str, (char[]) obj);
                } else {
                    s(stringBuffer, ((char[]) obj).length);
                }
            } else if (obj instanceof double[]) {
                if (z) {
                    i(stringBuffer, str, (double[]) obj);
                } else {
                    s(stringBuffer, ((double[]) obj).length);
                }
            } else if (obj instanceof float[]) {
                if (z) {
                    j(stringBuffer, str, (float[]) obj);
                } else {
                    s(stringBuffer, ((float[]) obj).length);
                }
            } else if (obj instanceof boolean[]) {
                if (z) {
                    o(stringBuffer, str, (boolean[]) obj);
                } else {
                    s(stringBuffer, ((boolean[]) obj).length);
                }
            } else {
                if (obj == null || !obj.getClass().isArray()) {
                    z2 = false;
                }
                if (z2) {
                    if (z) {
                        m(stringBuffer, str, (Object[]) obj);
                    } else {
                        s(stringBuffer, ((Object[]) obj).length);
                    }
                } else if (z) {
                    e(stringBuffer, str, obj);
                } else {
                    stringBuffer.append(F());
                    stringBuffer.append(B(obj.getClass()));
                    stringBuffer.append(E());
                }
            }
            O(obj);
        } catch (Throwable th) {
            O(obj);
            throw th;
        }
    }

    public final void s(StringBuffer stringBuffer, int i) {
        stringBuffer.append(D());
        stringBuffer.append(i);
        stringBuffer.append(C());
    }

    public String t() {
        return this.o;
    }

    public String u() {
        return this.n;
    }

    public String v() {
        return this.m;
    }

    public String w() {
        return this.j;
    }

    public String x() {
        return this.i;
    }

    public String y() {
        return this.k;
    }

    public String z() {
        return this.l;
    }
}
