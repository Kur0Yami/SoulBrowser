package com.mycompany.app.image;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import androidx.core.content.ContextCompat;
import com.mycompany.app.compress.Compress;
import com.mycompany.app.db.book.DbBookDown;
import com.mycompany.app.list.ListTask;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainDownSvc;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefImage;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.soulbrowser.R;
import com.nostra13.universalimageloader.core.ImageLoader;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public class ImageViewActivity extends MainActivity {
    public Context f1;
    public ImageViewWrapper g1;
    public ListTask h1;
    public boolean i1;
    public DownReceiver j1;

    /* renamed from: com.mycompany.app.image.ImageViewActivity$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            MainUtil.i();
        }
    }

    /* loaded from: classes3.dex */
    public class DownReceiver extends BroadcastReceiver {
        public DownReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                String action = intent.getAction();
                action.getClass();
                if (action.equals("com.mycompany.app.soulbrowser.ACTION_DOWN_COMPLETE")) {
                    ImageViewActivity imageViewActivity = ImageViewActivity.this;
                    if (imageViewActivity.g1 != null) {
                        int intExtra = intent.getIntExtra("EXTRA_STATUS", 3);
                        if (!PrefZone.l0 && intExtra == 3) {
                            return;
                        }
                        imageViewActivity.m0(new Runnable(intExtra, intent.getLongExtra("EXTRA_ID", -1L), intent.getBooleanExtra("secretMode", PrefSync.k)) { // from class: com.mycompany.app.image.ImageViewActivity.DownReceiver.1

                            /* renamed from: c, reason: collision with root package name */
                            public final /* synthetic */ int f15780c;
                            public final /* synthetic */ long f;

                            @Override // java.lang.Runnable
                            public final void run() {
                                final String str;
                                final ImageViewActivity imageViewActivity2 = ImageViewActivity.this;
                                if (imageViewActivity2.g1 != null) {
                                    final int i = this.f15780c;
                                    if (i != 2) {
                                        long j = this.f;
                                        if (i == 3) {
                                            str = DbBookDown.d(imageViewActivity2.f1, j);
                                        } else {
                                            str = DbBookDown.e(imageViewActivity2.f1, j);
                                            if (i == 4 && MainDownSvc.z(str)) {
                                                str = "live";
                                            }
                                        }
                                    } else {
                                        str = null;
                                    }
                                    if (imageViewActivity2.g1 == null) {
                                        return;
                                    }
                                    imageViewActivity2.runOnUiThread(new Runnable() { // from class: com.mycompany.app.image.ImageViewActivity.4
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            int i2;
                                            ImageViewActivity imageViewActivity3 = ImageViewActivity.this;
                                            if (imageViewActivity3.g1 == null) {
                                                return;
                                            }
                                            MainUtil.c();
                                            String str2 = str;
                                            if (TextUtils.isEmpty(str2)) {
                                                MainUtil.e8(imageViewActivity3, R.string.server_error);
                                                return;
                                            }
                                            int i3 = i;
                                            if (i3 == 5) {
                                                MainUtil.e8(imageViewActivity3, R.string.invalid_url);
                                                return;
                                            }
                                            if (i3 == 4) {
                                                if ("live".equals(str2)) {
                                                    i2 = R.string.live_fail;
                                                } else {
                                                    i2 = R.string.server_error;
                                                }
                                                MainUtil.e8(imageViewActivity3, i2);
                                                return;
                                            }
                                            MainUtil.e8(imageViewActivity3, R.string.down_complete);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SavedItem {

        /* renamed from: a, reason: collision with root package name */
        public boolean f15781a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f15782c;
        public ArrayList d;
        public int e;
        public int f;
        public Compress g;
        public String h;
        public String i;
        public int j;
        public int k;
        public int l;
        public int m;
        public boolean n;
        public int o;
    }

    @Override // com.mycompany.app.main.MainActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.g1.c(motionEvent)) {
            return true;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override // android.app.Activity
    public final void finish() {
        int f;
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null && ((f = imageViewWrapper.f()) == 1 || f == 2 || f == 3)) {
            Intent intent = new Intent();
            intent.putExtra("EXTRA_INDEX", this.g1.e());
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.j(i, i2, intent);
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null && imageViewWrapper.L()) {
            return;
        }
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.F(configuration);
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent;
        boolean z;
        int i;
        this.u0 = true;
        super.onCreate(bundle);
        MainActivity.MainViewerListener mainViewerListener = new MainActivity.MainViewerListener() { // from class: com.mycompany.app.image.ImageViewActivity.1
            @Override // com.mycompany.app.main.MainActivity.MainViewerListener
            public final void a(int i2) {
                ImageViewWrapper imageViewWrapper = ImageViewActivity.this.g1;
                if (imageViewWrapper == null) {
                    return;
                }
                imageViewWrapper.M(i2);
            }
        };
        if (MainConst.e) {
            this.H0 = mainViewerListener;
            d0();
        }
        this.f1 = getApplicationContext();
        MainUtil.o7(this);
        o0(null, 19);
        o0(null, 1);
        o0(null, 7);
        o0(null, 18);
        Intent intent2 = getIntent();
        Uri data = intent2.getData();
        if (data != null) {
            Intent intent3 = new Intent();
            if (this.i1) {
                intent3.putExtra("EXTRA_TYPE", 2);
            } else {
                intent3.putExtra("EXTRA_TYPE", 3);
            }
            intent3.putExtra("EXTRA_PATH", data.toString());
            intent3.putExtra("EXTRA_INDEX", 0);
            intent = intent3;
            z = true;
        } else {
            intent = intent2;
            z = false;
        }
        if (h0()) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        ImageViewWrapper g = ImageViewWrapper.g(this.f1, this, i, getWindow(), intent, null);
        this.g1 = g;
        if (z) {
            if (this.h1 == null) {
                int f = g.f();
                if (f == 12) {
                    f = 1;
                }
                this.h1 = ListTask.c(this.f1, f, null);
            }
            this.h1.i(false, false, true);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, java.lang.Runnable] */
    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        DownReceiver downReceiver = this.j1;
        if (downReceiver != null) {
            unregisterReceiver(downReceiver);
            this.j1 = null;
        }
        ImageLoader.f().m();
        m0(new Object());
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.G();
            this.g1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null && imageViewWrapper.H(i)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!PrefImage.o) {
            return super.onKeyUp(i, keyEvent);
        }
        if (i != 24 && i != 25) {
            return super.onKeyUp(i, keyEvent);
        }
        return true;
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        ListTask listTask;
        super.onPause();
        boolean isFinishing = isFinishing();
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.I(isFinishing);
        }
        if (isFinishing && (listTask = this.h1) != null) {
            listTask.a();
            this.h1 = null;
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.J();
        }
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.image.ImageViewActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                ImageViewActivity imageViewActivity = ImageViewActivity.this;
                if (imageViewActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(imageViewActivity.getWindow(), PrefImage.r, PrefImage.q);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ImageViewWrapper imageViewWrapper = this.g1;
        if (imageViewWrapper != null) {
            imageViewWrapper.K();
        }
    }

    public final void u0() {
        if (this.j1 != null) {
            return;
        }
        this.j1 = new DownReceiver();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.mycompany.app.soulbrowser.ACTION_DOWN_COMPLETE");
        ContextCompat.f(this, this.j1, intentFilter, null, 4);
    }

    public final void v0(SavedItem savedItem) {
        int i;
        if (h0()) {
            i = PrefImage.u;
        } else {
            i = PrefImage.t;
        }
        ImageViewWrapper g = ImageViewWrapper.g(this.f1, this, i, getWindow(), null, savedItem);
        this.g1 = g;
        g.J();
    }
}
