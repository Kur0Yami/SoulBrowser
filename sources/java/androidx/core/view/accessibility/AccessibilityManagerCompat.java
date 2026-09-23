package androidx.core.view.accessibility;

import android.view.accessibility.AccessibilityManager;
import androidx.annotation.RequiresApi;

/* loaded from: classes.dex */
public final class AccessibilityManagerCompat {

    @Deprecated
    /* loaded from: classes.dex */
    public interface AccessibilityStateChangeListener {
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class AccessibilityStateChangeListenerCompat implements AccessibilityStateChangeListener {
    }

    /* loaded from: classes.dex */
    public static class AccessibilityStateChangeListenerWrapper implements AccessibilityManager.AccessibilityStateChangeListener {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AccessibilityStateChangeListenerWrapper)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        @Override // android.view.accessibility.AccessibilityManager.AccessibilityStateChangeListener
        public final void onAccessibilityStateChanged(boolean z) {
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
    }

    /* loaded from: classes.dex */
    public interface TouchExplorationStateChangeListener {
    }

    /* loaded from: classes.dex */
    public static final class TouchExplorationStateChangeListenerWrapper implements AccessibilityManager.TouchExplorationStateChangeListener {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof TouchExplorationStateChangeListenerWrapper)) {
                return false;
            }
            throw null;
        }

        public final int hashCode() {
            throw null;
        }

        @Override // android.view.accessibility.AccessibilityManager.TouchExplorationStateChangeListener
        public final void onTouchExplorationStateChanged(boolean z) {
            throw null;
        }
    }
}
