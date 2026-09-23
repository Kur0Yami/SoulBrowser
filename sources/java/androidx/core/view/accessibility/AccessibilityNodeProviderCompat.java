package androidx.core.view.accessibility;

import android.os.Build;
import android.os.Bundle;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.annotation.RequiresApi;
import java.util.List;

/* loaded from: classes.dex */
public class AccessibilityNodeProviderCompat {

    /* renamed from: a, reason: collision with root package name */
    public final AccessibilityNodeProvider f839a;

    /* loaded from: classes.dex */
    public static class AccessibilityNodeProviderApi19 extends AccessibilityNodeProvider {

        /* renamed from: a, reason: collision with root package name */
        public final AccessibilityNodeProviderCompat f840a;

        public AccessibilityNodeProviderApi19(AccessibilityNodeProviderCompat accessibilityNodeProviderCompat) {
            this.f840a = accessibilityNodeProviderCompat;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo createAccessibilityNodeInfo(int i) {
            AccessibilityNodeInfoCompat a2 = this.f840a.a(i);
            if (a2 == null) {
                return null;
            }
            return a2.f834a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final List findAccessibilityNodeInfosByText(String str, int i) {
            this.f840a.getClass();
            return null;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final AccessibilityNodeInfo findFocus(int i) {
            AccessibilityNodeInfoCompat b = this.f840a.b(i);
            if (b == null) {
                return null;
            }
            return b.f834a;
        }

        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final boolean performAction(int i, int i2, Bundle bundle) {
            return this.f840a.c(i, i2, bundle);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class AccessibilityNodeProviderApi26 extends AccessibilityNodeProviderApi19 {
        @Override // android.view.accessibility.AccessibilityNodeProvider
        public final void addExtraDataToAccessibilityNodeInfo(int i, AccessibilityNodeInfo accessibilityNodeInfo, String str, Bundle bundle) {
            this.f840a.getClass();
        }
    }

    public AccessibilityNodeProviderCompat() {
        if (Build.VERSION.SDK_INT >= 26) {
            this.f839a = new AccessibilityNodeProviderApi19(this);
        } else {
            this.f839a = new AccessibilityNodeProviderApi19(this);
        }
    }

    public AccessibilityNodeInfoCompat a(int i) {
        return null;
    }

    public AccessibilityNodeInfoCompat b(int i) {
        return null;
    }

    public boolean c(int i, int i2, Bundle bundle) {
        return false;
    }

    public AccessibilityNodeProviderCompat(AccessibilityNodeProvider accessibilityNodeProvider) {
        this.f839a = accessibilityNodeProvider;
    }
}
