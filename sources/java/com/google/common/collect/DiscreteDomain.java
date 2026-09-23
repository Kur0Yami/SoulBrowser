package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import java.io.Serializable;
import java.lang.Comparable;
import java.math.BigInteger;
import kotlin.jvm.internal.LongCompanionObject;

@GwtCompatible
/* loaded from: classes3.dex */
public abstract class DiscreteDomain<C extends Comparable> {

    /* loaded from: classes3.dex */
    public static final class BigIntegerDomain extends DiscreteDomain<BigInteger> implements Serializable {
        static {
            BigInteger.valueOf(Long.MIN_VALUE);
            BigInteger.valueOf(LongCompanionObject.MAX_VALUE);
        }

        public final String toString() {
            return "DiscreteDomain.bigIntegers()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class IntegerDomain extends DiscreteDomain<Integer> implements Serializable {
        public final String toString() {
            return "DiscreteDomain.integers()";
        }
    }

    /* loaded from: classes3.dex */
    public static final class LongDomain extends DiscreteDomain<Long> implements Serializable {
        public final String toString() {
            return "DiscreteDomain.longs()";
        }
    }
}
