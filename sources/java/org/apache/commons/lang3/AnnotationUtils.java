package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Collection;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

/* loaded from: classes4.dex */
public class AnnotationUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final ToStringStyle f22331a;

    /* renamed from: org.apache.commons.lang3.AnnotationUtils$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends ToStringStyle {
        public static final /* synthetic */ int w = 0;

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final String B(Class cls) {
            HashMap hashMap = ClassUtils.f22343a;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            ClassUtils.a(cls, linkedHashSet);
            return (String) Collection.EL.stream(new ArrayList(linkedHashSet)).filter(new a(0)).findFirst().map(new b(0)).orElse(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        }

        @Override // org.apache.commons.lang3.builder.ToStringStyle
        public final void e(StringBuffer stringBuffer, String str, Object obj) {
            if (obj instanceof Annotation) {
                Annotation annotation = (Annotation) obj;
                ToStringStyle toStringStyle = AnnotationUtils.f22331a;
                ToStringBuilder toStringBuilder = new ToStringBuilder(annotation, AnnotationUtils.f22331a, 0);
                for (Method method : annotation.annotationType().getDeclaredMethods()) {
                    if (method.getParameterTypes().length <= 0) {
                        try {
                            toStringBuilder.g.a(toStringBuilder.f22368c, method.getName(), method.invoke(annotation, null), null);
                        } catch (ReflectiveOperationException e) {
                            throw new RuntimeException(e);
                        }
                    }
                }
                obj = toStringBuilder.toString();
            }
            stringBuffer.append(obj);
        }
    }

    static {
        ToStringStyle toStringStyle = new ToStringStyle();
        toStringStyle.f = true;
        toStringStyle.g = true;
        toStringStyle.h = false;
        toStringStyle.i = "(";
        toStringStyle.j = ")";
        toStringStyle.l = ", ";
        toStringStyle.m = "[";
        toStringStyle.o = "]";
        f22331a = toStringStyle;
    }
}
