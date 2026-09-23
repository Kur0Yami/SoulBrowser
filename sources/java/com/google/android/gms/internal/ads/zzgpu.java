package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class zzgpu {
    public static final void a(StringBuilder sb, Iterator it, String str) {
        CharSequence obj;
        CharSequence obj2;
        try {
            if (it.hasNext()) {
                Object next = it.next();
                Objects.requireNonNull(next);
                if (next instanceof CharSequence) {
                    obj = (CharSequence) next;
                } else {
                    obj = next.toString();
                }
                sb.append(obj);
                while (it.hasNext()) {
                    sb.append((CharSequence) str);
                    Object next2 = it.next();
                    Objects.requireNonNull(next2);
                    if (next2 instanceof CharSequence) {
                        obj2 = (CharSequence) next2;
                    } else {
                        obj2 = next2.toString();
                    }
                    sb.append(obj2);
                }
            }
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }
}
