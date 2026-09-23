package androidx.work;

import android.support.v4.media.a;

/* loaded from: classes.dex */
public interface Operation {

    /* renamed from: a, reason: collision with root package name */
    public static final State.SUCCESS f1846a = new Object();
    public static final State.IN_PROGRESS b = new Object();

    /* loaded from: classes.dex */
    public static abstract class State {

        /* loaded from: classes.dex */
        public static final class FAILURE extends State {

            /* renamed from: a, reason: collision with root package name */
            public final Throwable f1847a;

            public FAILURE(Throwable th) {
                this.f1847a = th;
            }

            public final String toString() {
                return a.l("FAILURE (", this.f1847a.getMessage(), ")");
            }
        }

        /* loaded from: classes.dex */
        public static final class IN_PROGRESS extends State {
            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        /* loaded from: classes.dex */
        public static final class SUCCESS extends State {
            public final String toString() {
                return "SUCCESS";
            }
        }
    }
}
