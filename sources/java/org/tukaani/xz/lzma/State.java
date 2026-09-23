package org.tukaani.xz.lzma;

/* loaded from: classes4.dex */
final class State {

    /* renamed from: a, reason: collision with root package name */
    public int f22719a;

    public final void a() {
        int i = this.f22719a;
        if (i <= 3) {
            this.f22719a = 0;
        } else if (i <= 9) {
            this.f22719a = i - 3;
        } else {
            this.f22719a = i - 6;
        }
    }
}
