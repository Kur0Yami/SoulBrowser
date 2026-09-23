package org.apache.commons.lang3.builder;

import java.util.Map;
import org.apache.commons.lang3.CharSequenceUtils;

/* loaded from: classes4.dex */
public class ToStringBuilder implements Builder<String> {
    public static volatile ToStringStyle h = ToStringStyle.u;

    /* renamed from: c, reason: collision with root package name */
    public final StringBuffer f22368c;
    public final Object f;
    public final ToStringStyle g;

    public ToStringBuilder(Object obj, ToStringStyle toStringStyle, int i) {
        toStringStyle = toStringStyle == null ? h : toStringStyle;
        StringBuffer stringBuffer = new StringBuffer(512);
        this.f22368c = stringBuffer;
        this.g = toStringStyle;
        this.f = obj;
        if (obj != null) {
            toStringStyle.b(stringBuffer, obj);
            if (toStringStyle.L()) {
                ((Map) ToStringStyle.v.get()).put(obj, null);
                stringBuffer.append('@');
                stringBuffer.append(Integer.toHexString(System.identityHashCode(obj)));
            }
            stringBuffer.append(toStringStyle.x());
            if (toStringStyle.I()) {
                stringBuffer.append(toStringStyle.z());
                return;
            }
            return;
        }
        toStringStyle.getClass();
    }

    public String toString() {
        ToStringStyle toStringStyle = this.g;
        StringBuffer stringBuffer = this.f22368c;
        Object obj = this.f;
        if (obj == null) {
            stringBuffer.append(toStringStyle.A());
        } else {
            toStringStyle.getClass();
            String z = toStringStyle.z();
            boolean z2 = false;
            if (stringBuffer != null && z != null) {
                int length = z.length();
                if (length <= stringBuffer.length()) {
                    z2 = CharSequenceUtils.b(stringBuffer, false, stringBuffer.length() - length, z, length);
                }
            } else if (stringBuffer == z) {
                z2 = true;
            }
            if (z2) {
                stringBuffer.setLength(stringBuffer.length() - toStringStyle.z().length());
            }
            stringBuffer.append(toStringStyle.w());
            ToStringStyle.O(obj);
        }
        return stringBuffer.toString();
    }
}
