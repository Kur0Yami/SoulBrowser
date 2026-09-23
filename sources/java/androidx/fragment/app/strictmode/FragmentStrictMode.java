package androidx.fragment.app.strictmode;

import a.a;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003\u0002\u0003\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Flag", "OnViolationListener", "Policy", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class FragmentStrictMode {

    /* renamed from: a, reason: collision with root package name */
    public static final Policy f1161a = Policy.f1163c;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\b\u0080\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Flag;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Flag {

        /* renamed from: c, reason: collision with root package name */
        public static final Flag f1162c;
        public static final Flag f;
        public static final Flag g;
        public static final Flag h;
        public static final Flag i;
        public static final Flag j;
        public static final Flag k;
        public static final Flag l;
        public static final Flag m;
        public static final /* synthetic */ Flag[] n;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r15v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.fragment.app.strictmode.FragmentStrictMode$Flag] */
        static {
            ?? r0 = new Enum("PENALTY_LOG", 0);
            f1162c = r0;
            ?? r1 = new Enum("PENALTY_DEATH", 1);
            f = r1;
            ?? r3 = new Enum("DETECT_FRAGMENT_REUSE", 2);
            g = r3;
            ?? r5 = new Enum("DETECT_FRAGMENT_TAG_USAGE", 3);
            h = r5;
            ?? r7 = new Enum("DETECT_WRONG_NESTED_HIERARCHY", 4);
            i = r7;
            ?? r9 = new Enum("DETECT_RETAIN_INSTANCE_USAGE", 5);
            j = r9;
            ?? r11 = new Enum("DETECT_SET_USER_VISIBLE_HINT", 6);
            k = r11;
            ?? r13 = new Enum("DETECT_TARGET_FRAGMENT_USAGE", 7);
            l = r13;
            ?? r15 = new Enum("DETECT_WRONG_FRAGMENT_CONTAINER", 8);
            m = r15;
            n = new Flag[]{r0, r1, r3, r5, r7, r9, r11, r13, r15};
        }

        public static Flag valueOf(String str) {
            return (Flag) Enum.valueOf(Flag.class, str);
        }

        public static Flag[] values() {
            return (Flag[]) n.clone();
        }
    }

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bæ\u0080\u0001\u0018\u00002\u00020\u0001ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0002À\u0006\u0001"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$OnViolationListener;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public interface OnViolationListener {
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u0002\u0002\u0003¨\u0006\u0004"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Builder", "Companion", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Policy {

        /* renamed from: c, reason: collision with root package name */
        public static final Policy f1163c = new Policy(SetsKt.emptySet(), MapsKt.emptyMap());

        /* renamed from: a, reason: collision with root package name */
        public final Set f1164a;
        public final LinkedHashMap b;

        @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Builder;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Builder {
        }

        @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;", "LAX", "Landroidx/fragment/app/strictmode/FragmentStrictMode$Policy;", "fragment_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
        /* loaded from: classes.dex */
        public static final class Companion {
        }

        public Policy(Set flags, Map allowedViolations) {
            Intrinsics.checkNotNullParameter(flags, "flags");
            Intrinsics.checkNotNullParameter(allowedViolations, "allowedViolations");
            this.f1164a = flags;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : allowedViolations.entrySet()) {
                linkedHashMap.put((String) entry.getKey(), (Set) entry.getValue());
            }
            this.b = linkedHashMap;
        }
    }

    public static Policy a(Fragment fragment) {
        while (fragment != null) {
            if (fragment.isAdded()) {
                FragmentManager parentFragmentManager = fragment.getParentFragmentManager();
                Intrinsics.checkNotNullExpressionValue(parentFragmentManager, "declaringFragment.parentFragmentManager");
                parentFragmentManager.getClass();
            }
            fragment = fragment.getParentFragment();
        }
        return f1161a;
    }

    public static void b(Policy policy, Violation violation) {
        Fragment fragment = violation.f1165c;
        String name = fragment.getClass().getName();
        Set set = policy.f1164a;
        if (set.contains(Flag.f1162c)) {
            Log.d("FragmentStrictMode", "Policy violation in ".concat(name), violation);
        }
        if (set.contains(Flag.f)) {
            a aVar = new a(0, name, violation);
            if (fragment.isAdded()) {
                Handler handler = fragment.getParentFragmentManager().u.g;
                Intrinsics.checkNotNullExpressionValue(handler, "fragment.parentFragmentManager.host.handler");
                if (Intrinsics.areEqual(handler.getLooper(), Looper.myLooper())) {
                    aVar.run();
                    return;
                } else {
                    handler.post(aVar);
                    return;
                }
            }
            aVar.run();
        }
    }

    public static void c(Violation violation) {
        if (FragmentManager.J(3)) {
            Log.d("FragmentManager", "StrictMode violation in ".concat(violation.f1165c.getClass().getName()), violation);
        }
    }

    public static final void d(Fragment fragment, String previousFragmentId) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(previousFragmentId, "previousFragmentId");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(previousFragmentId, "previousFragmentId");
        Violation violation = new Violation(fragment, "Attempting to reuse fragment " + fragment + " with previous ID " + previousFragmentId);
        c(violation);
        Policy a2 = a(fragment);
        if (a2.f1164a.contains(Flag.g) && e(a2, fragment.getClass(), FragmentReuseViolation.class)) {
            b(a2, violation);
        }
    }

    public static boolean e(Policy policy, Class cls, Class cls2) {
        Set set = (Set) policy.b.get(cls.getName());
        if (set == null) {
            return true;
        }
        if (!Intrinsics.areEqual(cls2.getSuperclass(), Violation.class) && CollectionsKt.contains(set, cls2.getSuperclass())) {
            return false;
        }
        return !set.contains(cls2);
    }
}
