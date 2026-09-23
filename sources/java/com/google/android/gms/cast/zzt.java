package com.google.android.gms.cast;

import com.google.android.gms.cast.internal.CastUtils;
import java.util.Collection;
import java.util.Locale;

/* loaded from: classes.dex */
final class zzt {

    /* renamed from: a, reason: collision with root package name */
    public final String f3674a;
    public final Collection b;

    public /* synthetic */ zzt(Collection collection, String str) {
        this.f3674a = str;
        this.b = collection;
    }

    public final String a() {
        boolean z;
        StringBuilder sb = new StringBuilder("com.google.android.gms.cast.CATEGORY_CAST");
        String str = this.f3674a;
        if (str != null) {
            String upperCase = str.toUpperCase(Locale.ROOT);
            if (upperCase.matches("[A-F0-9]+")) {
                sb.append("/");
                sb.append(upperCase);
            } else {
                throw new IllegalArgumentException("Invalid application ID: ".concat(str));
            }
        }
        boolean z2 = false;
        Collection<String> collection = this.b;
        if (collection != null) {
            if (!collection.isEmpty()) {
                if (str == null) {
                    z = false;
                } else {
                    z = true;
                }
                if (str == null) {
                    sb.append("/");
                }
                sb.append("/");
                boolean z3 = true;
                for (String str2 : collection) {
                    CastUtils.b(str2);
                    if (!z3) {
                        sb.append(",");
                    }
                    if (!CastUtils.f3603a.matcher(str2).matches()) {
                        StringBuilder sb2 = new StringBuilder(str2.length());
                        for (int i = 0; i < str2.length(); i++) {
                            char charAt = str2.charAt(i);
                            if ((charAt < 'A' || charAt > 'Z') && ((charAt < 'a' || charAt > 'z') && ((charAt < '0' || charAt > '9') && charAt != '_' && charAt != '-' && charAt != '.' && charAt != ':'))) {
                                sb2.append(String.format("%%%04x", Integer.valueOf(charAt)));
                            } else {
                                sb2.append(charAt);
                            }
                        }
                        str2 = sb2.toString();
                    }
                    sb.append(str2);
                    z3 = false;
                }
                z2 = z;
            } else {
                throw new IllegalArgumentException("Must specify at least one namespace");
            }
        } else if (str != null) {
            z2 = true;
        }
        if (true != z2 && collection == null) {
            sb.append("/");
        }
        if (collection == null) {
            sb.append("/");
        }
        sb.append("//ALLOW_IPV6");
        return sb.toString();
    }
}
