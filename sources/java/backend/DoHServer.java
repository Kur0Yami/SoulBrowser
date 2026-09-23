package backend;

import go.Seq;
import java.util.Arrays;
import protect.Protector;

/* loaded from: classes.dex */
public final class DoHServer implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Backend.touch();
    }

    public DoHServer(String str, String str2, Protector protector, DoHListener doHListener) {
        int __NewDoHServer = __NewDoHServer(str, str2, protector, doHListener);
        this.refnum = __NewDoHServer;
        Seq.trackGoRef(__NewDoHServer, this);
    }

    private static native int __NewDoHServer(String str, String str2, Protector protector, DoHListener doHListener);

    public boolean equals(Object obj) {
        if (obj != null && (obj instanceof DoHServer)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[0]);
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public String toString() {
        return "DoHServer{}";
    }

    public DoHServer(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }
}
