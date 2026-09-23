package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.CollectCollectors;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.MoreCollectors;
import j$.util.function.BiFunction$CC;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.BinaryOperator;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class c implements BinaryOperator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f12425c;

    public /* synthetic */ BiFunction andThen(Function function) {
        int i = this.f12425c;
        return BiFunction$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.BiFunction
    public final Object apply(Object obj, Object obj2) {
        switch (this.f12425c) {
            case 0:
                CollectCollectors.EnumSetAccumulator enumSetAccumulator = (CollectCollectors.EnumSetAccumulator) obj;
                CollectCollectors.EnumSetAccumulator enumSetAccumulator2 = (CollectCollectors.EnumSetAccumulator) obj2;
                EnumSet enumSet = enumSetAccumulator.f12254a;
                if (enumSet == null) {
                    return enumSetAccumulator2;
                }
                EnumSet enumSet2 = enumSetAccumulator2.f12254a;
                if (enumSet2 != null) {
                    enumSet.addAll(enumSet2);
                    return enumSetAccumulator;
                }
                return enumSetAccumulator;
            case 1:
                ImmutableList.Builder builder = (ImmutableList.Builder) obj;
                ImmutableList.Builder builder2 = (ImmutableList.Builder) obj2;
                builder.getClass();
                Object[] objArr = builder2.f12288a;
                int i = builder2.b;
                ObjectArrays.a(i, objArr);
                builder.d(i);
                System.arraycopy(objArr, 0, builder.f12288a, builder.b, i);
                builder.b += i;
                return builder;
            case 2:
                MoreCollectors.ToOptionalState toOptionalState = (MoreCollectors.ToOptionalState) obj;
                MoreCollectors.ToOptionalState toOptionalState2 = (MoreCollectors.ToOptionalState) obj2;
                if (toOptionalState.f12366a == null) {
                    return toOptionalState2;
                }
                if (toOptionalState2.f12366a != null) {
                    if (toOptionalState.b.isEmpty()) {
                        toOptionalState.b = new ArrayList();
                    }
                    toOptionalState.b.add(toOptionalState2.f12366a);
                    toOptionalState.b.addAll(toOptionalState2.b);
                    if (toOptionalState.b.size() <= 4) {
                        return toOptionalState;
                    }
                    List list = toOptionalState.b;
                    list.subList(4, list.size()).clear();
                    toOptionalState.b(true);
                    throw null;
                }
                return toOptionalState;
            case 3:
                return ((ImmutableSet.Builder) obj).g((ImmutableSet.Builder) obj2);
            default:
                ImmutableRangeSet.Builder builder3 = (ImmutableRangeSet.Builder) obj;
                builder3.getClass();
                ArrayList arrayList = ((ImmutableRangeSet.Builder) obj2).f12303a;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj3 = arrayList.get(i2);
                    i2++;
                    Range range = (Range) obj3;
                    Preconditions.c("range must not be empty, but was %s", range, !range.f());
                    builder3.f12303a.add(range);
                }
                return builder3;
        }
    }
}
