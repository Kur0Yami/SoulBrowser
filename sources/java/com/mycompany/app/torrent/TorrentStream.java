package com.mycompany.app.torrent;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import com.frostwire.jlibtorrent.SessionManager;
import com.frostwire.jlibtorrent.SessionParams;
import com.frostwire.jlibtorrent.SettingsPack;
import com.frostwire.jlibtorrent.Sha1Hash;
import com.frostwire.jlibtorrent.TorrentHandle;
import com.frostwire.jlibtorrent.TorrentInfo;
import com.frostwire.jlibtorrent.alerts.AddTorrentAlert;
import com.frostwire.jlibtorrent.swig.add_piece_flags_t;
import com.frostwire.jlibtorrent.swig.file_storage;
import com.frostwire.jlibtorrent.swig.libtorrent_jni;
import com.frostwire.jlibtorrent.swig.session;
import com.frostwire.jlibtorrent.swig.settings_pack;
import com.frostwire.jlibtorrent.swig.sha1_hash;
import com.frostwire.jlibtorrent.swig.torrent_alert;
import com.frostwire.jlibtorrent.swig.torrent_handle;
import com.frostwire.jlibtorrent.swig.torrent_info;
import com.google.api.client.http.HttpStatusCodes;
import com.mycompany.app.main.MainUtil;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes3.dex */
public final class TorrentStream {

    /* renamed from: a, reason: collision with root package name */
    public final String f18313a;
    public final TorrentListener b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f18314c;
    public boolean d;
    public boolean e;
    public boolean f;
    public CountDownLatch g;
    public SessionManager h;
    public Torrent i;
    public HandlerThread j;
    public Handler k;
    public HandlerThread l;
    public Handler m;
    public final TorAlertDhtListener n = new Object();
    public final TorAlertAddListener o = new TorAlertAddListener() { // from class: com.mycompany.app.torrent.TorrentStream.8
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v2, types: [com.mycompany.app.torrent.Torrent, com.frostwire.jlibtorrent.AlertListener, java.lang.Object] */
        @Override // com.mycompany.app.torrent.TorAlertAddListener
        public final void c(AddTorrentAlert addTorrentAlert) {
            TorrentInfo torrentInfo;
            torrent_info a2;
            TorrentStream torrentStream = TorrentStream.this;
            SessionManager sessionManager = torrentStream.h;
            if (sessionManager == null) {
                return;
            }
            addTorrentAlert.getClass();
            torrent_handle e = ((torrent_alert) addTorrentAlert.f2640a).e();
            e.getClass();
            TorrentHandle c2 = sessionManager.c(new Sha1Hash(new sha1_hash(libtorrent_jni.torrent_handle_info_hash(e.f2739a, e), true)));
            InternalTorrentListener internalTorrentListener = new InternalTorrentListener();
            ?? obj = new Object();
            obj.f18311c = 0;
            obj.f18310a = c2;
            obj.b = internalTorrentListener;
            if (c2 != null) {
                torrent_handle torrent_handleVar = c2.f2630a;
                if (libtorrent_jni.torrent_handle_is_valid(torrent_handleVar.f2739a, torrent_handleVar) && (a2 = torrent_handleVar.a()) != null) {
                    torrentInfo = new TorrentInfo(a2);
                } else {
                    torrentInfo = null;
                }
                file_storage file_storageVar = torrentInfo.b().f2603a;
                int file_storage_num_files = libtorrent_jni.file_storage_num_files(file_storageVar.f2685a, file_storageVar);
                for (int i = 0; i < file_storage_num_files; i++) {
                    libtorrent_jni.torrent_handle_file_priority2__SWIG_1(torrent_handleVar.f2739a, torrent_handleVar, i, 1);
                }
            }
            InternalTorrentListener internalTorrentListener2 = obj.b;
            if (internalTorrentListener2 != 0) {
                internalTorrentListener2.a(obj);
            }
            torrentStream.i = obj;
            torrentStream.h.e(true, obj);
        }
    };

    /* renamed from: com.mycompany.app.torrent.TorrentStream$7, reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 extends TorAlertDhtListener {
    }

    /* loaded from: classes3.dex */
    public class InternalTorrentListener implements TorrentListener {
        public InternalTorrentListener() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0042, code lost:
        
