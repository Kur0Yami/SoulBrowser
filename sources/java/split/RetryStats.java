package split;

import backend.DoHQueryToken;
import go.Seq;
import java.util.Arrays;

/* loaded from: classes4.dex */
public final class RetryStats implements Seq.Proxy, DoHQueryToken {
    private final int refnum;

    static {
        Split.touch();
    }

    public RetryStats(int i) {
        this.refnum = i;
        Seq.trackGoRef(i, this);
    }

    private static native int __New();

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof RetryStats)) {
            return false;
        }
        RetryStats retryStats = (RetryStats) obj;
        String sni = getSNI();
        String sni2 = retryStats.getSNI();
        if (sni == null) {
            if (sni2 != null) {
                return false;
            }
        } else if (!sni.equals(sni2)) {
            return false;
        }
        if (getBytes() != retryStats.getBytes() || getChunks() != retryStats.getChunks() || getSplit() != retryStats.getSplit() || getTimeout() != retryStats.getTimeout()) {
            return false;
        }
        return true;
    }

    public final native int getBytes();

    public final native short getChunks();

    public final native String getSNI();

    public final native short getSplit();

    public final native boolean getTimeout();

    public int hashCode() {
        return Arrays.hashCode(new Object[]{getSNI(), Integer.valueOf(getBytes()), Short.valueOf(getChunks()), Short.valueOf(getSplit()), Boolean.valueOf(getTimeout())});
    }

    @Override // go.Seq.GoObject
    public final int incRefnum() {
        Seq.incGoRef(this.refnum, this);
        return this.refnum;
    }

    public final native void setBytes(int i);

    public final native void setChunks(short s);

    public final native void setSNI(String str);

    public final native void setSplit(short s);

    public final native void setTimeout(boolean z);

    public String toString() {
        return "RetryStats{SNI:" + getSNI() + ",Bytes:" + getBytes() + ",Chunks:" + ((int) getChunks()) + ",Split:" + ((int) getSplit()) + ",Timeout:" + getTimeout() + ",}";
    }

    public RetryStats() {
        int __New = __New();
        this.refnum = __New;
        Seq.trackGoRef(__New, this);
    }
}
