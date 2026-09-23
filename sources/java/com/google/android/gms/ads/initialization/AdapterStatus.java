package com.google.android.gms.ads.initialization;

import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public interface AdapterStatus {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class State {

        @NonNull
        public static final State NOT_READY;

        @NonNull
        public static final State READY;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ State[] f2975c;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.ads.initialization.AdapterStatus$State] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.google.android.gms.ads.initialization.AdapterStatus$State] */
        static {
            ?? r0 = new Enum("NOT_READY", 0);
            NOT_READY = r0;
            ?? r1 = new Enum("READY", 1);
            READY = r1;
            f2975c = new State[]{r0, r1};
        }

        @NonNull
        public static State valueOf(@NonNull String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        @NonNull
        public static State[] values() {
            return (State[]) f2975c.clone();
        }
    }

    @NonNull
    String getDescription();

    @NonNull
    State getInitializationState();

    int getLatency();
}
