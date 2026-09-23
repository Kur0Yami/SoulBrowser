package org.apache.commons.text.lookup;

import org.apache.commons.text.StringEscapeUtils;

/* loaded from: classes4.dex */
final class XmlDecoderStringLookup extends AbstractStringLookup {
    public static final XmlDecoderStringLookup b = new Object();

    @Override // org.apache.commons.text.lookup.StringLookup
    public final String a(String str) {
        return StringEscapeUtils.d.b(str);
    }
}
