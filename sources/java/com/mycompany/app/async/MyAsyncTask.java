package com.mycompany.app.async;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public abstract class MyAsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public Context f12838a;
    public Handler b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f12839c;
    public ExecutorService d;

    public void a() {
    }

    public final void b(Context context) {
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
            } catch (Exception unused) {
            }
        }
        this.f12838a = context;
        if (this.b == null) {
            this.b = new Handler(Looper.getMainLooper());
        }
        Handler handler = this.b;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.async.MyAsyncTask.1
            @Override // java.lang.Runnable
            public final void run() {
                MyAsyncTask myAsyncTask = MyAsyncTask.this;
                if (!myAsyncTask.f12839c) {
                    myAsyncTask.f();
                }
                myAsyncTask.c(myAsyncTask.f12838a);
            }
        });
    }

    public final void c(Context context) {
        if (context != null) {
            try {
                Context applicationContext = context.getApplicationContext();
                if (applicationContext != null) {
                    context = applicationContext;
                }
            } catch (Exception unused) {
            }
        }
        this.f12838a = context;
        if (this.b == null) {
            this.b = new Handler(Looper.getMainLooper());
        }
        if (this.b != null) {
            Runnable runnable = new Runnable() { // from class: com.mycompany.app.async.MyAsyncTask.2
                @Override // java.lang.Runnable
                public final void run() {
                    MyAsyncTask myAsyncTask = MyAsyncTask.this;
                    try {
                        if (!myAsyncTask.f12839c) {
                            myAsyncTask.a();
                        }
                    } catch (Throwable unused2) {
                        myAsyncTask.f12839c = true;
                    }
                    Handler handler = myAsyncTask.b;
                    if (handler == null) {
                        return;
                    }
                    handler.post(new Runnable() { // from class: com.mycompany.app.async.MyAsyncTask.2.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            MyAsyncTask myAsyncTask2 = MyAsyncTask.this;
                            MainUtil.R6(myAsyncTask2.b);
                            myAsyncTask2.b = null;
                            if (myAsyncTask2.f12839c) {
                                myAsyncTask2.d();
                            } else {
                                myAsyncTask2.e();
                            }
                        }
                    });
                }
            };
            ExecutorService executorService = this.d;
            if (executorService == null || executorService.isShutdown() || executorService.isTerminated()) {
                executorService = MainApp.i(this.f12838a);
                if (executorService == null) {
                    return;
                } else {
                    this.d = executorService;
                }
            }
            try {
                executorService.execute(runnable);
            } catch (Exception unused2) {
            }
        }
    }

    public void d() {
    }

    public void e() {
    }

    public void f() {
    }

    public void g() {
    }

    public final void h() {
        Handler handler;
        if (this.f12839c || (handler = this.b) == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.async.MyAsyncTask.3
            @Override // java.lang.Runnable
            public final void run() {
                MyAsyncTask myAsyncTask = MyAsyncTask.this;
                if (myAsyncTask.f12839c || myAsyncTask.b == null) {
                    return;
                }
                myAsyncTask.g();
            }
        });
    }
}
