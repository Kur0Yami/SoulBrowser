package backend;

import go.Seq;
import intra.Intra;
import intra.Listener;
import protect.Protect;
import protect.Protector;

/* loaded from: classes.dex */
public abstract class Backend {

    /* loaded from: classes.dex */
    public static final class proxyDoHListener implements Seq.Proxy, DoHListener {
        private final int refnum;

        public proxyDoHListener(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }

        @Override // backend.DoHListener
        public native DoHQueryToken onQuery(String str);

        @Override // backend.DoHListener
        public native void onResponse(DoHQueryToken doHQueryToken, DoHQuerySumary doHQuerySumary);
    }

    /* loaded from: classes.dex */
    public static final class proxyDoHQueryToken implements Seq.Proxy, DoHQueryToken {
        private final int refnum;

        public proxyDoHQueryToken(int i) {
            this.refnum = i;
            Seq.trackGoRef(i, this);
        }

        @Override // go.Seq.GoObject
        public final int incRefnum() {
            Seq.incGoRef(this.refnum, this);
            return this.refnum;
        }
    }

    static {
        Seq.touch();
        Protect.touch();
        Intra.touch();
        _init();
    }

    private Backend() {
    }

    private static native void _init();

    public static native Session connectSession(long j, String str, DoHServer doHServer, Protector protector, Listener listener);

    public static native DoHServer newDoHServer(String str, String str2, Protector protector, DoHListener doHListener);

    public static native void probe(DoHServer doHServer);

    public static void touch() {
    }
}
