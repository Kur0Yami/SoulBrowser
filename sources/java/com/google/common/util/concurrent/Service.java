package com.google.common.util.concurrent;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.errorprone.annotations.DoNotMock;

@DoNotMock
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public interface Service {

    /* loaded from: classes3.dex */
    public static abstract class Listener {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final State f12596c;
        public static final State f;
        public static final State g;
        public static final State h;
        public static final State i;
        public static final State j;
        public static final /* synthetic */ State[] k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r9v1, types: [com.google.common.util.concurrent.Service$State, java.lang.Enum] */
        static {
            ?? r0 = new Enum("NEW", 0);
            f12596c = r0;
            ?? r1 = new Enum("STARTING", 1);
            f = r1;
            ?? r3 = new Enum("RUNNING", 2);
            g = r3;
            ?? r5 = new Enum("STOPPING", 3);
            h = r5;
            ?? r7 = new Enum("TERMINATED", 4);
            i = r7;
            ?? r9 = new Enum("FAILED", 5);
            j = r9;
            k = new State[]{r0, r1, r3, r5, r7, r9};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) k.clone();
        }
    }
}
