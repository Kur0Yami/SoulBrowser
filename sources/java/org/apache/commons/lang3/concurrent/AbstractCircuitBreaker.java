package org.apache.commons.lang3.concurrent;

/* loaded from: classes4.dex */
public abstract class AbstractCircuitBreaker<T> implements CircuitBreaker<T> {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class State {

        /* renamed from: c, reason: collision with root package name */
        public static final State f22372c;
        public static final State f;
        public static final /* synthetic */ State[] g;

        static {
            State state = new State() { // from class: org.apache.commons.lang3.concurrent.AbstractCircuitBreaker.State.1
            };
            f22372c = state;
            State state2 = new State() { // from class: org.apache.commons.lang3.concurrent.AbstractCircuitBreaker.State.2
            };
            f = state2;
            g = new State[]{state, state2};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) g.clone();
        }
    }
}
