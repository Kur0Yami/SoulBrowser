package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.CollectCollectors;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableRangeSet;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterators;
import com.google.common.collect.MoreCollectors;
import com.google.common.collect.Range;
import j$.util.Optional;
import j$.util.function.Function$CC;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.NoSuchElementException;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12426a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f12426a;
        return Function$CC.$default$andThen(this, function);
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.common.collect.ImmutableCollection$ArrayBasedBuilder, com.google.common.collect.ImmutableList$Builder] */
    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        Object obj2;
        switch (this.f12426a) {
            case 0:
                CollectCollectors.EnumSetAccumulator enumSetAccumulator = (CollectCollectors.EnumSetAccumulator) obj;
                EnumSet enumSet = enumSetAccumulator.f12254a;
                if (enumSet == null) {
                    int i = ImmutableSet.g;
                    return RegularImmutableSet.n;
                }
                int i2 = ImmutableEnumSet.j;
                int size = enumSet.size();
                if (size != 0) {
                    if (size != 1) {
                        obj2 = new ImmutableEnumSet(enumSet);
                    } else {
                        obj2 = new SingletonImmutableSet((Enum) Iterables.c(enumSet));
                    }
                } else {
                    obj2 = RegularImmutableSet.n;
                }
                enumSetAccumulator.f12254a = null;
                return obj2;
            case 1:
                ArrayList arrayList = ((ImmutableRangeSet.Builder) obj).f12303a;
                ?? arrayBasedBuilder = new ImmutableCollection.ArrayBasedBuilder(arrayList.size());
                Range range = Range.g;
                Collections.sort(arrayList, Range.RangeLexOrdering.f12386c);
                PeekingIterator g = Iterators.g(arrayList.iterator());
                while (true) {
                    Iterators.PeekingImpl peekingImpl = (Iterators.PeekingImpl) g;
                    if (peekingImpl.hasNext()) {
                        Range range2 = (Range) peekingImpl.next();
                        while (peekingImpl.hasNext()) {
                            Range range3 = (Range) peekingImpl.a();
                            if (range2.e(range3)) {
                                Preconditions.f(range2.d(range3).f(), "Overlapping ranges not permitted but found %s overlapping %s", range2, range3);
                                Range range4 = (Range) peekingImpl.next();
                                Cut cut = range2.f12384c;
                                int compareTo = cut.compareTo(range4.f12384c);
                                Cut cut2 = range2.f;
                                Cut cut3 = range4.f;
                                int compareTo2 = cut2.compareTo(cut3);
                                if (compareTo > 0 || compareTo2 < 0) {
                                    if (compareTo >= 0 && compareTo2 <= 0) {
                                        range2 = range4;
                                    } else {
                                        if (compareTo > 0) {
                                            cut = range4.f12384c;
                                        }
                                        if (compareTo2 < 0) {
                                            cut2 = cut3;
                                        }
                                        range2 = new Range(cut, cut2);
                                    }
                                }
                            }
                        }
                        arrayBasedBuilder.e(range2);
                    } else {
                        ImmutableList f = arrayBasedBuilder.f();
                        if (f.isEmpty()) {
                            return ImmutableRangeSet.f;
                        }
                        if (((RegularImmutableList) f).h == 1 && ((Range) Iterables.c(f)).equals(Range.g)) {
                            return ImmutableRangeSet.g;
                        }
                        return new ImmutableRangeSet(f);
                    }
                }
                break;
            case 2:
                MoreCollectors.ToOptionalState toOptionalState = (MoreCollectors.ToOptionalState) obj;
                if (toOptionalState.b.isEmpty()) {
                    return Optional.ofNullable(toOptionalState.f12366a);
                }
                toOptionalState.b(false);
                throw null;
            case 3:
                MoreCollectors.ToOptionalState toOptionalState2 = (MoreCollectors.ToOptionalState) obj;
                Object obj3 = MoreCollectors.f12365a;
                if (toOptionalState2.f12366a != null) {
                    if (toOptionalState2.b.isEmpty()) {
                        Object obj4 = toOptionalState2.f12366a;
                        if (obj4 == MoreCollectors.f12365a) {
                            return null;
                        }
                        return obj4;
                    }
                    toOptionalState2.b(false);
                    throw null;
                }
                throw new NoSuchElementException();
            case 4:
                return ((ImmutableSet.Builder) obj).f();
            default:
                return ((ImmutableList.Builder) obj).f();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f12426a;
        return Function$CC.$default$compose(this, function);
    }
}
