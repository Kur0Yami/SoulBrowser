package okio;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/PriorityQueue;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAsyncTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n1#1,514:1\n509#1,3:515\n509#1,3:518\n509#1,3:521\n509#1,3:524\n*S KotlinDebug\n*F\n+ 1 AsyncTimeout.kt\nokio/PriorityQueue\n*L\n415#1:515,3\n448#1:518,3\n481#1:521,3\n491#1:524,3\n*E\n"})
/* loaded from: classes4.dex */
public final class PriorityQueue {

    /* renamed from: a, reason: collision with root package name */
    public int f22213a;
    public AsyncTimeout[] b;

    public final void a(int i, AsyncTimeout asyncTimeout) {
        while (true) {
            int i2 = i >> 1;
            if (i2 == 0) {
                break;
            }
            AsyncTimeout asyncTimeout2 = this.b[i2];
            Intrinsics.checkNotNull(asyncTimeout2);
            if (Intrinsics.compare(0L, asyncTimeout.g - asyncTimeout2.g) <= 0) {
                break;
            }
            asyncTimeout2.f = i;
            this.b[i] = asyncTimeout2;
            i = i2;
        }
        this.b[i] = asyncTimeout;
        asyncTimeout.f = i;
    }

    public final void b(AsyncTimeout node) {
        AsyncTimeout asyncTimeout;
        Intrinsics.checkNotNullParameter(node, "node");
        int i = node.f;
        if (i != -1) {
            int i2 = this.f22213a;
            AsyncTimeout asyncTimeout2 = this.b[i2];
            Intrinsics.checkNotNull(asyncTimeout2);
            node.f = -1;
            this.b[i2] = null;
            this.f22213a = i2 - 1;
            if (node == asyncTimeout2) {
                return;
            }
            int compare = Intrinsics.compare(0L, asyncTimeout2.g - node.g);
            if (compare == 0) {
                this.b[i] = asyncTimeout2;
                asyncTimeout2.f = i;
                return;
            }
            if (compare < 0) {
                while (true) {
                    int i3 = i << 1;
                    int i4 = i3 + 1;
                    int i5 = this.f22213a;
                    if (i4 <= i5) {
                        asyncTimeout = this.b[i3];
                        Intrinsics.checkNotNull(asyncTimeout);
                        AsyncTimeout asyncTimeout3 = this.b[i4];
                        Intrinsics.checkNotNull(asyncTimeout3);
                        if (Intrinsics.compare(0L, asyncTimeout3.g - asyncTimeout.g) >= 0) {
                            asyncTimeout = asyncTimeout3;
                        }
                    } else {
                        if (i3 > i5) {
                            break;
                        }
                        asyncTimeout = this.b[i3];
                        Intrinsics.checkNotNull(asyncTimeout);
                    }
                    if (Intrinsics.compare(0L, asyncTimeout.g - asyncTimeout2.g) <= 0) {
                        break;
                    }
                    int i6 = asyncTimeout.f;
                    asyncTimeout.f = i;
                    this.b[i] = asyncTimeout;
                    i = i6;
                }
                this.b[i] = asyncTimeout2;
                asyncTimeout2.f = i;
                return;
            }
            a(i, asyncTimeout2);
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }
}