            r4[r6] = r11;
            r6 = r6 + 1;
         */
        @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a(com.mycompany.app.torrent.Torrent r14) {
            /*
                r13 = this;
                com.frostwire.jlibtorrent.TorrentHandle r0 = r14.f18310a
                if (r0 != 0) goto L5
                goto L6a
            L5:
                com.frostwire.jlibtorrent.swig.torrent_handle r0 = r0.f2630a
                int r1 = r14.f18311c
                if (r1 == 0) goto Lc
                goto L6a
            Lc:
                r1 = 1
                r14.f18311c = r1
                r0.getClass()
                com.frostwire.jlibtorrent.swig.int_vector r2 = new com.frostwire.jlibtorrent.swig.int_vector
                long r3 = r0.f2739a
                long r3 = com.frostwire.jlibtorrent.swig.libtorrent_jni.torrent_handle_get_piece_priorities2(r3, r0)
                r2.<init>(r3)
                long r3 = r2.f2686a
                long r3 = com.frostwire.jlibtorrent.swig.libtorrent_jni.int_vector_size(r3, r2)
                int r3 = (int) r3
                com.frostwire.jlibtorrent.Priority[] r4 = new com.frostwire.jlibtorrent.Priority[r3]
                r5 = 0
                r6 = r5
            L28:
                if (r6 >= r3) goto L52
                long r7 = r2.f2686a
                int r7 = com.frostwire.jlibtorrent.swig.libtorrent_jni.int_vector_get(r7, r2, r6)
                java.lang.Class<com.frostwire.jlibtorrent.Priority> r8 = com.frostwire.jlibtorrent.Priority.class
                java.lang.Object[] r8 = r8.getEnumConstants()
                com.frostwire.jlibtorrent.Priority[] r8 = (com.frostwire.jlibtorrent.Priority[]) r8
                int r9 = r8.length
                r10 = r5
            L3a:
                if (r10 >= r9) goto L4a
                r11 = r8[r10]
                int r12 = r11.f2610c
                if (r12 != r7) goto L47
                r4[r6] = r11
                int r6 = r6 + 1
                goto L28
            L47:
                int r10 = r10 + 1
                goto L3a
            L4a:
                java.lang.IllegalArgumentException r14 = new java.lang.IllegalArgumentException
                java.lang.String r0 = "Invalid native value"
                r14.<init>(r0)
                throw r14
            L52:
                if (r5 >= r3) goto L63
                long r6 = r0.f2739a
                com.frostwire.jlibtorrent.swig.libtorrent_jni.torrent_handle_piece_priority2__SWIG_1(r6, r0, r5, r1)
                r2 = 1000(0x3e8, float:1.401E-42)
                long r6 = r0.f2739a
                com.frostwire.jlibtorrent.swig.libtorrent_jni.torrent_handle_set_piece_deadline__SWIG_1(r6, r0, r5, r2)
                int r5 = r5 + 1
                goto L52
            L63:
                long r1 = r0.f2739a
                com.frostwire.jlibtorrent.swig.libtorrent_jni.torrent_handle_resume(r1, r0)
                com.mycompany.app.torrent.TorrentStream$InternalTorrentListener r0 = r14.b
            L6a:
                com.mycompany.app.torrent.TorrentStream r0 = com.mycompany.app.torrent.TorrentStream.this
                com.mycompany.app.torrent.TorrentStream$TorrentListener r0 = r0.b
                r0.a(r14)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.torrent.TorrentStream.InternalTorrentListener.a(com.mycompany.app.torrent.Torrent):void");
        }

        @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
        public final void b(Torrent torrent) {
            TorrentStream.this.b.b(torrent);
        }

        @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
        public final void c() {
            TorrentStream.this.b.c();
        }

        @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
        public final void d(Torrent torrent, float f) {
            TorrentStream.this.b.d(torrent, f);
        }

        @Override // com.mycompany.app.torrent.TorrentStream.TorrentListener
        public final void e() {
            TorrentListener torrentListener = TorrentStream.this.b;
            if (torrentListener != null) {
                torrentListener.e();
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface TorrentListener {
        void a(Torrent torrent);

        void b(Torrent torrent);

        void c();

        void d(Torrent torrent, float f);

        void e();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.mycompany.app.torrent.TorAlertDhtListener, java.lang.Object] */
    public TorrentStream(String str, TorrentListener torrentListener) {
        this.f18313a = str;
        this.b = torrentListener;
        a();
    }

    public final void a() {
        boolean z;
        HandlerThread handlerThread = this.j;
        boolean z2 = false;
        if (handlerThread != null && this.h != null) {
            Handler handler = this.k;
            if (handler != null && !this.f) {
                this.e = true;
                this.f = false;
                handler.removeCallbacksAndMessages(null);
                SessionManager sessionManager = this.h;
                if (sessionManager.f2614c != null) {
                    session sessionVar = sessionManager.f2614c;
                    z = libtorrent_jni.session_handle_is_paused(sessionVar.f2718a, sessionVar);
                } else {
                    z = false;
                }
                if (z) {
                    this.k.post(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            SessionManager sessionManager2 = TorrentStream.this.h;
                            if (sessionManager2 != null && sessionManager2.f2614c != null) {
                                session sessionVar2 = sessionManager2.f2614c;
                                libtorrent_jni.session_handle_resume(sessionVar2.f2718a, sessionVar2);
                            }
                        }
                    });
                }
                SessionManager sessionManager2 = this.h;
                if (sessionManager2.f2614c != null) {
                    session sessionVar2 = sessionManager2.f2614c;
                    z2 = libtorrent_jni.session_handle_is_dht_running(sessionVar2.f2718a, sessionVar2);
                }
                if (!z2) {
                    this.k.post(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.5
                        @Override // java.lang.Runnable
                        public final void run() {
                            SessionManager sessionManager3 = TorrentStream.this.h;
                            if (sessionManager3 != null) {
                                sessionManager3.h();
                            }
                        }
                    });
                    return;
                }
                return;
            }
            return;
        }
        if ((this.f18314c || this.d) && handlerThread != null) {
            handlerThread.interrupt();
        }
        this.f18314c = true;
        this.d = false;
        this.g = new CountDownLatch(1);
        HandlerThread handlerThread2 = new HandlerThread("TORRENT_THREAD");
        this.j = handlerThread2;
        handlerThread2.start();
        Handler handler2 = new Handler(this.j.getLooper());
        this.k = handler2;
        handler2.post(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.1
            @Override // java.lang.Runnable
            public final void run() {
                long j;
                try {
                    SettingsPack settingsPack = new SettingsPack();
                    settings_pack settings_packVar = settingsPack.f2620a;
                    libtorrent_jni.settings_pack_set_bool(settings_packVar.f2720a, settings_packVar, settings_pack.bool_types.f2721c.f2722a, false);
                    settings_pack settings_packVar2 = settingsPack.f2620a;
                    libtorrent_jni.settings_pack_set_int(settings_packVar2.f2720a, settings_packVar2, settings_pack.int_types.f.f2724a, HttpStatusCodes.STATUS_CODE_OK);
                    settings_pack settings_packVar3 = settingsPack.f2620a;
                    libtorrent_jni.settings_pack_set_int(settings_packVar3.f2720a, settings_packVar3, settings_pack.int_types.e.f2724a, 0);
                    settings_pack settings_packVar4 = settingsPack.f2620a;
                    libtorrent_jni.settings_pack_set_int(settings_packVar4.f2720a, settings_packVar4, settings_pack.int_types.d.f2724a, 0);
                    settings_pack settings_packVar5 = settingsPack.f2620a;
                    libtorrent_jni.settings_pack_set_int(settings_packVar5.f2720a, settings_packVar5, settings_pack.int_types.f2723c.f2724a, 88);
                    TorrentStream.this.h = new SessionManager();
                    if (TorrentStream.this.h.f2614c != null) {
                        SessionManager sessionManager3 = TorrentStream.this.h;
                        if (sessionManager3.f2614c != null) {
                            session sessionVar3 = sessionManager3.f2614c;
                            settings_pack settings_packVar6 = settingsPack.f2620a;
                            long j2 = sessionVar3.f2718a;
                            if (settings_packVar6 == null) {
                                j = 0;
                            } else {
                                j = settings_packVar6.f2720a;
                            }
                            libtorrent_jni.session_handle_apply_settings(j2, sessionVar3, j, settings_packVar6);
                        }
                    } else {
                        TorrentStream.this.h.g(new SessionParams(settingsPack));
                    }
                    TorrentStream torrentStream = TorrentStream.this;
                    torrentStream.h.e(true, torrentStream.n);
                    TorrentStream.this.h.h();
                    TorrentStream torrentStream2 = TorrentStream.this;
                    torrentStream2.f18314c = false;
                    torrentStream2.d = true;
                    torrentStream2.g.countDown();
                } catch (Exception unused) {
                    CountDownLatch countDownLatch = TorrentStream.this.g;
                    if (countDownLatch != null) {
                        try {
                            countDownLatch.await();
                            TorrentStream.this.g = null;
                        } catch (InterruptedException unused2) {
                        }
                    }
                    TorrentStream torrentStream3 = TorrentStream.this;
                    torrentStream3.e = false;
                    torrentStream3.b.c();
                }
            }
        });
    }

    public final void b() {
        Handler handler = this.k;
        if (handler != null && this.e && !this.f) {
            handler.post(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.6
                @Override // java.lang.Runnable
                public final void run() {
                    SessionManager sessionManager = TorrentStream.this.h;
                    if (sessionManager != null && sessionManager.f2614c != null) {
                        session sessionVar = sessionManager.f2614c;
                        if (!libtorrent_jni.session_handle_is_paused(sessionVar.f2718a, sessionVar)) {
                            session sessionVar2 = sessionManager.f2614c;
                            libtorrent_jni.session_handle_pause(sessionVar2.f2718a, sessionVar2);
                        }
                    }
                }
            });
        }
    }

    public final void c(final Context context, final String str, final String str2) {
        if (!this.f18314c && !this.d) {
            a();
        }
        if (!this.e && !this.f) {
            this.e = true;
            this.f = false;
            HandlerThread handlerThread = new HandlerThread("STREAM_THREAD");
            this.l = handlerThread;
            handlerThread.start();
            Handler handler = new Handler(this.l.getLooper());
            this.m = handler;
            handler.post(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.2
                /* JADX WARN: Can't wrap try/catch for region: R(15:9|(2:10|11)|(3:13|(5:15|16|17|19|20)|(2:54|(5:56|(1:58)|59|60|(2:64|(1:96)(2:66|(2:68|(2:70|(5:72|(1:74)|75|76|77)(2:79|80))(2:81|(7:83|(1:85)|86|87|(1:89)|90|91)(2:92|93)))(2:94|95))))))(2:97|98)|22|23|24|25|26|(2:27|(1:29)(1:30))|31|(1:33)|(2:43|44)|(2:39|40)|(1:38)|(0)) */
                /* JADX WARN: Code restructure failed: missing block: B:49:0x0089, code lost:
                
                    r4 = 0;
                 */
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:38:0x0096  */
                /* JADX WARN: Removed duplicated region for block: B:39:0x0091 A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:43:0x008c A[EXC_TOP_SPLITTER, SYNTHETIC] */
                /* JADX WARN: Removed duplicated region for block: B:54:0x009c  */
                /* JADX WARN: Type inference failed for: r15v0, types: [java.lang.Object, com.frostwire.jlibtorrent.swig.add_torrent_params] */
                @Override // java.lang.Runnable
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final void run() {
                    /*
                        Method dump skipped, instructions count: 503
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.torrent.TorrentStream.AnonymousClass2.run():void");
                }
            });
        }
    }

    public final void d() {
        long j;
        if (this.f) {
            return;
        }
        this.e = false;
        this.f = true;
        Handler handler = this.k;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
        }
        Handler handler2 = this.m;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
        Torrent torrent = this.i;
        if (torrent != null && this.h != null) {
            TorrentHandle torrentHandle = torrent.f18310a;
            if (torrentHandle != null) {
                torrent_handle torrent_handleVar = torrentHandle.f2630a;
                libtorrent_jni.torrent_handle_pause__SWIG_1(torrent_handleVar.f2739a, torrent_handleVar);
            }
            this.h.e(false, this.i);
            SessionManager sessionManager = this.h;
            TorrentHandle torrentHandle2 = this.i.f18310a;
            if (sessionManager.f2614c != null) {
                torrent_handle torrent_handleVar2 = torrentHandle2.f2630a;
                if (libtorrent_jni.torrent_handle_is_valid(torrent_handleVar2.f2739a, torrent_handleVar2)) {
                    session sessionVar = sessionManager.f2614c;
                    torrent_handle torrent_handleVar3 = torrentHandle2.f2630a;
                    long j2 = sessionVar.f2718a;
                    if (torrent_handleVar3 == null) {
                        add_piece_flags_t add_piece_flags_tVar = torrent_handle.f2738c;
                        j = 0;
                    } else {
                        j = torrent_handleVar3.f2739a;
                    }
                    libtorrent_jni.session_handle_remove_torrent__SWIG_1(j2, sessionVar, j, torrent_handleVar3);
                }
            }
            this.i = null;
            new Thread(new Runnable() { // from class: com.mycompany.app.torrent.TorrentStream.3
                @Override // java.lang.Runnable
                public final void run() {
                    MainUtil.z(TorrentStream.this.f18313a);
                }
            }).start();
        }
        HandlerThread handlerThread = this.l;
        if (handlerThread != null) {
            handlerThread.interrupt();
        }
        this.b.e();
    }
}
