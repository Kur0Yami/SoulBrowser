package j$.util.stream;

import j$.util.Objects;
import j$.util.Spliterator;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Collection;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.function.IntFunction;

/* loaded from: classes2.dex */
public final class l extends d5 {
    public static g2 L0(v3 v3Var, Spliterator spliterator) {
        j$.time.h hVar = new j$.time.h(23);
        j$.time.h hVar2 = new j$.time.h(24);
        j$.time.h hVar3 = new j$.time.h(25);
        Objects.requireNonNull(hVar);
        Objects.requireNonNull(hVar2);
        Objects.requireNonNull(hVar3);
        return new g2((Collection) new a4(d7.REFERENCE, hVar3, hVar2, hVar, 3).i(v3Var, spliterator));
    }

    @Override // j$.util.stream.a
    public final c2 E0(v3 v3Var, Spliterator spliterator, IntFunction intFunction) {
        a aVar = (a) v3Var;
        if (c7.DISTINCT.i(aVar.m)) {
            return v3Var.g0(spliterator, false, intFunction);
        }
        if (c7.ORDERED.i(aVar.m)) {
            return L0(v3Var, spliterator);
        }
        AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        ConcurrentHashMap concurrentHashMap = new ConcurrentHashMap();
        j$.util.concurrent.t tVar = new j$.util.concurrent.t(4, atomicBoolean, concurrentHashMap);
        Objects.requireNonNull(tVar);
        new m0(tVar, false).a(v3Var, spliterator);
        Collection keySet = concurrentHashMap.keySet();
        if (atomicBoolean.get()) {
            HashSet hashSet = new HashSet(keySet);
            hashSet.add(null);
            keySet = hashSet;
        }
        return new g2(keySet);
    }

    @Override // j$.util.stream.a
    public final Spliterator F0(a aVar, Spliterator spliterator) {
        if (c7.DISTINCT.i(aVar.m)) {
            return aVar.x0(spliterator);
        }
        if (c7.ORDERED.i(aVar.m)) {
            return L0(aVar, spliterator).spliterator();
        }
        return new q7(aVar.x0(spliterator), new ConcurrentHashMap());
    }

    @Override // j$.util.stream.a
    public final n5 H0(int i, n5 n5Var) {
        Objects.requireNonNull(n5Var);
        if (c7.DISTINCT.i(i)) {
            return n5Var;
        }
        if (c7.SORTED.i(i)) {
            return new j(n5Var);
        }
        return new k(n5Var);
    }
}
