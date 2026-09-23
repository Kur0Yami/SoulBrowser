package io.opencensus.tags;

import io.opencensus.internal.StringUtils;
import javax.annotation.concurrent.Immutable;

@Immutable
/* loaded from: classes3.dex */
public abstract class TagKey {
    public static TagKey a(String str) {
        boolean z;
        int indexOf;
        int i = 0;
        if (!str.isEmpty() && str.length() <= 255 && StringUtils.a(str)) {
            z = true;
        } else {
            z = false;
        }
        Object[] objArr = {str};
        if (!z) {
            StringBuilder sb = new StringBuilder(39);
            int i2 = 0;
            while (i < 1 && (indexOf = "Invalid TagKey name: %s".indexOf("%s", i2)) != -1) {
                sb.append((CharSequence) "Invalid TagKey name: %s", i2, indexOf);
                sb.append(objArr[i]);
                i2 = indexOf + 2;
                i++;
            }
            sb.append((CharSequence) "Invalid TagKey name: %s", i2, 23);
            if (i < 1) {
                sb.append(" [");
                sb.append(objArr[i]);
                for (int i3 = i + 1; i3 < 1; i3++) {
                    sb.append(", ");
                    sb.append(objArr[i3]);
                }
                sb.append(']');
            }
            throw new IllegalArgumentException(sb.toString());
        }
        return new AutoValue_TagKey(str);
    }

    public abstract String b();
}
