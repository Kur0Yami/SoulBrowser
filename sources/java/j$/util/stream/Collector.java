package j$.util.stream;

import j$.util.Objects;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;
import java.util.function.BiConsumer;
import java.util.function.BinaryOperator;
import java.util.function.Function;
import java.util.function.Supplier;

/* loaded from: classes2.dex */
public interface Collector<T, A, R> {
    BiConsumer<A, T> accumulator();

    Set<Characteristics> characteristics();

    BinaryOperator<A> combiner();

    Function<A, R> finisher();

    Supplier<A> supplier();

    /* renamed from: j$.util.stream.Collector$-CC, reason: invalid class name */
    /* loaded from: classes2.dex */
    public final /* synthetic */ class CC {
        public static <T, A, R> Collector<T, A, R> of(Supplier<A> supplier, BiConsumer<A, T> biConsumer, BinaryOperator<A> binaryOperator, Function<A, R> function, Characteristics... characteristicsArr) {
            Objects.requireNonNull(supplier);
            Objects.requireNonNull(biConsumer);
            Objects.requireNonNull(binaryOperator);
            Objects.requireNonNull(function);
            Objects.requireNonNull(characteristicsArr);
            Set set = Collectors.b;
            if (characteristicsArr.length > 0) {
                EnumSet noneOf = EnumSet.noneOf(Characteristics.class);
                Collections.addAll(noneOf, characteristicsArr);
                set = Collections.unmodifiableSet(noneOf);
            }
            return new i(supplier, biConsumer, binaryOperator, function, set);
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes2.dex */
    public static final class Characteristics {
        public static final Characteristics CONCURRENT;
        public static final Characteristics IDENTITY_FINISH;
        public static final Characteristics UNORDERED;

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ Characteristics[] f21376a;

        public static Characteristics valueOf(String str) {
            return (Characteristics) Enum.valueOf(Characteristics.class, str);
        }

        public static Characteristics[] values() {
            return (Characteristics[]) f21376a.clone();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, j$.util.stream.Collector$Characteristics] */
        static {
            ?? r0 = new Enum("CONCURRENT", 0);
            CONCURRENT = r0;
            ?? r1 = new Enum("UNORDERED", 1);
            UNORDERED = r1;
            ?? r3 = new Enum("IDENTITY_FINISH", 2);
            IDENTITY_FINISH = r3;
            f21376a = new Characteristics[]{r0, r1, r3};
        }
    }
}
