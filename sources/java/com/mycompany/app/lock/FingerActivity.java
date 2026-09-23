package com.mycompany.app.lock;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.biometric.BiometricFragment;
import androidx.biometric.BiometricPrompt;
import androidx.biometric.BiometricViewModel;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.ViewModelProvider;
import com.mycompany.app.dialog.DialogLockReset;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonText;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.widget.WidgetSearchActivity;
import java.util.concurrent.Executor;

/* loaded from: classes3.dex */
public class FingerActivity extends MainActivity {
    public static final /* synthetic */ int w1 = 0;
    public Context f1;
    public MyMainRelative g1;
    public ImageView h1;
    public MyButtonText i1;
    public MyButtonText j1;
    public int k1;
    public int l1;
    public String m1;
    public boolean n1;
    public DialogLockReset o1;
    public boolean p1;
    public boolean q1;
    public boolean r1;
    public boolean s1;
    public Executor t1;
    public BiometricPrompt u1;
    public BiometricPrompt.PromptInfo v1;

    public static void u0(FingerActivity fingerActivity) {
        fingerActivity.r1 = false;
        fingerActivity.s1 = false;
        int i = fingerActivity.l1;
        if (i == 2) {
            fingerActivity.z0();
            return;
        }
        if (i == 3) {
            fingerActivity.finish();
        } else if (!PrefSecret.u) {
            fingerActivity.z0();
        } else {
            fingerActivity.m0(new Runnable() { // from class: com.mycompany.app.lock.FingerActivity.9
                @Override // java.lang.Runnable
                public final void run() {
                    PrefSync.k = false;
                    FingerActivity fingerActivity2 = FingerActivity.this;
                    PrefSync.u(fingerActivity2.f1);
                    MainUtil.Y4(fingerActivity2.f1);
                    if (fingerActivity2.l1 == 4) {
                        fingerActivity2.w0();
                    } else {
                        MainUtil.d7(fingerActivity2, fingerActivity2.m1, false);
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.l1 == 0) {
            moveTaskToBack(true);
        } else {
            finish();
        }
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        f0();
        this.f1 = getApplicationContext();
        v0(getIntent());
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        this.m1 = null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        v0(intent);
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        x0();
        MyButtonText myButtonText = this.i1;
        if (myButtonText != null) {
            myButtonText.t();
            this.i1 = null;
        }
        MyButtonText myButtonText2 = this.j1;
        if (myButtonText2 != null) {
            myButtonText2.t();
            this.j1 = null;
        }
        this.g1 = null;
        this.h1 = null;
        BiometricPrompt biometricPrompt = this.u1;
        if (biometricPrompt != null) {
            FragmentManager fragmentManager = biometricPrompt.f390a;
            if (fragmentManager == null) {
                Log.e("BiometricPromptCompat", "Unable to start authentication. Client fragment manager was null.");
            } else {
                BiometricFragment biometricFragment = (BiometricFragment) fragmentManager.C("androidx.biometric.BiometricFragment");
                if (biometricFragment == null) {
                    Log.e("BiometricPromptCompat", "Unable to cancel authentication. BiometricFragment not found.");
                } else {
                    biometricFragment.f(3);
                }
            }
            this.u1 = null;
        }
        this.t1 = null;
        this.v1 = null;
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.lock.FingerActivity.2
            @Override // java.lang.Runnable
            public final void run() {
                FingerActivity fingerActivity = FingerActivity.this;
                if (fingerActivity.O0 == null) {
                    return;
                }
                MainUtil.g7(fingerActivity.getWindow(), PrefPdf.o, PrefPdf.n);
            }
        });
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        this.q1 = z;
        if (this.r1 && z) {
            y0();
        }
        this.r1 = false;
    }

    public final void v0(Intent intent) {
        MyButtonText myButtonText;
        int i;
        if (intent != null) {
            this.k1 = intent.getIntExtra("EXTRA_PASS", 0);
            int intExtra = intent.getIntExtra("EXTRA_TYPE", 0);
            this.l1 = intExtra;
            MyButtonText myButtonText2 = null;
            if (intExtra == 0) {
                this.m1 = intent.getStringExtra("EXTRA_PATH");
            } else {
                this.m1 = null;
            }
            if (this.l1 == 4) {
                this.n1 = intent.getBooleanExtra("EXTRA_VOICE", false);
            } else {
                this.n1 = false;
            }
            this.p1 = MainUtil.e(this.f1, false);
            MyButtonText myButtonText3 = this.i1;
            if (myButtonText3 != null) {
                myButtonText3.t();
                this.i1 = null;
            }
            MyButtonText myButtonText4 = this.j1;
            if (myButtonText4 != null) {
                myButtonText4.t();
                this.j1 = null;
            }
            this.g1 = null;
            this.h1 = null;
            if (this.p1 && this.l1 != 0) {
                MyMainRelative myMainRelative = new MyMainRelative(this);
                this.g1 = myMainRelative;
                setContentView(myMainRelative);
                setMainInsetView(this.g1);
                this.g1.b(getWindow(), 0);
                this.g1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.FingerActivity.3
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        int i2 = FingerActivity.w1;
                        FingerActivity.this.y0();
                    }
                });
            } else {
                MyMainRelative myMainRelative2 = new MyMainRelative(this);
                myMainRelative2.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                LinearLayout linearLayout = new LinearLayout(this);
                linearLayout.setOrientation(1);
                myMainRelative2.addView(linearLayout, -1, -1);
                View view = new View(this);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
                layoutParams.weight = 1.0f;
                linearLayout.addView(view, layoutParams);
                int G = (int) MainUtil.G(this, 84.0f);
                ImageView imageView = new ImageView(this);
                LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(G, G);
                layoutParams2.gravity = 1;
                linearLayout.addView(imageView, layoutParams2);
                View view2 = new View(this);
                LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, 0);
                layoutParams3.weight = 2.0f;
                linearLayout.addView(view2, layoutParams3);
                if (!this.p1) {
                    int G2 = (int) MainUtil.G(this, 24.0f);
                    myButtonText2 = new MyButtonText(this);
                    myButtonText2.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                    myButtonText2.setGravity(17);
                    myButtonText2.setMinHeight(MainApp.g1);
                    myButtonText2.setTextSize(1, 16.0f);
                    myButtonText2.setBgNorFixed(true);
                    myButtonText2.setRoundRect(true);
                    myButtonText2.setRoundRadius(G2);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams4.bottomMargin = (int) MainUtil.G(this, 32.0f);
                    layoutParams4.setMarginStart(G2);
                    layoutParams4.setMarginEnd(G2);
                    linearLayout.addView(myButtonText2, layoutParams4);
                    myButtonText = new MyButtonText(this);
                    myButtonText.setPadding(MainApp.F1, MainApp.G1, MainApp.F1, MainApp.G1);
                    myButtonText.setGravity(17);
                    myButtonText.setMinHeight(MainApp.f1);
                    myButtonText.setTextSize(1, 16.0f);
                    myButtonText.setBgNorFixed(true);
                    myButtonText.setRoundRect(true);
                    myButtonText.setRoundRadius(MainApp.F1);
                    RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
                    layoutParams5.bottomMargin = MainApp.f1;
                    layoutParams5.setMarginStart(G2);
                    layoutParams5.setMarginEnd(G2);
                    linearLayout.addView(myButtonText, layoutParams5);
                } else {
                    myButtonText = null;
                }
                this.g1 = myMainRelative2;
                this.h1 = imageView;
                this.i1 = myButtonText2;
                this.j1 = myButtonText;
                setContentView(myMainRelative2);
                setMainInsetView(this.g1);
                MyMainRelative myMainRelative3 = this.g1;
                Window window = getWindow();
                if (MainApp.K1) {
                    i = -14606047;
                } else {
                    i = -460552;
                }
                myMainRelative3.b(window, i);
                initMainScreenOn(this.g1);
                Handler handler = this.O0;
                if (handler != null) {
                    handler.post(new Runnable() { // from class: com.mycompany.app.lock.FingerActivity.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2;
                            final FingerActivity fingerActivity = FingerActivity.this;
                            MyMainRelative myMainRelative4 = fingerActivity.g1;
                            if (myMainRelative4 != null) {
                                myMainRelative4.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.FingerActivity.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view3) {
                                        int i3 = FingerActivity.w1;
                                        FingerActivity.this.y0();
                                    }
                                });
                                ImageView imageView2 = fingerActivity.h1;
                                if (imageView2 != null) {
                                    if (MainApp.K1) {
                                        imageView2.setBackgroundResource(R.drawable.outline_lock_dark_84);
                                    } else {
                                        imageView2.setBackgroundResource(R.drawable.outline_lock_black_84);
                                    }
                                    MyButtonText myButtonText5 = fingerActivity.i1;
                                    if (myButtonText5 == null) {
                                        return;
                                    }
                                    if (MainApp.K1) {
                                        myButtonText5.setTextColor(-328966);
                                        fingerActivity.i1.u(-16777216, -14211289);
                                        fingerActivity.j1.setTextColor(-328966);
                                        fingerActivity.j1.u(-16777216, -14211289);
                                    } else {
                                        myButtonText5.setTextColor(-16777216);
                                        fingerActivity.i1.u(-2039584, -3092272);
                                        fingerActivity.j1.setTextColor(-16777216);
                                        fingerActivity.j1.u(-2039584, -3092272);
                                    }
                                    int i3 = fingerActivity.l1;
                                    if (i3 == 2) {
                                        i2 = R.string.secret_reset;
                                    } else if (i3 == 3) {
                                        i2 = R.string.cancel;
                                    } else if (PrefSecret.u) {
                                        i2 = R.string.normal_start;
                                    } else {
                                        i2 = R.string.secret_reset;
                                    }
                                    fingerActivity.i1.setText(R.string.finger_print);
                                    fingerActivity.j1.setText(i2);
                                    fingerActivity.i1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.FingerActivity.6
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view3) {
                                            BiometricPrompt.PromptInfo promptInfo;
                                            FingerActivity fingerActivity2 = FingerActivity.this;
                                            BiometricPrompt biometricPrompt = fingerActivity2.u1;
                                            if (biometricPrompt != null && (promptInfo = fingerActivity2.v1) != null) {
                                                try {
                                                    biometricPrompt.a(promptInfo);
                                                    return;
                                                } catch (Exception unused) {
                                                    MainUtil.e(fingerActivity2.f1, true);
                                                    return;
                                                }
                                            }
                                            MainUtil.e(fingerActivity2.f1, true);
                                        }
                                    });
                                    fingerActivity.j1.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.lock.FingerActivity.7
                                        @Override // android.view.View.OnClickListener
                                        public final void onClick(View view3) {
                                            FingerActivity.u0(FingerActivity.this);
                                        }
                                    });
                                }
                            }
                        }
                    });
                }
            }
            Handler handler2 = this.O0;
            if (handler2 == null) {
                return;
            }
            handler2.post(new Runnable() { // from class: com.mycompany.app.lock.FingerActivity.1
                /* JADX WARN: Type inference failed for: r2v3, types: [androidx.biometric.BiometricPrompt$PromptInfo$Builder, java.lang.Object] */
                /* JADX WARN: Type inference failed for: r3v0, types: [java.lang.Object, androidx.biometric.BiometricPrompt] */
                @Override // java.lang.Runnable
                public final void run() {
                    int i2;
                    final FingerActivity fingerActivity = FingerActivity.this;
                    if (fingerActivity.g1 != null && fingerActivity.u1 == null) {
                        fingerActivity.r1 = false;
                        fingerActivity.s1 = false;
                        int i3 = fingerActivity.l1;
                        if (i3 == 2) {
                            i2 = R.string.secret_reset;
                        } else if (i3 == 3) {
                            i2 = R.string.cancel;
                        } else if (PrefSecret.u) {
                            i2 = R.string.normal_start;
                        } else {
                            i2 = R.string.secret_reset;
                        }
                        try {
                            Executor d = ContextCompat.d(fingerActivity);
                            fingerActivity.t1 = d;
                            BiometricPrompt.AuthenticationCallback authenticationCallback = new BiometricPrompt.AuthenticationCallback() { // from class: com.mycompany.app.lock.FingerActivity.8
                                @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                                public final void a(int i4, CharSequence charSequence) {
                                    FingerActivity fingerActivity2 = FingerActivity.this;
                                    if (i4 == 13) {
                                        FingerActivity.u0(fingerActivity2);
                                        return;
                                    }
                                    fingerActivity2.r1 = true;
                                    if (fingerActivity2.u1 != null) {
                                        if (!TextUtils.isEmpty(charSequence)) {
                                            MainUtil.f8(fingerActivity2, charSequence);
                                        } else {
                                            MainUtil.e8(fingerActivity2, R.string.cancelled);
                                        }
                                        if (fingerActivity2.q1) {
                                            fingerActivity2.y0();
                                        }
                                    }
                                }

                                @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                                public final void b() {
                                    FingerActivity fingerActivity2 = FingerActivity.this;
                                    fingerActivity2.r1 = true;
                                    if (fingerActivity2.q1) {
                                        fingerActivity2.y0();
                                    }
                                }

                                @Override // androidx.biometric.BiometricPrompt.AuthenticationCallback
                                public final void c() {
                                    FingerActivity fingerActivity2 = FingerActivity.this;
                                    if (fingerActivity2.g1 == null) {
                                        return;
                                    }
                                    fingerActivity2.r1 = false;
                                    fingerActivity2.s1 = false;
                                    if (fingerActivity2.l1 == 4) {
                                        fingerActivity2.w0();
                                        return;
                                    }
                                    if (!TextUtils.isEmpty(fingerActivity2.m1)) {
                                        Intent o4 = MainUtil.o4(fingerActivity2.getApplicationContext());
                                        o4.putExtra("EXTRA_PATH", fingerActivity2.m1);
                                        fingerActivity2.startActivity(o4);
                                    } else {
                                        fingerActivity2.setResult(-1);
                                        fingerActivity2.finish();
                                    }
                                }
                            };
                            ?? obj = new Object();
                            if (d != null) {
                                FragmentManager T = fingerActivity.T();
                                BiometricViewModel biometricViewModel = (BiometricViewModel) new ViewModelProvider(fingerActivity).a(BiometricViewModel.class);
                                obj.f390a = T;
                                if (biometricViewModel != null) {
                                    biometricViewModel.d = d;
                                    biometricViewModel.e = authenticationCallback;
                                }
                                fingerActivity.u1 = obj;
                                ?? obj2 = new Object();
                                obj2.f395a = null;
                                obj2.b = null;
                                obj2.f395a = fingerActivity.getString(R.string.finger_print);
                                obj2.b = fingerActivity.getString(i2);
                                BiometricPrompt.PromptInfo a2 = obj2.a();
                                fingerActivity.v1 = a2;
                                fingerActivity.u1.a(a2);
                                return;
                            }
                            throw new IllegalArgumentException("Executor must not be null.");
                        } catch (Exception unused) {
                        }
                    }
                }
            });
        }
    }

    public final void w0() {
        finishAffinity();
        Intent intent = new Intent(getApplicationContext(), (Class<?>) WidgetSearchActivity.class);
        intent.putExtra("EXTRA_LOCK", true);
        intent.putExtra("EXTRA_VOICE", this.n1);
        startActivity(intent);
    }

    public final void x0() {
        DialogLockReset dialogLockReset = this.o1;
        if (dialogLockReset != null) {
            dialogLockReset.dismiss();
            this.o1 = null;
        }
    }

    public final void y0() {
        if (!this.p1) {
            return;
        }
        if (this.l1 == 0) {
            moveTaskToBack(true);
        } else {
            finish();
        }
    }

    public final void z0() {
        if (this.o1 != null) {
            return;
        }
        x0();
        this.r1 = false;
        this.s1 = false;
        DialogLockReset dialogLockReset = new DialogLockReset(this, this.k1, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.lock.FingerActivity.10
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                FingerActivity fingerActivity = FingerActivity.this;
                fingerActivity.s1 = true;
                fingerActivity.x0();
                int i = fingerActivity.l1;
                if (i == 4) {
                    fingerActivity.w0();
                    return;
                }
                if (i == 0) {
                    fingerActivity.finishAffinity();
                    Intent o4 = MainUtil.o4(fingerActivity.getApplicationContext());
                    if (!TextUtils.isEmpty(fingerActivity.m1)) {
                        o4.putExtra("EXTRA_PATH", fingerActivity.m1);
                    }
                    fingerActivity.startActivity(o4);
                    return;
                }
                Intent intent = new Intent();
                intent.putExtra("EXTRA_LOAD", true);
                fingerActivity.setResult(-1, intent);
                fingerActivity.finish();
            }
        });
        this.o1 = dialogLockReset;
        dialogLockReset.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.lock.FingerActivity.11
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = FingerActivity.w1;
                FingerActivity fingerActivity = FingerActivity.this;
                fingerActivity.x0();
                if (fingerActivity.s1) {
                    return;
                }
                fingerActivity.y0();
            }
        });
    }
}
