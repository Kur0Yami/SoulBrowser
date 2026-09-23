package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.CollectCollectors;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.MoreCollectors;
import j$.util.function.BiConsumer$CC;
import java.util.EnumSet;
import java.util.function.BiConsumer;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements BiConsumer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12424a;

    @Override // java.util.function.BiConsumer
    public final void accept(Object obj, Object obj2) {
        switch (this.f12424a) {
            case 0:
                CollectCollectors.EnumSetAccumulator enumSetAccumulator = (CollectCollectors.EnumSetAccumulator) obj;
                Enum r4 = (Enum) obj2;
                EnumSet enumSet = enumSetAccumulator.f12254a;
                if (enumSet == null) {
                    enumSetAccumulator.f12254a = EnumSet.of(r4);
                    return;
                } else {
                    enumSet.add(r4);
                    return;
                }
            case 1:
                ((MoreCollectors.ToOptionalState) obj).a(obj2);
                return;
            case 2:
                MoreCollectors.ToOptionalState toOptionalState = (MoreCollectors.ToOptionalState) obj;
                if (obj2 == null) {
                    obj2 = MoreCollectors.f12365a;
                } else {
                    Object obj3 = MoreCollectors.f12365a;
                }
                toOptionalState.a(obj2);
                return;
            case 3:
                ((ImmutableSet.Builder) obj).a(obj2);
                return;
            case 4:
                ImmutableRangeSet.Builder builder = (ImmutableRangeSet.Builder) obj;
                Range range = (Range) obj2;
                builder.getClass();
                Preconditions.c("range must not be empty, but was %s", range, !range.f());
                builder.f12303a.add(range);
                return;
            default:
                ((ImmutableList.Builder) obj).e(obj2);
                return;
        }
    }

    public /* synthetic */ BiConsumer andThen(BiConsumer biConsumer) {
        int i = this.f12424a;
        return BiConsumer$CC.$default$andThen(this, biConsumer);
    }
}
