package androidx.webkit;

import androidx.annotation.RestrictTo;
import androidx.webkit.internal.ApiFeature;
import androidx.webkit.internal.ConditionallySupportedFeature;
import androidx.webkit.internal.WebViewFeatureInternal;
import j$.util.DesugarCollections;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public class WebViewFeature {

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface WebViewStartupFeature {
    }

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface WebViewSupportFeature {
    }

    public static boolean a(String str) {
        ApiFeature.N n = WebViewFeatureInternal.f1811a;
        Set<ConditionallySupportedFeature> unmodifiableSet = DesugarCollections.unmodifiableSet(ApiFeature.f1793c);
        HashSet hashSet = new HashSet();
        for (ConditionallySupportedFeature conditionallySupportedFeature : unmodifiableSet) {
            if (conditionallySupportedFeature.b().equals(str)) {
                hashSet.add(conditionallySupportedFeature);
            }
        }
        if (!hashSet.isEmpty()) {
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                if (((ConditionallySupportedFeature) it.next()).a()) {
                    return true;
                }
            }
            return false;
        }
        throw new RuntimeException("Unknown feature ".concat(str));
    }
}
