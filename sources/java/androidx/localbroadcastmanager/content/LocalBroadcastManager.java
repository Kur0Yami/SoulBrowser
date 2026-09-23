package androidx.localbroadcastmanager.content;

import android.os.Handler;
import android.os.Message;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class LocalBroadcastManager {

    /* renamed from: androidx.localbroadcastmanager.content.LocalBroadcastManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
                super.handleMessage(message);
                return;
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static final class BroadcastRecord {
    }

    /* loaded from: classes.dex */
    public static final class ReceiverRecord {
        public final String toString() {
            StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
            sb.append("Receiver{null filter=null");
            sb.append("}");
            return sb.toString();
        }
    }
}
