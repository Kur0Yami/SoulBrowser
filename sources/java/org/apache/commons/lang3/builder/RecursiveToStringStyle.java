package org.apache.commons.lang3.builder;

import java.util.Collection;
import java.util.Map;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes4.dex */
public class RecursiveToStringStyle extends ToStringStyle {
    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public void e(StringBuffer stringBuffer, String str, Object obj) {
        if (!ClassUtils.f22344c.containsKey(obj.getClass()) && !String.class.equals(obj.getClass())) {
            stringBuffer.append(new ToStringBuilder(obj, this, 0).toString());
        } else {
            stringBuffer.append(obj);
        }
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void f(StringBuffer stringBuffer, String str, Collection collection) {
        b(stringBuffer, collection);
        if (L() && collection != null) {
            ((Map) ToStringStyle.v.get()).put(collection, null);
            stringBuffer.append('@');
            stringBuffer.append(Integer.toHexString(System.identityHashCode(collection)));
        }
        m(stringBuffer, str, collection.toArray());
    }
}
