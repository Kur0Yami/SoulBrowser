package org.jsoup.nodes;

import org.jsoup.internal.QuietAppendable;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Tag;

@Deprecated
/* loaded from: classes4.dex */
public class PseudoTextElement extends Element {
    public PseudoTextElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    public final void p(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
    }

    @Override // org.jsoup.nodes.Element
    public final void x(QuietAppendable quietAppendable, Document.OutputSettings outputSettings) {
    }
}
