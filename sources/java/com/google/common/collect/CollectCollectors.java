package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import j$.util.stream.Collector;
import java.util.EnumSet;

@GwtCompatible
@IgnoreJRERequirement
/* loaded from: classes3.dex */
final class CollectCollectors {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f12253a = 0;

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class EnumMapAccumulator<K extends Enum<K>, V> {
    }

    @IgnoreJRERequirement
    /* loaded from: classes3.dex */
    public static final class EnumSetAccumulator<E extends Enum<E>> {

        /* renamed from: a, reason: collision with root package name */
        public EnumSet f12254a;

        static {
            int i = CollectCollectors.f12253a;
            Collector.CC.of(new a(0), new b(0), new c(0), new d(0), Collector.Characteristics.UNORDERED);
        }
    }

    static {
        Collector.CC.of(new a(4), new b(5), new c(1), new d(5), new Collector.Characteristics[0]);
        Collector.CC.of(new a(2), new b(3), new c(3), new d(4), new Collector.Characteristics[0]);
        Collector.CC.of(new a(3), new b(4), new c(4), new d(1), new Collector.Characteristics[0]);
    }
}
