package org.apache.commons.codec.language;

import org.apache.commons.codec.StringEncoder;

/* loaded from: classes4.dex */
public class ColognePhonetic implements StringEncoder {

    /* loaded from: classes4.dex */
    public abstract class CologneBuffer {
        public abstract char[] a(int i);

        public final String toString() {
            return new String(a(0));
        }
    }

    /* loaded from: classes4.dex */
    public class CologneInputBuffer extends CologneBuffer {
        @Override // org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
        public final char[] a(int i) {
            char[] cArr = new char[i];
            throw null;
        }
    }

    /* loaded from: classes4.dex */
    public class CologneOutputBuffer extends CologneBuffer {
        @Override // org.apache.commons.codec.language.ColognePhonetic.CologneBuffer
        public final char[] a(int i) {
            char[] cArr = new char[i];
            System.arraycopy(null, 0, cArr, 0, i);
            return cArr;
        }
    }
}
