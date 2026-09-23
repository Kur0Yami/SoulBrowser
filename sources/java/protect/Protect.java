package protect;

import go.Seq;

/* loaded from: classes4.dex */
public abstract class Protect {

    /* loaded from: classes4.dex */
    public static final class proxyProtector implements Seq.Proxy, Protector {
        private final int refnum;

        public proxyProtector(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // protect.Protector
        public native String getResolvers();

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // protect.Protector
        public native boolean protect(int i);
    }

    static {
        Seq.touch();
        _init();
    }

    private Protect() {
    }

    private static native void _init();

    public static void touch() {
    }
}
