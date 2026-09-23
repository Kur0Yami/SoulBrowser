package intra;

import go.Seq;
import protect.Protect;
import split.Split;

/* loaded from: classes3.dex */
public abstract class Intra {

    /* loaded from: classes3.dex */
    public static final class proxyListener implements Seq.Proxy, Listener {
        private final int refnum;

        public proxyListener(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // intra.Listener, intra.TCPListener
        public native void onTCPSocketClosed(TCPSocketSummary tCPSocketSummary);

        @Override // intra.Listener, intra.UDPListener
        public native void onUDPSocketClosed(UDPSocketSummary uDPSocketSummary);
    }

    /* loaded from: classes3.dex */
    public static final class proxyTCPListener implements Seq.Proxy, TCPListener {
        private final int refnum;

        public proxyTCPListener(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // intra.TCPListener
        public native void onTCPSocketClosed(TCPSocketSummary tCPSocketSummary);
    }

    /* loaded from: classes3.dex */
    public static final class proxyUDPListener implements Seq.Proxy, UDPListener {
        private final int refnum;

        public proxyUDPListener(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // intra.UDPListener
        public native void onUDPSocketClosed(UDPSocketSummary uDPSocketSummary);
    }

    static {
        Seq.touch();
        Protect.touch();
        Split.touch();
        _init();
    }

    private Intra() {
    }

    private static native void _init();

    public static void touch() {
    }
}
