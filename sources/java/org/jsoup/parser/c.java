package org.jsoup.parser;

import org.jsoup.internal.SoftPool;
import org.jsoup.parser.CharacterReader;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements CharacterReader.CharPredicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ boolean f22612a;

    @Override // org.jsoup.parser.CharacterReader.CharPredicate
    public final boolean a(char c2) {
        SoftPool softPool = CharacterReader.r;
        if (c2 != 0 && c2 != '&') {
            if (this.f22612a) {
                if (c2 != '\'') {
                    return true;
                }
                return false;
            }
            if (c2 != '\"') {
                return true;
            }
            return false;
        }
        return false;
    }
}
