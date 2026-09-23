package com.google.common.escape;

import com.google.common.annotations.GwtCompatible;
import java.util.Collections;
import java.util.HashMap;
import kotlin.jvm.internal.CharCompanionObject;

@GwtCompatible
/* loaded from: classes3.dex */
public final class Escapers {

    /* renamed from: com.google.common.escape.Escapers$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends CharEscaper {
    }

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f12431a = new HashMap();
        public char b = CharCompanionObject.MAX_VALUE;

        /* renamed from: c, reason: collision with root package name */
        public String f12432c = null;

        /* renamed from: com.google.common.escape.Escapers$Builder$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends ArrayBasedCharEscaper {
        }

        public final void a() {
            char[][] cArr;
            HashMap hashMap = this.f12431a;
            hashMap.getClass();
            if (hashMap.isEmpty()) {
                cArr = ArrayBasedEscaperMap.f12430a;
            } else {
                char[][] cArr2 = new char[((Character) Collections.max(hashMap.keySet())).charValue() + 1];
                for (Character ch : hashMap.keySet()) {
                    cArr2[ch.charValue()] = ((String) hashMap.get(ch)).toCharArray();
                }
                cArr = cArr2;
            }
            int length = cArr.length;
            String str = this.f12432c;
            if (str != null) {
                str.toCharArray();
            }
        }
    }
}
