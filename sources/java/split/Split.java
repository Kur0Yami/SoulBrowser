package split;

import go.Seq;

/* loaded from: classes4.dex */
public abstract class Split {

    /* loaded from: classes4.dex */
    public static final class proxyDuplexConn implements Seq.Proxy, DuplexConn {
        private final int refnum;

        public proxyDuplexConn(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // split.DuplexConn
        public native void close();

        @Override // split.DuplexConn
        public native void closeRead();

        @Override // split.DuplexConn
        public native void closeWrite();

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // split.DuplexConn
        public native long read(byte[] bArr);

        @Override // split.DuplexConn
        public native long write(byte[] bArr);
    }

    static {
        Seq.touch();
        _init();
    }

    private Split() {
    }

    private static native void _init();

    public static void touch() {
    }
}
