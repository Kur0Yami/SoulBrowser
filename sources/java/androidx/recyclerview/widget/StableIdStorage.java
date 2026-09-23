package androidx.recyclerview.widget;

/* loaded from: classes.dex */
interface StableIdStorage {

    /* loaded from: classes.dex */
    public static class IsolatedStableIdStorage implements StableIdStorage {

        /* loaded from: classes.dex */
        public class WrapperStableIdLookup implements StableIdLookup {
        }
    }

    /* loaded from: classes.dex */
    public static class NoStableIdStorage implements StableIdStorage {

        /* renamed from: androidx.recyclerview.widget.StableIdStorage$NoStableIdStorage$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements StableIdLookup {
        }
    }

    /* loaded from: classes.dex */
    public static class SharedPoolStableIdStorage implements StableIdStorage {

        /* renamed from: androidx.recyclerview.widget.StableIdStorage$SharedPoolStableIdStorage$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements StableIdLookup {
        }
    }

    /* loaded from: classes.dex */
    public interface StableIdLookup {
    }
}
