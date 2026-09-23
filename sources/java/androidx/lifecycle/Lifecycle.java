package androidx.lifecycle;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b&\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/lifecycle/Lifecycle;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Event", "State", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public abstract class Lifecycle {

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018\u0000 \u00022\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Landroidx/lifecycle/Lifecycle$Event;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "ON_CREATE", "ON_START", "ON_RESUME", "ON_PAUSE", "ON_STOP", "ON_DESTROY", "ON_ANY", "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Event {
        private static final /* synthetic */ Event[] $VALUES;

        /* renamed from: Companion, reason: from kotlin metadata */
        @NotNull
        public static final Companion INSTANCE;
        public static final Event ON_ANY;
        public static final Event ON_CREATE;
        public static final Event ON_DESTROY;
        public static final Event ON_PAUSE;
        public static final Event ON_RESUME;
        public static final Event ON_START;
        public static final Event ON_STOP;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/Lifecycle$Event$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {

            @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
            /* loaded from: classes.dex */
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[State.values().length];
                    try {
                        iArr[2] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[3] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[4] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[0] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[1] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public static Event a(State state) {
                Intrinsics.checkNotNullParameter(state, "state");
                int i = WhenMappings.$EnumSwitchMapping$0[state.ordinal()];
                if (i != 1) {
                    if (i != 2) {
                        if (i != 5) {
                            return null;
                        }
                        return Event.ON_CREATE;
                    }
                    return Event.ON_RESUME;
                }
                return Event.ON_START;
            }
        }

        @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[Event.values().length];
                try {
                    iArr[Event.ON_CREATE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[Event.ON_STOP.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[Event.ON_START.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[Event.ON_PAUSE.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[Event.ON_RESUME.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                try {
                    iArr[Event.ON_DESTROY.ordinal()] = 6;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr[Event.ON_ANY.ordinal()] = 7;
                } catch (NoSuchFieldError unused7) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.lifecycle.Lifecycle$Event$Companion] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.lifecycle.Lifecycle$Event] */
        static {
            ?? r0 = new Enum("ON_CREATE", 0);
            ON_CREATE = r0;
            ?? r1 = new Enum("ON_START", 1);
            ON_START = r1;
            ?? r3 = new Enum("ON_RESUME", 2);
            ON_RESUME = r3;
            ?? r5 = new Enum("ON_PAUSE", 3);
            ON_PAUSE = r5;
            ?? r7 = new Enum("ON_STOP", 4);
            ON_STOP = r7;
            ?? r9 = new Enum("ON_DESTROY", 5);
            ON_DESTROY = r9;
            ?? r11 = new Enum("ON_ANY", 6);
            ON_ANY = r11;
            $VALUES = new Event[]{r0, r1, r3, r5, r7, r9, r11};
            INSTANCE = new Object();
        }

        public static Event valueOf(String str) {
            return (Event) Enum.valueOf(Event.class, str);
        }

        public static Event[] values() {
            return (Event[]) $VALUES.clone();
        }

        public final State a() {
            switch (WhenMappings.$EnumSwitchMapping$0[ordinal()]) {
                case 1:
                case 2:
                    return State.g;
                case 3:
                case 4:
                    return State.h;
                case 5:
                    return State.i;
                case 6:
                    return State.f1198c;
                default:
                    throw new IllegalArgumentException(this + " has no target state");
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Landroidx/lifecycle/Lifecycle$State;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "lifecycle-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class State {

        /* renamed from: c, reason: collision with root package name */
        public static final State f1198c;
        public static final State f;
        public static final State g;
        public static final State h;
        public static final State i;
        public static final /* synthetic */ State[] j;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [androidx.lifecycle.Lifecycle$State, java.lang.Enum] */
        static {
            ?? r0 = new Enum("DESTROYED", 0);
            f1198c = r0;
            ?? r1 = new Enum("INITIALIZED", 1);
            f = r1;
            ?? r3 = new Enum("CREATED", 2);
            g = r3;
            ?? r5 = new Enum("STARTED", 3);
            h = r5;
            ?? r7 = new Enum("RESUMED", 4);
            i = r7;
            j = new State[]{r0, r1, r3, r5, r7};
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) j.clone();
        }

        public final boolean a(State state) {
            Intrinsics.checkNotNullParameter(state, "state");
            if (compareTo(state) >= 0) {
                return true;
            }
            return false;
        }
    }

    public abstract void a(LifecycleObserver lifecycleObserver);

    public abstract State b();

    public abstract void c(LifecycleObserver lifecycleObserver);
}
