package org.jsoup.parser;

import java.util.ArrayList;

/* loaded from: classes4.dex */
public class ParseErrorList extends ArrayList<ParseError> {

    /* renamed from: c, reason: collision with root package name */
    public final int f22592c;
    public final int f;

    public ParseErrorList(int i, int i2) {
        super(i);
        this.f22592c = i;
        this.f = i2;
    }

    public static ParseErrorList noTracking() {
        return new ParseErrorList(0, 0);
    }

    public static ParseErrorList tracking(int i) {
        return new ParseErrorList(16, i);
    }

    public final boolean a() {
        if (size() < this.f) {
            return true;
        }
        return false;
    }

    @Override // java.util.ArrayList
    public Object clone() {
        return super.clone();
    }
}
