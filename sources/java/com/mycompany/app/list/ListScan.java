package com.mycompany.app.list;

import android.content.Context;
import com.mycompany.app.async.MyAsyncTask;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public class ListScan {

    /* renamed from: a, reason: collision with root package name */
    public final Context f16236a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f16237c;
    public final ListScanListener d;
    public ScanTask e;

    /* loaded from: classes3.dex */
    public interface ListScanListener {
        void b();

        void c();
    }

    /* loaded from: classes3.dex */
    public static class ScanTask extends MyAsyncTask {
        public final WeakReference e;
        public boolean f;

        public ScanTask(ListScan listScan) {
            this.e = new WeakReference(listScan);
        }

        /* JADX WARN: Code restructure failed: missing block: B:43:0x00cc, code lost:
        
            if (r0 != 3) goto L42;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0165, code lost:
        
            if (r1 != false) goto L88;
         */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:16:0x01c7  */
        /* JADX WARN: Removed duplicated region for block: B:19:? A[RETURN, SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:34:0x01b6 A[LOOP:0: B:24:0x009f->B:34:0x01b6, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:35:0x01c5 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00e3  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x00e6 A[Catch: Exception -> 0x011e, TryCatch #0 {Exception -> 0x011e, blocks: (B:21:0x005f, B:23:0x0065, B:24:0x009f, B:26:0x00a5, B:32:0x01af, B:36:0x00bb, B:46:0x00d9, B:49:0x00e6, B:52:0x00f3, B:59:0x0109, B:61:0x0115, B:64:0x016a, B:65:0x0170, B:67:0x018e, B:72:0x019b, B:75:0x01a6, B:89:0x012b, B:91:0x0137, B:97:0x0144), top: B:20:0x005f }] */
        /* JADX WARN: Removed duplicated region for block: B:64:0x016a A[Catch: Exception -> 0x011e, TRY_ENTER, TryCatch #0 {Exception -> 0x011e, blocks: (B:21:0x005f, B:23:0x0065, B:24:0x009f, B:26:0x00a5, B:32:0x01af, B:36:0x00bb, B:46:0x00d9, B:49:0x00e6, B:52:0x00f3, B:59:0x0109, B:61:0x0115, B:64:0x016a, B:65:0x0170, B:67:0x018e, B:72:0x019b, B:75:0x01a6, B:89:0x012b, B:91:0x0137, B:97:0x0144), top: B:20:0x005f }] */
        /* JADX WARN: Removed duplicated region for block: B:67:0x018e A[Catch: Exception -> 0x011e, TryCatch #0 {Exception -> 0x011e, blocks: (B:21:0x005f, B:23:0x0065, B:24:0x009f, B:26:0x00a5, B:32:0x01af, B:36:0x00bb, B:46:0x00d9, B:49:0x00e6, B:52:0x00f3, B:59:0x0109, B:61:0x0115, B:64:0x016a, B:65:0x0170, B:67:0x018e, B:72:0x019b, B:75:0x01a6, B:89:0x012b, B:91:0x0137, B:97:0x0144), top: B:20:0x005f }] */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0198  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0157 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r6v13, types: [java.lang.Object, com.mycompany.app.main.MainUri$UriItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 459
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.list.ListScan.ScanTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            ListScan listScan;
            WeakReference weakReference = this.e;
            if (weakReference != null && (listScan = (ListScan) weakReference.get()) != null) {
                listScan.e = null;
                if (this.f) {
                    listScan.d.c();
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            ListScan listScan;
            WeakReference weakReference = this.e;
            if (weakReference == null || (listScan = (ListScan) weakReference.get()) == null) {
                return;
            }
            listScan.e = null;
            listScan.d.b();
        }
    }

    public ListScan(Context context, int i, boolean z, ListScanListener listScanListener) {
        this.f16236a = context;
        this.b = i;
        this.f16237c = z;
        this.d = listScanListener;
    }
}
