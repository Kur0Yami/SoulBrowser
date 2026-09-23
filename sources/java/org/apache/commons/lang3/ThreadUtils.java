package org.apache.commons.lang3;

/* loaded from: classes4.dex */
public class ThreadUtils {

    @Deprecated
    /* loaded from: classes4.dex */
    public static final class AlwaysTruePredicate implements ThreadPredicate, ThreadGroupPredicate {
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public static class NamePredicate implements ThreadPredicate, ThreadGroupPredicate {
    }

    @FunctionalInterface
    @Deprecated
    /* loaded from: classes4.dex */
    public interface ThreadGroupPredicate {
    }

    @Deprecated
    /* loaded from: classes4.dex */
    public static class ThreadIdPredicate implements ThreadPredicate {
    }

    @FunctionalInterface
    @Deprecated
    /* loaded from: classes4.dex */
    public interface ThreadPredicate {
    }
}
