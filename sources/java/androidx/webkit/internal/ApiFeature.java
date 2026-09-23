package androidx.webkit.internal;

import android.os.Build;
import androidx.webkit.internal.WebViewGlueCommunicator;
import java.util.Arrays;
import java.util.HashSet;

/* loaded from: classes.dex */
public abstract class ApiFeature implements ConditionallySupportedFeature {

    /* renamed from: c, reason: collision with root package name */
    public static final HashSet f1793c = new HashSet();

    /* renamed from: a, reason: collision with root package name */
    public final String f1794a;
    public final String b;

    /* loaded from: classes.dex */
    public static class LAZY_HOLDER {

        /* renamed from: a, reason: collision with root package name */
        public static final HashSet f1795a = new HashSet(Arrays.asList(WebViewGlueCommunicator.LAZY_FACTORY_HOLDER.f1814a.a()));
    }

    /* loaded from: classes.dex */
    public static class M extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class N extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 24) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class NoFramework extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class O extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 26) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class O_MR1 extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 27) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class P extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 28) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class Q extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 29) {
                return true;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public static class T extends ApiFeature {
        @Override // androidx.webkit.internal.ApiFeature
        public final boolean c() {
            if (Build.VERSION.SDK_INT >= 33) {
                return true;
            }
            return false;
        }
    }

    public ApiFeature(String str, String str2) {
        this.f1794a = str;
        this.b = str2;
        f1793c.add(this);
    }

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    public final boolean a() {
        if (!c() && !d()) {
            return false;
        }
        return true;
    }

    @Override // androidx.webkit.internal.ConditionallySupportedFeature
    public final String b() {
        return this.f1794a;
    }

    public abstract boolean c();

    public boolean d() {
        HashSet hashSet = LAZY_HOLDER.f1795a;
        String str = this.b;
        if (!hashSet.contains(str)) {
            String str2 = Build.TYPE;
            if ("eng".equals(str2) || "userdebug".equals(str2)) {
                if (!hashSet.contains(str + ":dev")) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }
}
