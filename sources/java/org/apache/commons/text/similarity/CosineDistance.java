package org.apache.commons.text.similarity;

import j$.util.Map;
import j$.util.function.BiFunction$CC;
import j$.util.function.Consumer$CC;
import j$.util.stream.Stream;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;

/* loaded from: classes4.dex */
public class CosineDistance implements EditDistance<Double> {
    public /* synthetic */ BiFunction andThen(Function function) {
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        RegexTokenizer.b.getClass();
        CharSequence[] c2 = RegexTokenizer.c((CharSequence) obj);
        final HashMap hashMap = new HashMap();
        Stream.CC.of(c2).forEach(new Consumer() { // from class: org.apache.commons.text.similarity.a
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj3) {
                Map.EL.compute(hashMap, (CharSequence) obj3, new Object());
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        CharSequence[] c3 = RegexTokenizer.c((CharSequence) obj2);
        final HashMap hashMap2 = new HashMap();
        Stream.CC.of(c3).forEach(new Consumer() { // from class: org.apache.commons.text.similarity.a
            @Override // java.util.function.Consumer
            /* renamed from: accept */
            public final void n(Object obj3) {
                Map.EL.compute(hashMap2, (CharSequence) obj3, new Object());
            }

            public /* synthetic */ Consumer andThen(Consumer consumer) {
                return Consumer$CC.$default$andThen(this, consumer);
            }
        });
        HashSet hashSet = new HashSet(hashMap.keySet());
        hashSet.retainAll(hashMap2.keySet());
        Iterator it = hashSet.iterator();
        long j = 0;
        while (it.hasNext()) {
            CharSequence charSequence = (CharSequence) it.next();
            j += ((Integer) hashMap.get(charSequence)).intValue() * ((Integer) hashMap2.get(charSequence)).intValue();
        }
        double d = j;
        Iterator it2 = hashMap.values().iterator();
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (it2.hasNext()) {
            d3 += Math.pow(((Integer) it2.next()).intValue(), 2.0d);
        }
        Iterator it3 = hashMap2.values().iterator();
        double d4 = 0.0d;
        while (it3.hasNext()) {
            d4 += Math.pow(((Integer) it3.next()).intValue(), 2.0d);
        }
        if (d3 > 0.0d && d4 > 0.0d) {
            d2 = d / (Math.sqrt(d4) * Math.sqrt(d3));
        }
        return Double.valueOf(1.0d - d2);
    }
}
