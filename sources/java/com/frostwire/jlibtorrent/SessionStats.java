package com.frostwire.jlibtorrent;

/* loaded from: classes.dex */
public final class SessionStats {

    /* renamed from: a, reason: collision with root package name */
    public final Average[] f2618a = new Average[6];
    public long b;

    /* loaded from: classes.dex */
    public static final class Average {

        /* renamed from: a, reason: collision with root package name */
        public long f2619a;
        public long b;

        public final void a(long j) {
            this.b += j;
            this.f2619a += j;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public SessionStats() {
        int i = 0;
        while (true) {
            Average[] averageArr = this.f2618a;
            if (i < averageArr.length) {
                averageArr[i] = new Object();
                i++;
            } else {
                return;
            }
        }
    }
}
