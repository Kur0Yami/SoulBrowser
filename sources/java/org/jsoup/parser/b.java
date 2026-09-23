package org.jsoup.parser;

import org.jsoup.internal.SoftPool;
import org.jsoup.parser.CharacterReader;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements CharacterReader.CharPredicate {
    @Override // org.jsoup.parser.CharacterReader.CharPredicate
    public final boolean a(char c2) {
        SoftPool softPool = CharacterReader.r;
        return (c2 == '\t' || c2 == '\n' || c2 == '\f' || c2 == '\r' || c2 == ' ' || c2 == '/' || c2 == '>') ? false : true;
    }
}
