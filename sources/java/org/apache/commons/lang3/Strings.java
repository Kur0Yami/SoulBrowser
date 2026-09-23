package org.apache.commons.lang3;

import org.apache.commons.lang3.builder.AbstractSupplier;

/* loaded from: classes4.dex */
public abstract class Strings {
    public static final Strings b = new Strings(false);

    /* renamed from: a, reason: collision with root package name */
    public final boolean f22359a;

    /* loaded from: classes4.dex */
    public static class Builder extends AbstractSupplier<Strings, Builder, RuntimeException> {
        @Override // org.apache.commons.lang3.function.FailableSupplier
        public final Object get() {
            return new Strings(false);
        }
    }

    /* loaded from: classes4.dex */
    public static final class CiStrings extends Strings {
    }

    /* loaded from: classes4.dex */
    public static final class CsStrings extends Strings {
    }

    public Strings(boolean z) {
        this.f22359a = z;
    }

    public final String a(String str, String str2, String str3) {
        if (!StringUtils.c(str) && !StringUtils.c(str2) && str3 != null) {
            if (this.f22359a) {
                str2 = str2.toLowerCase();
            }
            int i = 0;
            int a2 = CharSequenceUtils.a(str, str2, 0);
            if (a2 != -1) {
                int length = str2.length();
                StringBuilder sb = new StringBuilder(str.length() + (Math.max(str3.length() - length, 0) * 16));
                int i2 = -1;
                while (a2 != -1) {
                    sb.append((CharSequence) str, i, a2);
                    sb.append(str3);
                    i = a2 + length;
                    i2--;
                    if (i2 == 0) {
                        break;
                    }
                    a2 = CharSequenceUtils.a(str, str2, i);
                }
                sb.append((CharSequence) str, i, str.length());
                return sb.toString();
            }
            return str;
        }
        return str;
    }
}
