package org.apache.commons.lang3.time;

import j$.time.Duration;
import org.apache.commons.lang3.tuple.ImmutablePair;

/* loaded from: classes4.dex */
public class StopWatch {

    /* loaded from: classes4.dex */
    public static final class Split extends ImmutablePair<String, Duration> {
        @Override // org.apache.commons.lang3.tuple.Pair
        public final String toString() {
            throw null;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static final class SplitState {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ SplitState[] f22444c = {new Enum("SPLIT", 0), new Enum("UNSPLIT", 1)};

        /* JADX INFO: Fake field, exist only in values array */
        SplitState EF5;

        public static SplitState valueOf(String str) {
            return (SplitState) Enum.valueOf(SplitState.class, str);
        }

        public static SplitState[] values() {
            return (SplitState[]) f22444c.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes4.dex */
    public static abstract class State {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ State[] f22445c = {new State() { // from class: org.apache.commons.lang3.time.StopWatch.State.1
        }, new State() { // from class: org.apache.commons.lang3.time.StopWatch.State.2
        }, new State() { // from class: org.apache.commons.lang3.time.StopWatch.State.3
        }, new State() { // from class: org.apache.commons.lang3.time.StopWatch.State.4
        }};

        /* JADX INFO: Fake field, exist only in values array */
        State EF2;

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) f22445c.clone();
        }
    }

    public final String toString() {
        throw null;
    }
}
