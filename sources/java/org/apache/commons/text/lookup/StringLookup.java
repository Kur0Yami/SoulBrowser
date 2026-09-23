package org.apache.commons.text.lookup;

import java.util.function.UnaryOperator;

@FunctionalInterface
/* loaded from: classes4.dex */
public interface StringLookup extends UnaryOperator<String> {
    String a(String str);

    String b(String str);
}
