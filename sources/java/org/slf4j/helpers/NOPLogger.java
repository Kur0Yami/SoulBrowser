package org.slf4j.helpers;

/* loaded from: classes4.dex */
public class NOPLogger extends MarkerIgnoringBase {

    /* renamed from: c, reason: collision with root package name */
    public static final NOPLogger f22692c = new Object();

    @Override // org.slf4j.Logger
    public final boolean a() {
        return false;
    }

    @Override // org.slf4j.Logger
    public final void b(String str) {
    }

    @Override // org.slf4j.Logger
    public final boolean c() {
        return false;
    }

    @Override // org.slf4j.Logger
    public final void e(String str) {
    }

    @Override // org.slf4j.Logger
    public final void g(String str) {
    }

    @Override // org.slf4j.helpers.MarkerIgnoringBase, org.slf4j.helpers.NamedLoggerBase, org.slf4j.Logger
    public final String getName() {
        return "NOP";
    }

    @Override // org.slf4j.Logger
    public final void h(String str) {
    }

    @Override // org.slf4j.Logger
    public final void i(String str) {
    }

    @Override // org.slf4j.Logger
    public final void d(Exception exc, String str) {
    }

    @Override // org.slf4j.Logger
    public final void j(Object obj, String str) {
    }

    @Override // org.slf4j.Logger
    public final void f(Object obj, Object obj2, String str) {
    }
}
