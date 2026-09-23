package androidx.emoji2.text.flatbuffer;

import java.util.IdentityHashMap;
import java.util.WeakHashMap;
import java.util.function.Supplier;
import org.apache.commons.lang3.RandomUtils;
import org.apache.commons.lang3.g;
import org.jsoup.nodes.Entities;

/* loaded from: classes.dex */
public final /* synthetic */ class b extends ThreadLocal {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1042a;
    public final /* synthetic */ Supplier b;

    public /* synthetic */ b(Supplier supplier, int i) {
        this.f1042a = i;
        this.b = supplier;
    }

    @Override // java.lang.ThreadLocal
    public final Object initialValue() {
        int i = this.f1042a;
        Supplier supplier = this.b;
        switch (i) {
            case 0:
                return ((a) supplier).get();
            case 1:
                ((g) supplier).getClass();
                return RandomUtils.a();
            case 2:
                ((org.apache.commons.lang3.builder.a) supplier).getClass();
                return new WeakHashMap();
            case 3:
                return ((org.jsoup.internal.b) supplier).get();
            case 4:
                ((org.apache.commons.lang3.builder.a) supplier).getClass();
                char[] cArr = Entities.f22571a;
                return new char[2];
            default:
                ((org.jsoup.select.g) supplier).getClass();
                return new IdentityHashMap();
        }
    }
}
