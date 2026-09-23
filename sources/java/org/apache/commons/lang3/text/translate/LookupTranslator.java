package org.apache.commons.lang3.text.translate;

import java.io.StringWriter;
import java.util.HashMap;
import java.util.HashSet;

@Deprecated
/* loaded from: classes4.dex */
public class LookupTranslator extends CharSequenceTranslator {
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashSet f22399c = new HashSet();
    public final int d;
    public final int e;

    public LookupTranslator(CharSequence[]... charSequenceArr) {
        int i = Integer.MAX_VALUE;
        int i2 = 0;
        for (CharSequence[] charSequenceArr2 : charSequenceArr) {
            this.b.put(charSequenceArr2[0].toString(), charSequenceArr2[1].toString());
            this.f22399c.add(Character.valueOf(charSequenceArr2[0].charAt(0)));
            int length = charSequenceArr2[0].length();
            i = length < i ? length : i;
            if (length > i2) {
                i2 = length;
            }
        }
        this.d = i;
        this.e = i2;
    }

    @Override // org.apache.commons.lang3.text.translate.CharSequenceTranslator
    public final int a(CharSequence charSequence, int i, StringWriter stringWriter) {
        if (this.f22399c.contains(Character.valueOf(charSequence.charAt(i)))) {
            int i2 = this.e;
            if (i + i2 > charSequence.length()) {
                i2 = charSequence.length() - i;
            }
            while (i2 >= this.d) {
                String str = (String) this.b.get(charSequence.subSequence(i, i + i2).toString());
                if (str != null) {
                    stringWriter.write(str);
                    return i2;
                }
                i2--;
            }
            return 0;
        }
        return 0;
    }
}
