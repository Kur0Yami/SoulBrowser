package org.apache.commons.text;

import android.support.v4.media.a;
import j$.util.Objects;
import j$.util.function.Function$CC;
import java.util.Collections;
import java.util.Map;
import java.util.function.Function;
import org.apache.commons.text.lookup.StringLookup;

@Deprecated
/* loaded from: classes4.dex */
public abstract class StrLookup<V> implements StringLookup {

    /* loaded from: classes4.dex */
    public static final class MapStrLookup<V> extends StrLookup<V> {

        /* renamed from: a, reason: collision with root package name */
        public final Map f22465a = Collections.EMPTY_MAP;

        @Override // org.apache.commons.text.lookup.StringLookup
        public final String a(String str) {
            return Objects.toString(this.f22465a.get(str), null);
        }

        public final String toString() {
            return super.toString() + " [map=" + this.f22465a + "]";
        }
    }

    /* loaded from: classes4.dex */
    public static final class ResourceBundleLookup extends StrLookup<String> {
        @Override // org.apache.commons.text.lookup.StringLookup
        public final String a(String str) {
            return null;
        }

        public final String toString() {
            return a.p(new StringBuilder(), super.toString(), " [resourceBundle=null]");
        }
    }

    /* loaded from: classes4.dex */
    public static final class SystemPropertiesStrLookup extends StrLookup<String> {
        @Override // org.apache.commons.text.lookup.StringLookup
        public final String a(String str) {
            if (!str.isEmpty()) {
                try {
                    return System.getProperty(str);
                } catch (SecurityException unused) {
                    return null;
                }
            }
            return null;
        }
    }

    static {
        new MapStrLookup();
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        return a((String) obj);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String b(String str) {
        return a(str);
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        return Function$CC.$default$compose(this, function);
    }
}
