package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import j$.util.stream.Collector;
import java.util.ArrayList;
import java.util.List;
import kotlin.text.Typography;

@GwtCompatible
@IgnoreJRERequirement
/* loaded from: classes3.dex */
public final class MoreCollectors {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f12365a;

    /* loaded from: classes3.dex */
    public static final class ToOptionalState {

        /* renamed from: a, reason: collision with root package name */
        public Object f12366a;
        public List b;

        public final void a(Object obj) {
            obj.getClass();
            if (this.f12366a == null) {
                this.f12366a = obj;
                return;
            }
            if (this.b.isEmpty()) {
                ArrayList arrayList = new ArrayList(4);
                this.b = arrayList;
                arrayList.add(obj);
            } else if (this.b.size() < 4) {
                this.b.add(obj);
            } else {
                b(true);
                throw null;
            }
        }

        public final void b(boolean z) {
            StringBuilder sb = new StringBuilder("expected one element but was: <");
            sb.append(this.f12366a);
            for (Object obj : this.b) {
                sb.append(", ");
                sb.append(obj);
            }
            if (z) {
                sb.append(", ...");
            }
            sb.append(Typography.greater);
            throw new IllegalArgumentException(sb.toString());
        }
    }

    static {
        a aVar = new a(1);
        b bVar = new b(1);
        c cVar = new c(2);
        d dVar = new d(2);
        Collector.Characteristics characteristics = Collector.Characteristics.UNORDERED;
        Collector.CC.of(aVar, bVar, cVar, dVar, characteristics);
        f12365a = new Object();
        Collector.CC.of(new a(1), new b(2), new c(2), new d(3), characteristics);
    }
}
