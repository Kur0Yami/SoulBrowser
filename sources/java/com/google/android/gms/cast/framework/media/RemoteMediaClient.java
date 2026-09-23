package com.google.android.gms.cast.framework.media;

import android.os.Looper;
import com.google.android.gms.cast.AdBreakStatus;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaLoadRequestData;
import com.google.android.gms.cast.MediaQueueItem;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.MediaStatus;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.cast.zzbm;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzfk;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class RemoteMediaClient implements Cast.MessageReceivedCallback {
    public static final Logger k = new Logger("RemoteMediaClient", null);

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.cast.internal.zzar f3506c;
    public final zzax d;
    public final MediaQueue e;
    public com.google.android.gms.cast.zzq f;
    public final CopyOnWriteArrayList g = new CopyOnWriteArrayList();
    public final CopyOnWriteArrayList h = new CopyOnWriteArrayList();
    public final ConcurrentHashMap i = new ConcurrentHashMap();
    public final ConcurrentHashMap j = new ConcurrentHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final Object f3505a = new Object();
    public final zzfk b = new zzfk(Looper.getMainLooper());

    @Deprecated
    /* loaded from: classes.dex */
    public interface Listener {
        void a();

        void b();

        void c();

        void g();

        void i();

        void l();
    }

    /* loaded from: classes.dex */
    public interface MediaChannelResult extends Result {
    }

    /* loaded from: classes.dex */
    public interface ParseAdsInfoCallback {
    }

    /* loaded from: classes.dex */
    public interface ProgressListener {
        void a(long j, long j2);
    }

    static {
        String str = com.google.android.gms.cast.internal.zzar.x;
    }

    public RemoteMediaClient(com.google.android.gms.cast.internal.zzar zzarVar) {
        zzax zzaxVar = new zzax(this);
        this.d = zzaxVar;
        com.google.android.gms.cast.internal.zzar zzarVar2 = (com.google.android.gms.cast.internal.zzar) Preconditions.checkNotNull(zzarVar);
        this.f3506c = zzarVar2;
        zzarVar2.h = new zzbe(this);
        zzarVar2.f3628c = zzaxVar;
        this.e = new MediaQueue(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.common.api.internal.BasePendingResult, com.google.android.gms.cast.framework.media.zzaz, com.google.android.gms.common.api.PendingResult] */
    public static PendingResult I() {
        ?? basePendingResult = new BasePendingResult((GoogleApiClient) null);
        basePendingResult.setResult(new zzay(basePendingResult, new Status(17, (String) null)));
        return basePendingResult;
    }

    public static final void L(zzbc zzbcVar) {
        try {
            zzbcVar.c();
        } catch (IllegalArgumentException e) {
            throw e;
        } catch (Throwable unused) {
            zzbcVar.setResult(new zzbb(zzbcVar, new Status(2100)));
        }
    }

    public final void A() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        int h = h();
        if (h != 4 && h != 2) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            if (!J()) {
                I();
                return;
            } else {
                L(new zzar(this));
                return;
            }
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzap(this));
        }
    }

    public final void B(zzbm zzbmVar) {
        zzax zzaxVar = this.d;
        com.google.android.gms.cast.zzq zzqVar = this.f;
        if (zzqVar != zzbmVar) {
            if (zzqVar != null) {
                com.google.android.gms.cast.internal.zzar zzarVar = this.f3506c;
                List list = zzarVar.d;
                synchronized (list) {
                    try {
                        Iterator it = list.iterator();
                        while (it.hasNext()) {
                            ((com.google.android.gms.cast.internal.zzav) it.next()).e(2002);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                zzarVar.i();
                this.e.a();
                Preconditions.checkMainThread("Must be called from the main thread.");
                zzqVar.a(this.f3506c.b);
                zzaxVar.f3561a = null;
                this.b.removeCallbacksAndMessages(null);
            }
            this.f = zzbmVar;
            if (zzbmVar != null) {
                zzaxVar.f3561a = zzbmVar;
            }
        }
    }

    public final void C() {
        com.google.android.gms.cast.zzq zzqVar = this.f;
        if (zzqVar == null) {
            return;
        }
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzqVar.e(this.f3506c.b, this);
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzu(this));
        }
    }

    public final boolean D() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g != null && g.i == 5) {
            return true;
        }
        return false;
    }

    public final boolean E() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (l()) {
            MediaStatus g = g();
            if (g == null || (2 & g.l) == 0 || g.y == null) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int F() {
        MediaQueueItem e;
        if (f() != null && j()) {
            if (k()) {
                return 6;
            }
            if (o()) {
                return 3;
            }
            if (n()) {
                return 2;
            }
            if (m() && (e = e()) != null && e.f3450c != null) {
                return 6;
            }
        }
        return 0;
    }

    public final boolean G() {
        if (j()) {
            MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(g());
            if ((128 & mediaStatus.l) == 0 && mediaStatus.t == 0) {
                Integer num = (Integer) mediaStatus.B.get(mediaStatus.g);
                if (num == null || num.intValue() <= 0) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean H() {
        if (j()) {
            MediaStatus mediaStatus = (MediaStatus) Preconditions.checkNotNull(g());
            if ((64 & mediaStatus.l) == 0 && mediaStatus.t == 0) {
                Integer num = (Integer) mediaStatus.B.get(mediaStatus.g);
                if (num == null || num.intValue() >= mediaStatus.u.size() - 1) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    public final boolean J() {
        return this.f != null;
    }

    public final void K(Set set) {
        MediaInfo mediaInfo;
        HashSet hashSet = new HashSet(set);
        if (!o() && !n() && !k() && !D()) {
            if (m()) {
                MediaQueueItem e = e();
                if (e != null && (mediaInfo = e.f3450c) != null) {
                    Iterator it = hashSet.iterator();
                    while (it.hasNext()) {
                        ((ProgressListener) it.next()).a(0L, mediaInfo.i);
                    }
                    return;
                }
                return;
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                ((ProgressListener) it2.next()).a(0L, 0L);
            }
            return;
        }
        Iterator it3 = hashSet.iterator();
        while (it3.hasNext()) {
            ((ProgressListener) it3.next()).a(d(), i());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x0184, code lost:
    
        if (r4 != false) goto L80;
     */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a5 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00f1 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0102 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x010e A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0118 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0125 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0132 A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:60:0x013f A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x017d A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x018a A[Catch: JSONException -> 0x0062, TryCatch #0 {JSONException -> 0x0062, blocks: (B:9:0x0044, B:11:0x0050, B:13:0x005a, B:21:0x006d, B:23:0x0079, B:25:0x0089, B:30:0x00a5, B:33:0x00aa, B:34:0x00ed, B:36:0x00f1, B:37:0x00fe, B:39:0x0102, B:40:0x010a, B:42:0x010e, B:43:0x0114, B:45:0x0118, B:47:0x011c, B:48:0x0121, B:50:0x0125, B:52:0x0129, B:53:0x012e, B:55:0x0132, B:57:0x0136, B:58:0x013b, B:60:0x013f, B:62:0x0149, B:63:0x0153, B:65:0x0159, B:67:0x0163, B:68:0x0169, B:70:0x016f, B:72:0x0179, B:74:0x017d, B:75:0x0186, B:77:0x018a, B:78:0x01b6, B:79:0x01ba, B:81:0x01c0, B:86:0x00af, B:87:0x0093, B:89:0x009b, B:93:0x0190, B:95:0x0196, B:96:0x019b, B:98:0x019f, B:99:0x01a4, B:101:0x01a8, B:102:0x01ad, B:104:0x01b1, B:108:0x01d2, B:109:0x01e1, B:111:0x01e7, B:117:0x01ff, B:119:0x020b, B:121:0x021f, B:125:0x0230, B:126:0x023c, B:128:0x0242, B:134:0x0255, B:136:0x026a, B:137:0x028c, B:139:0x0292, B:142:0x029d, B:147:0x02ad, B:148:0x02b9, B:150:0x02bf, B:156:0x02d2, B:157:0x02de, B:159:0x02e4, B:169:0x02f7, B:170:0x02fb, B:172:0x0301, B:174:0x0311, B:176:0x0315, B:177:0x0324, B:179:0x032a, B:186:0x033d, B:191:0x034f, B:192:0x035e, B:194:0x0364, B:200:0x037c, B:204:0x0389, B:205:0x0396, B:207:0x039c, B:209:0x03ae, B:210:0x03ba, B:212:0x03c0, B:218:0x03d3), top: B:5:0x0037 }] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x00fd  */
    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.lang.String r45) {
        /*
            Method dump skipped, instructions count: 1070
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.RemoteMediaClient.a(java.lang.String):void");
    }

    public final void b(ProgressListener progressListener, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        ConcurrentHashMap concurrentHashMap = this.i;
        if (concurrentHashMap.containsKey(progressListener)) {
            return;
        }
        Long valueOf = Long.valueOf(j);
        ConcurrentHashMap concurrentHashMap2 = this.j;
        zzbg zzbgVar = (zzbg) concurrentHashMap2.get(valueOf);
        if (zzbgVar == null) {
            zzbgVar = new zzbg(this, j);
            concurrentHashMap2.put(valueOf, zzbgVar);
        }
        zzbgVar.f3571a.add(progressListener);
        concurrentHashMap.put(progressListener, zzbgVar);
        if (j()) {
            RemoteMediaClient remoteMediaClient = zzbgVar.e;
            zzfk zzfkVar = remoteMediaClient.b;
            Runnable runnable = zzbgVar.f3572c;
            zzfkVar.removeCallbacks(runnable);
            zzbgVar.d = true;
            remoteMediaClient.b.postDelayed(runnable, zzbgVar.b);
        }
    }

    public final long c() {
        long j;
        MediaStatus mediaStatus;
        AdBreakStatus adBreakStatus;
        synchronized (this.f3505a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            com.google.android.gms.cast.internal.zzar zzarVar = this.f3506c;
            j = 0;
            if (zzarVar.e != 0 && (mediaStatus = zzarVar.f) != null && (adBreakStatus = mediaStatus.w) != null) {
                double d = mediaStatus.h;
                double d2 = 0.0d;
                if (d == 0.0d) {
                    d = 1.0d;
                }
                if (mediaStatus.i == 2) {
                    d2 = d;
                }
                j = zzarVar.f(d2, adBreakStatus.f, 0L);
            }
        }
        return j;
    }

    public final long d() {
        long l;
        synchronized (this.f3505a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            l = this.f3506c.l();
        }
        return l;
    }

    public final MediaQueueItem e() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g == null) {
            return null;
        }
        return g.G(g.p);
    }

    public final MediaInfo f() {
        MediaInfo mediaInfo;
        synchronized (this.f3505a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaStatus mediaStatus = this.f3506c.f;
            if (mediaStatus == null) {
                mediaInfo = null;
            } else {
                mediaInfo = mediaStatus.f3455c;
            }
        }
        return mediaInfo;
    }

    public final MediaStatus g() {
        MediaStatus mediaStatus;
        synchronized (this.f3505a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            mediaStatus = this.f3506c.f;
        }
        return mediaStatus;
    }

    public final int h() {
        int i;
        synchronized (this.f3505a) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus g = g();
                if (g != null) {
                    i = g.i;
                } else {
                    i = 1;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public final long i() {
        MediaInfo mediaInfo;
        long j;
        synchronized (this.f3505a) {
            Preconditions.checkMainThread("Must be called from the main thread.");
            MediaStatus mediaStatus = this.f3506c.f;
            if (mediaStatus == null) {
                mediaInfo = null;
            } else {
                mediaInfo = mediaStatus.f3455c;
            }
            if (mediaInfo != null) {
                j = mediaInfo.i;
            } else {
                j = 0;
            }
        }
        return j;
    }

    public final boolean j() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!k() && !D() && !o() && !n() && !m()) {
            return false;
        }
        return true;
    }

    public final boolean k() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g != null && g.i == 4) {
            return true;
        }
        return false;
    }

    public final boolean l() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaInfo f = f();
        if (f != null && f.f == 2) {
            return true;
        }
        return false;
    }

    public final boolean m() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g != null && g.p != 0) {
            return true;
        }
        return false;
    }

    public final boolean n() {
        int i;
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g == null) {
            return false;
        }
        if (g.i == 3) {
            return true;
        }
        if (!l()) {
            return false;
        }
        synchronized (this.f3505a) {
            try {
                Preconditions.checkMainThread("Must be called from the main thread.");
                MediaStatus g2 = g();
                if (g2 != null) {
                    i = g2.j;
                } else {
                    i = 0;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (i != 2) {
            return false;
        }
        return true;
    }

    public final boolean o() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g != null && g.i == 2) {
            return true;
        }
        return false;
    }

    public final boolean p() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        MediaStatus g = g();
        if (g != null && g.v) {
            return true;
        }
        return false;
    }

    public final void q(MediaLoadRequestData mediaLoadRequestData) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzan(this, mediaLoadRequestData));
        }
    }

    public final BasePendingResult r(MediaQueueItem[] mediaQueueItemArr, int i, int i2, long j) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            return (BasePendingResult) I();
        }
        zzx zzxVar = new zzx(this, mediaQueueItemArr, i, i2, j);
        L(zzxVar);
        return zzxVar;
    }

    public final void s() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzaf(this));
        }
    }

    public final void t() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzae(this));
        }
    }

    public final void u(Callback callback) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (callback != null) {
            this.h.add(callback);
        }
    }

    public final void v(ProgressListener progressListener) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        zzbg zzbgVar = (zzbg) this.i.remove(progressListener);
        if (zzbgVar != null) {
            HashSet hashSet = zzbgVar.f3571a;
            hashSet.remove(progressListener);
            if (hashSet.isEmpty()) {
                this.j.remove(Long.valueOf(zzbgVar.b));
                zzbgVar.e.b.removeCallbacks(zzbgVar.f3572c);
                zzbgVar.d = false;
            }
        }
    }

    public final BasePendingResult w(MediaSeekOptions mediaSeekOptions) {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            return (BasePendingResult) I();
        }
        zzas zzasVar = new zzas(this, mediaSeekOptions);
        L(zzasVar);
        return zzasVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.cast.MediaSeekOptions$Builder, java.lang.Object] */
    public final void x(long j) {
        ?? obj = new Object();
        obj.f3454a = j;
        w(new MediaSeekOptions(j, obj.b));
    }

    public final void y() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzt(this));
        }
    }

    public final void z() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        if (!J()) {
            I();
        } else {
            L(new zzaq(this));
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Callback {
        public void a() {
        }

        public void b() {
        }

        public void c() {
        }

        public void d() {
        }

        public void e() {
        }

        public void f(String str, long j, int i, long j2, long j3) {
        }

        public void g(int[] iArr) {
        }

        public void i(int[] iArr) {
        }

        public void j(int[] iArr) {
        }

        public void k(MediaQueueItem[] mediaQueueItemArr) {
        }

        public void m() {
        }

        public void h(int i, int[] iArr) {
        }

        public void l(ArrayList arrayList, ArrayList arrayList2, int i) {
        }
    }
}
