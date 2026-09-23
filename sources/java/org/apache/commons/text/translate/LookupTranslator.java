package org.apache.commons.text.translate;

import j$.util.Objects;
import java.io.StringWriter;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes4.dex */
public class LookupTranslator extends CharSequenceTranslator {
    public final HashMap b;

    /* renamed from: c, reason: collision with root package name */
    public final BitSet f22513c;
    public final int d;
    public final int e;

    public LookupTranslator(Map map) {
        Objects.requireNonNull(map, "lookupMap");
        this.b = new HashMap();
        this.f22513c = new BitSet();
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (Map.Entry entry : map.entrySet()) {
            this.b.put(((CharSequence) entry.getKey()).toString(), ((CharSequence) entry.getValue()).toString());
            this.f22513c.set(((CharSequence) entry.getKey()).charAt(0));
            int length = ((CharSequence) entry.getKey()).length();
            i = length < i ? length : i;
            if (length > i2) {
                i2 = length;
            }
        }
        this.d = i;
        this.e = i2;
    }

    @Override // org.apache.commons.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        if (this.f22513c.get(charSequence.charAt(i))) {
            int i2 = this.e;
            if (i + i2 > charSequence.length()) {
                i2 = charSequence.length() - i;
            }
            while (i2 >= this.d) {
                CharSequence subSequence = charSequence.subSequence(i, i + i2);
                String str = (String) this.b.get(subSequence.toString());
                if (str != null) {
                    stringWriter.write(str);
                    return Character.codePointCount(subSequence, 0, subSequence.length());
                }
                i2--;
            }
        }
        return 0;
    }
}
