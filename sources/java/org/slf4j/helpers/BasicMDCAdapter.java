package org.slf4j.helpers;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.spi.MDCAdapter;

/* loaded from: classes4.dex */
public class BasicMDCAdapter implements MDCAdapter {

    /* renamed from: org.slf4j.helpers.BasicMDCAdapter$1, reason: invalid class name */
    /* loaded from: classes4.dex */
    public class AnonymousClass1 extends InheritableThreadLocal<Map<String, String>> {
        @Override // java.lang.InheritableThreadLocal
        public final Map<String, String> childValue(Map<String, String> map) {
            Map<String, String> map2 = map;
            if (map2 == null) {
                return null;
            }
            return new HashMap(map2);
        }
    }

    @Override // org.slf4j.spi.MDCAdapter
    public final void a(String str) {
        throw null;
    }

    @Override // org.slf4j.spi.MDCAdapter
    public final void clear() {
        throw null;
    }
}
