package org.apache.commons.lang3.util;

import j$.util.Objects;
import java.util.Iterator;
import java.util.StringTokenizer;

/* loaded from: classes4.dex */
public class IterableStringTokenizer extends StringTokenizer implements Iterable<String> {
    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new Iterator<String>() { // from class: org.apache.commons.lang3.util.IterableStringTokenizer.1
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return IterableStringTokenizer.this.hasMoreElements();
            }

            @Override // java.util.Iterator
            public final String next() {
                return Objects.toString(IterableStringTokenizer.this.nextElement(), null);
            }
        };
    }
}
