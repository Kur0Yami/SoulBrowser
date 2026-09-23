package org.jsoup.parser;

/* loaded from: classes4.dex */
public class ParseError {

    /* renamed from: a, reason: collision with root package name */
    public final int f22590a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f22591c;

    public ParseError(CharacterReader characterReader, String str) {
        this.f22590a = characterReader.pos();
        this.b = characterReader.lineNumber() + ":" + characterReader.columnNumber();
        this.f22591c = str;
    }

    public String getCursorPos() {
        return this.b;
    }

    public String getErrorMessage() {
        return this.f22591c;
    }

    public int getPosition() {
        return this.f22590a;
    }

    public String toString() {
        return "<" + this.b + ">: " + this.f22591c;
    }

    public ParseError(CharacterReader characterReader, String str, Object... objArr) {
        this.f22590a = characterReader.pos();
        this.b = characterReader.lineNumber() + ":" + characterReader.columnNumber();
        this.f22591c = String.format(str, objArr);
    }
}
