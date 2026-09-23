package net.lingala.zip4j.exception;

/* loaded from: classes4.dex */
public class ZipException extends Exception {

    /* renamed from: c, reason: collision with root package name */
    public int f21990c;

    public ZipException(String str) {
        super(str);
        this.f21990c = -1;
    }

    public ZipException(String str, int i) {
        super(str);
        this.f21990c = i;
    }

    public ZipException(Exception exc) {
        super(exc);
        this.f21990c = -1;
    }
}
