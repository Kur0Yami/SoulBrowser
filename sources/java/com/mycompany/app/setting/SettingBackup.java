package com.mycompany.app.setting;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.CancellationSignal;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import android.webkit.MimeTypeMap;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultRegistry$register$2;
import androidx.activity.result.IntentSenderRequest;
import androidx.credentials.ClearCredentialStateRequest;
import androidx.credentials.CredentialManagerCallback;
import androidx.credentials.CredentialManagerImpl;
import androidx.credentials.exceptions.ClearCredentialException;
import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.p000authapi.zbad;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.mycompany.app.dialog.DialogBackupLoad;
import com.mycompany.app.dialog.DialogBackupSave;
import com.mycompany.app.dialog.DialogListGdrive;
import com.mycompany.app.dialog.DialogPrintPage;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.dialog.DialogSetMsg;
import com.mycompany.app.dialog.a;
import com.mycompany.app.gdrive.DataGdrive;
import com.mycompany.app.gdrive.GdriveManager;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUri;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyMainRelative;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import kotlin.jvm.internal.Intrinsics;

/* loaded from: classes3.dex */
public class SettingBackup extends SettingActivity {
    public static final /* synthetic */ int l2 = 0;
    public boolean X1;
    public MyCoverView Y1;
    public boolean Z1;
    public int a2;
    public String b2;
    public GdriveManager c2;
    public boolean d2;
    public DialogListGdrive e2;
    public DialogBackupLoad f2;
    public DialogBackupSave g2;
    public DialogSetMsg h2;
    public ExecutorService i2;
    public int j2;
    public final ActivityResultRegistry$register$2 k2 = (ActivityResultRegistry$register$2) S(new Object(), new ActivityResultCallback<ActivityResult>() { // from class: com.mycompany.app.setting.SettingBackup.20
        /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.auth.api.identity.zba, java.lang.Object] */
        @Override // androidx.activity.result.ActivityResultCallback
        public final void a(Object obj) {
            ActivityResult activityResult = (ActivityResult) obj;
            int i = SettingBackup.l2;
            SettingBackup settingBackup = SettingBackup.this;
            String str = null;
            if (activityResult != null && activityResult.f53c == -1) {
                try {
                    str = new zbad((Activity) Preconditions.checkNotNull(settingBackup), new Object()).h(activityResult.f).f;
                } catch (ApiException | Exception unused) {
                }
                if (TextUtils.isEmpty(str)) {
                    MainUtil.e8(settingBackup, R.string.fail);
                }
            }
            SettingBackup.O0(settingBackup, str);
        }
    });

    /* renamed from: com.mycompany.app.setting.SettingBackup$5, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass5 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    public static void O0(SettingBackup settingBackup, String str) {
        settingBackup.b2 = str;
        Handler handler = settingBackup.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.12
            /* JADX WARN: Type inference failed for: r4v7, types: [com.mycompany.app.gdrive.GdriveManager, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                int i;
                MyButtonImage myButtonImage;
                SettingBackup settingBackup2 = SettingBackup.this;
                int i2 = settingBackup2.a2;
                settingBackup2.a2 = 0;
                boolean isEmpty = TextUtils.isEmpty(settingBackup2.b2);
                if (!isEmpty) {
                    ?? obj = new Object();
                    if (obj.d(settingBackup2.f1, settingBackup2.b2)) {
                        settingBackup2.c2 = obj;
                    }
                } else {
                    GdriveManager gdriveManager = settingBackup2.c2;
                    if (gdriveManager != null) {
                        gdriveManager.b = null;
                        DataGdrive b = DataGdrive.b(gdriveManager.f15712a);
                        b.f15708a = null;
                        b.b = null;
                        settingBackup2.c2 = null;
                    }
                }
                SettingListAdapter settingListAdapter = settingBackup2.N1;
                if (settingListAdapter != null) {
                    if (!isEmpty) {
                        if (MainApp.K1) {
                            i = R.drawable.outline_cancel_dark_24;
                        } else {
                            i = R.drawable.outline_cancel_black_24;
                        }
                    } else {
                        i = 0;
                    }
                    if (settingBackup2.j2 != i) {
                        settingBackup2.j2 = i;
                        int v = settingListAdapter.v(5);
                        SettingListAdapter.SettingItem w = settingListAdapter.w(v);
                        if (w != null && w.b == 5) {
                            w.z = i;
                            SettingListAdapter.ViewHolder x = settingListAdapter.x(v);
                            if (x != null && (myButtonImage = x.I) != null) {
                                int i3 = w.z;
                                if (i3 != 0) {
                                    myButtonImage.setImageResource(i3);
                                    x.I.setVisibility(0);
                                } else {
                                    myButtonImage.setVisibility(8);
                                }
                            }
                        }
                    }
                }
                GdriveManager gdriveManager2 = settingBackup2.c2;
                if (gdriveManager2 != null) {
                    if (i2 == 1) {
                        settingBackup2.W0();
                    } else if (i2 == 2) {
                        settingBackup2.V0(gdriveManager2);
                    }
                }
                settingBackup2.T0(false, false);
            }
        });
    }

    /* JADX WARN: Type inference failed for: r2v4, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        int i;
        int i2;
        if (MainApp.K1) {
            i = R.drawable.outline_sd_card_dark_24;
            i2 = R.drawable.outline_drive_dark_24;
        } else {
            i = R.drawable.outline_sd_card_black_24;
            i2 = R.drawable.outline_drive_black_24;
        }
        int i3 = i;
        this.j2 = 0;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        arrayList.add(new SettingListAdapter.SettingItem(1, R.string.storage, (String) null, i3, false));
        arrayList.add(new SettingListAdapter.SettingItem(2, R.string.backup_import, 0, 0, 1));
        arrayList.add(new SettingListAdapter.SettingItem(3, R.string.backup_export, 0, 0, 2));
        arrayList.add(new SettingListAdapter.SettingItem(4, false));
        int i4 = this.j2;
        ?? obj = new Object();
        obj.f17931a = 22;
        obj.b = 5;
        obj.d = "Google Drive";
        obj.e = i2;
        obj.z = i4;
        arrayList.add(obj);
        arrayList.add(new SettingListAdapter.SettingItem(6, R.string.backup_import, 0, 0, 1));
        a.u(arrayList, new SettingListAdapter.SettingItem(7, R.string.backup_export, 0, 0, 2), 8, false);
        return arrayList;
    }

    public final void P0() {
        DialogSetMsg dialogSetMsg = this.h2;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.h2 = null;
        }
    }

    public final void Q0() {
        DialogListGdrive dialogListGdrive = this.e2;
        if (dialogListGdrive != null) {
            dialogListGdrive.dismiss();
            this.e2 = null;
        }
    }

    public final boolean R0() {
        if (this.e2 != null || this.f2 != null || this.g2 != null || this.h2 != null) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [com.mycompany.app.gdrive.GdriveManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, com.google.android.gms.auth.api.identity.AuthorizationRequest$Builder] */
    /* JADX WARN: Type inference failed for: r2v2, types: [com.google.android.gms.auth.api.identity.zba, java.lang.Object] */
    public final void S0(int i) {
        if (TextUtils.isEmpty(this.b2)) {
            if (!this.Z1) {
                T0(true, true);
                this.a2 = i;
                try {
                    List singletonList = Collections.singletonList(new Scope("https://www.googleapis.com/auth/drive.file"));
                    ?? obj = new Object();
                    obj.b(singletonList);
                    new zbad((Activity) Preconditions.checkNotNull(this), new Object()).g(obj.a()).g(new OnSuccessListener<AuthorizationResult>() { // from class: com.mycompany.app.setting.SettingBackup.10
                        @Override // com.google.android.gms.tasks.OnSuccessListener
                        public final void onSuccess(Object obj2) {
                            boolean z;
                            AuthorizationResult authorizationResult = (AuthorizationResult) obj2;
                            SettingBackup settingBackup = SettingBackup.this;
                            try {
                                PendingIntent pendingIntent = authorizationResult.j;
                                if (pendingIntent != null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z) {
                                    String str = authorizationResult.f;
                                    if (TextUtils.isEmpty(str)) {
                                        MainUtil.e8(settingBackup, R.string.fail);
                                    }
                                    SettingBackup.O0(settingBackup, str);
                                    return;
                                }
                                settingBackup.k2.a(new IntentSenderRequest.Builder(pendingIntent.getIntentSender()).a());
                            } catch (Exception unused) {
                                int i2 = SettingBackup.l2;
                                settingBackup.T0(false, false);
                                MainUtil.e8(settingBackup, R.string.fail);
                            }
                        }
                    }).e(new OnFailureListener() { // from class: com.mycompany.app.setting.SettingBackup.9
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final void c(Exception exc) {
                            int i2 = SettingBackup.l2;
                            SettingBackup settingBackup = SettingBackup.this;
                            settingBackup.T0(false, false);
                            MainUtil.e8(settingBackup, R.string.fail);
                        }
                    });
                    return;
                } catch (Exception unused) {
                    T0(false, false);
                    MainUtil.e8(this, R.string.fail);
                    return;
                }
            }
            return;
        }
        if (this.c2 == null) {
            ?? obj2 = new Object();
            if (obj2.d(this.f1, this.b2)) {
                this.c2 = obj2;
            }
            if (this.c2 == null) {
                MainUtil.e8(this, R.string.fail);
                return;
            }
        }
        if (i == 1) {
            W0();
        } else if (i == 2) {
            V0(this.c2);
        }
    }

    public final void T0(boolean z, boolean z2) {
        int i;
        Handler handler;
        MyCoverView myCoverView = this.Y1;
        if (myCoverView != null) {
            this.Z1 = z;
            this.a2 = 0;
            if (!z) {
                myCoverView.setVisibility(8);
                return;
            }
            myCoverView.setSkipDraw(z2);
            MyCoverView myCoverView2 = this.Y1;
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -13022805;
            }
            myCoverView2.setColor(i);
            this.Y1.setVisibility(0);
            if (!z2 || (handler = this.O0) == null) {
                return;
            }
            handler.postDelayed(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.6
                @Override // java.lang.Runnable
                public final void run() {
                    SettingBackup settingBackup = SettingBackup.this;
                    MyCoverView myCoverView3 = settingBackup.Y1;
                    if (myCoverView3 != null) {
                        myCoverView3.setSkipDraw(settingBackup.X1);
                    }
                }
            }, 400L);
        }
    }

    public final void U0(String str, GdriveManager gdriveManager) {
        if (R0()) {
            return;
        }
        DialogBackupLoad dialogBackupLoad = this.f2;
        if (dialogBackupLoad != null) {
            dialogBackupLoad.dismiss();
            this.f2 = null;
        }
        this.d2 = false;
        DialogBackupLoad dialogBackupLoad2 = new DialogBackupLoad(this, str, gdriveManager, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingBackup.15
            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
            public final void a() {
                SettingBackup.this.d2 = true;
            }
        });
        this.f2 = dialogBackupLoad2;
        dialogBackupLoad2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingBackup.16
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingBackup.l2;
                SettingBackup settingBackup = SettingBackup.this;
                DialogBackupLoad dialogBackupLoad3 = settingBackup.f2;
                if (dialogBackupLoad3 != null) {
                    dialogBackupLoad3.dismiss();
                    settingBackup.f2 = null;
                }
                if (!settingBackup.d2) {
                    return;
                }
                settingBackup.m0(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.16.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        SettingBackup settingBackup2 = SettingBackup.this;
                        int i2 = SettingBackup.l2;
                        settingBackup2.getClass();
                        MainUtil.c7(settingBackup2, null, false);
                    }
                });
            }
        });
    }

    public final void V0(GdriveManager gdriveManager) {
        if (R0()) {
            return;
        }
        DialogBackupSave dialogBackupSave = this.g2;
        if (dialogBackupSave != null) {
            dialogBackupSave.dismiss();
            this.g2 = null;
        }
        DialogBackupSave dialogBackupSave2 = new DialogBackupSave(this, gdriveManager);
        this.g2 = dialogBackupSave2;
        dialogBackupSave2.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingBackup.17
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingBackup.l2;
                SettingBackup settingBackup = SettingBackup.this;
                DialogBackupSave dialogBackupSave3 = settingBackup.g2;
                if (dialogBackupSave3 != null) {
                    dialogBackupSave3.dismiss();
                    settingBackup.g2 = null;
                }
            }
        });
    }

    public final void W0() {
        if (R0()) {
            return;
        }
        Q0();
        DialogListGdrive dialogListGdrive = new DialogListGdrive(this, this.c2, new DialogPrintPage.PathChangeListener() { // from class: com.mycompany.app.setting.SettingBackup.13
            @Override // com.mycompany.app.dialog.DialogPrintPage.PathChangeListener
            public final void a(String str) {
                int i = SettingBackup.l2;
                SettingBackup settingBackup = SettingBackup.this;
                settingBackup.Q0();
                settingBackup.U0(str, settingBackup.c2);
            }
        });
        this.e2 = dialogListGdrive;
        dialogListGdrive.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingBackup.14
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                int i = SettingBackup.l2;
                SettingBackup.this.Q0();
            }
        });
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        DialogBackupSave dialogBackupSave = this.g2;
        if (dialogBackupSave != null && i == 19) {
            if (i2 == -1 && intent != null && dialogBackupSave.c0 != null) {
                Uri data = intent.getData();
                if (data == null) {
                    MainUtil.e8(dialogBackupSave.c0, R.string.invalid_path);
                    return;
                }
                String a2 = MainUri.a(data);
                if (TextUtils.isEmpty(a2)) {
                    MainUtil.e8(dialogBackupSave.c0, R.string.invalid_path);
                    return;
                } else {
                    dialogBackupSave.O(a2);
                    MainUtil.z7(dialogBackupSave.c0, data);
                    return;
                }
            }
            return;
        }
        if (i == 9 && i2 == -1 && intent != null) {
            Uri data2 = intent.getData();
            if (data2 == null) {
                MainUtil.e8(this, R.string.invalid_file);
                return;
            }
            String uri = data2.toString();
            if (TextUtils.isEmpty(uri)) {
                MainUtil.e8(this, R.string.invalid_file);
            } else if (!"dat".equals(MainUtil.W0(MainUri.k(this.f1, uri)))) {
                MainUtil.e8(this, R.string.invalid_file);
            } else {
                MainUtil.z7(this.f1, data2);
                U0(uri, null);
            }
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        DialogListGdrive dialogListGdrive = this.e2;
        if (dialogListGdrive != null) {
            dialogListGdrive.f();
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        o0(null, 19);
        o0(null, 9);
        F0(R.string.backup_title, false, false);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.1
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r2v3, types: [android.view.View$OnClickListener, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingBackup.l2;
                final SettingBackup settingBackup = SettingBackup.this;
                if (settingBackup.O0 != null) {
                    if (settingBackup.K1 != null) {
                        MyCoverView myCoverView = new MyCoverView(settingBackup.f1);
                        settingBackup.Y1 = myCoverView;
                        myCoverView.setVisibility(8);
                        settingBackup.Y1.setOnClickListener(new Object());
                        settingBackup.K1.addView(settingBackup.Y1, -1, -1);
                    }
                    Handler handler2 = settingBackup.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingBackup.l2;
                            final SettingBackup settingBackup2 = SettingBackup.this;
                            if (settingBackup2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingBackup2.D0(), false, settingBackup2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingBackup.3
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    int i5 = SettingBackup.l2;
                                    final SettingBackup settingBackup3 = SettingBackup.this;
                                    if (i3 != 2) {
                                        if (i3 != 3) {
                                            if (i3 != 5) {
                                                if (i3 != 6) {
                                                    if (i3 == 7) {
                                                        settingBackup3.S0(2);
                                                        return;
                                                    }
                                                    return;
                                                }
                                                settingBackup3.S0(1);
                                                return;
                                            }
                                            if (!TextUtils.isEmpty(settingBackup3.b2) && !settingBackup3.R0()) {
                                                settingBackup3.P0();
                                                DialogSetMsg dialogSetMsg = new DialogSetMsg(settingBackup3, R.string.ask_rem_pms, R.string.remove_pms, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.setting.SettingBackup.18
                                                    @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                                    public final void a() {
                                                        MyMainRelative myMainRelative = SettingBackup.this.E1;
                                                        if (myMainRelative == null) {
                                                            return;
                                                        }
                                                        myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.18.1
                                                            @Override // java.lang.Runnable
                                                            public final void run() {
                                                                final SettingBackup settingBackup4 = SettingBackup.this;
                                                                int i6 = SettingBackup.l2;
                                                                settingBackup4.P0();
                                                                if (settingBackup4.Z1) {
                                                                    return;
                                                                }
                                                                settingBackup4.T0(true, false);
                                                                try {
                                                                    if (settingBackup4.i2 == null) {
                                                                        settingBackup4.i2 = Executors.newSingleThreadExecutor();
                                                                    }
                                                                    Context context = settingBackup4.f1;
                                                                    Intrinsics.checkNotNullParameter(context, "context");
                                                                    new CredentialManagerImpl(context).a(new ClearCredentialStateRequest(), new CancellationSignal(), settingBackup4.i2, new CredentialManagerCallback<Void, ClearCredentialException>() { // from class: com.mycompany.app.setting.SettingBackup.11
                                                                        @Override // androidx.credentials.CredentialManagerCallback
                                                                        public final void a(Object obj) {
                                                                            Handler handler3 = SettingBackup.this.O0;
                                                                            if (handler3 == null) {
                                                                                return;
                                                                            }
                                                                            handler3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.11.2
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    SettingBackup settingBackup5 = SettingBackup.this;
                                                                                    int i7 = SettingBackup.l2;
                                                                                    settingBackup5.T0(false, false);
                                                                                    MainUtil.e8(settingBackup5, R.string.fail);
                                                                                }
                                                                            });
                                                                        }

                                                                        @Override // androidx.credentials.CredentialManagerCallback
                                                                        public final void onResult(Object obj) {
                                                                            SettingBackup settingBackup5 = SettingBackup.this;
                                                                            SettingBackup.O0(settingBackup5, null);
                                                                            Handler handler3 = settingBackup5.O0;
                                                                            if (handler3 == null) {
                                                                                return;
                                                                            }
                                                                            handler3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.11.1
                                                                                @Override // java.lang.Runnable
                                                                                public final void run() {
                                                                                    MainUtil.e8(SettingBackup.this, R.string.permission_removed);
                                                                                }
                                                                            });
                                                                        }
                                                                    });
                                                                } catch (Exception unused) {
                                                                    settingBackup4.T0(false, false);
                                                                    MainUtil.e8(settingBackup4, R.string.fail);
                                                                }
                                                            }
                                                        });
                                                    }
                                                });
                                                settingBackup3.h2 = dialogSetMsg;
                                                dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.setting.SettingBackup.19
                                                    @Override // android.content.DialogInterface.OnDismissListener
                                                    public final void onDismiss(DialogInterface dialogInterface) {
                                                        int i6 = SettingBackup.l2;
                                                        SettingBackup.this.P0();
                                                    }
                                                });
                                                return;
                                            }
                                            return;
                                        }
                                        settingBackup3.V0(null);
                                        return;
                                    }
                                    try {
                                        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension("dat");
                                        if (TextUtils.isEmpty(mimeTypeFromExtension)) {
                                            mimeTypeFromExtension = "*/*";
                                        }
                                        Intent intent = new Intent("android.intent.action.OPEN_DOCUMENT");
                                        intent.addCategory("android.intent.category.OPENABLE");
                                        intent.setType(mimeTypeFromExtension);
                                        intent.addFlags(65);
                                        settingBackup3.o0(intent, 9);
                                    } catch (Exception unused) {
                                    }
                                }
                            });
                            settingBackup2.N1 = settingListAdapter;
                            settingBackup2.L1.setAdapter(settingListAdapter);
                            settingBackup2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        GdriveManager gdriveManager = this.c2;
        if (gdriveManager != null) {
            gdriveManager.b = null;
            DataGdrive b = DataGdrive.b(gdriveManager.f15712a);
            b.f15708a = null;
            b.b = null;
            this.c2 = null;
        }
        MyCoverView myCoverView = this.Y1;
        if (myCoverView != null) {
            myCoverView.i();
            this.Y1 = null;
        }
        this.b2 = null;
        this.i2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        this.X1 = true;
        if (isFinishing()) {
            Q0();
            DialogBackupLoad dialogBackupLoad = this.f2;
            if (dialogBackupLoad != null) {
                dialogBackupLoad.dismiss();
                this.f2 = null;
            }
            DialogBackupSave dialogBackupSave = this.g2;
            if (dialogBackupSave != null) {
                dialogBackupSave.dismiss();
                this.g2 = null;
            }
            P0();
            return;
        }
        MyCoverView myCoverView = this.Y1;
        if (myCoverView != null) {
            myCoverView.setSkipDraw(this.X1);
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        this.X1 = false;
        DialogListGdrive dialogListGdrive = this.e2;
        if (dialogListGdrive != null) {
            dialogListGdrive.o(dialogListGdrive.O);
        }
        MyCoverView myCoverView = this.Y1;
        if (myCoverView != null) {
            myCoverView.setSkipDraw(this.X1);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onStart() {
        super.onStart();
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingBackup.4
            /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.auth.api.identity.AuthorizationRequest$Builder] */
            /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.gms.auth.api.identity.zba, java.lang.Object] */
            @Override // java.lang.Runnable
            public final void run() {
                final SettingBackup settingBackup = SettingBackup.this;
                if (settingBackup.Z1) {
                    return;
                }
                settingBackup.T0(true, true);
                try {
                    List singletonList = Collections.singletonList(new Scope("https://www.googleapis.com/auth/drive.file"));
                    ?? obj = new Object();
                    obj.b(singletonList);
                    new zbad((Activity) Preconditions.checkNotNull(settingBackup), new Object()).g(obj.a()).g(new OnSuccessListener<AuthorizationResult>() { // from class: com.mycompany.app.setting.SettingBackup.8
                        @Override // com.google.android.gms.tasks.OnSuccessListener
                        public final void onSuccess(Object obj2) {
                            boolean z;
                            AuthorizationResult authorizationResult = (AuthorizationResult) obj2;
                            SettingBackup settingBackup2 = SettingBackup.this;
                            try {
                                if (authorizationResult.j != null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (!z) {
                                    SettingBackup.O0(settingBackup2, authorizationResult.f);
                                } else {
                                    int i = SettingBackup.l2;
                                    settingBackup2.T0(false, false);
                                }
                            } catch (Exception unused) {
                                int i2 = SettingBackup.l2;
                                settingBackup2.T0(false, false);
                            }
                        }
                    }).e(new OnFailureListener() { // from class: com.mycompany.app.setting.SettingBackup.7
                        @Override // com.google.android.gms.tasks.OnFailureListener
                        public final void c(Exception exc) {
                            int i = SettingBackup.l2;
                            SettingBackup.this.T0(false, false);
                        }
                    });
                } catch (Exception unused) {
                    settingBackup.T0(false, false);
                }
            }
        });
    }
}
