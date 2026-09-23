package org.apache.commons.lang3.concurrent;

import java.util.EnumMap;
import org.apache.commons.lang3.concurrent.AbstractCircuitBreaker;

/* loaded from: classes4.dex */
public class EventCountCircuitBreaker extends AbstractCircuitBreaker<Integer> {

    /* loaded from: classes4.dex */
    public static abstract class AbstractStateStrategy {
    }

    /* loaded from: classes4.dex */
    public static final class CheckIntervalData {
    }

    /* loaded from: classes4.dex */
    public static final class StateStrategyClosed extends AbstractStateStrategy {
    }

    /* loaded from: classes4.dex */
    public static final class StateStrategyOpen extends AbstractStateStrategy {
    }

    static {
        EnumMap enumMap = new EnumMap(AbstractCircuitBreaker.State.class);
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.f22372c, (AbstractCircuitBreaker.State) new Object());
        enumMap.put((EnumMap) AbstractCircuitBreaker.State.f, (AbstractCircuitBreaker.State) new Object());
    }
}
