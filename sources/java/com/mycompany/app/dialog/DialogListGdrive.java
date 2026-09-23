package com.mycompany.app.dialog;

import android.content.Context;
import android.text.TextUtils;
import android.view.MotionEvent;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogDeleteItem;
import com.mycompany.app.dialog.DialogPrintPage;
import com.mycompany.app.gdrive.GdriveAdapter;
import com.mycompany.app.gdrive.GdriveManager;
import com.mycompany.app.main.MainItem;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefList;
import com.mycompany.app.setting.SettingBackup;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogNormal;
import com.mycompany.app.view.MyFadeImage;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundImage;
import com.mycompany.app.view.MyScrollBar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogListGdrive extends MyDialogNormal {
    public static final /* synthetic */ int X = 0;
    public final int A;
    public MyMainRelative B;
    public MyButtonImage C;
    public AppCompatTextView D;
    public MyButtonImage E;
    public MyButtonImage F;
    public MyRecyclerView G;
    public MyManagerLinear H;
    public GdriveAdapter I;
    public ListTask J;
    public SortTask K;
    public MyScrollBar L;
    public MyFadeImage M;
    public MyCoverView N;
    public String O;
    public MyPopupMenu P;
    public DialogSetSort Q;
    public DialogDeleteItem R;
    public String S;
    public boolean T;
    public final Runnable U;
    public MainItem.ChildItem V;
    public int W;
    public SettingBackup w;
    public Context x;
    public DialogPrintPage.PathChangeListener y;
    public GdriveManager z;

    /* renamed from: com.mycompany.app.dialog.DialogListGdrive$14, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass14 implements DialogDeleteItem.DelItemListener {
        public AnonymousClass14() {
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void a() {
            DialogListGdrive dialogListGdrive = DialogListGdrive.this;
            if (dialogListGdrive.R == null) {
                return;
            }
            dialogListGdrive.m(new Runnable() { // from class: com.mycompany.app.dialog.DialogListGdrive.14.1
                @Override // java.lang.Runnable
                public final void run() {
                    GdriveManager gdriveManager;
                    DialogListGdrive dialogListGdrive2 = DialogListGdrive.this;
                    MainItem.ChildItem childItem = dialogListGdrive2.V;
                    if (childItem != null && (gdriveManager = dialogListGdrive2.z) != null) {
                        final boolean b = gdriveManager.b(childItem.g);
                        MyRecyclerView myRecyclerView = dialogListGdrive2.G;
                        if (myRecyclerView == null) {
                            return;
                        }
                        myRecyclerView.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogListGdrive.14.1.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                AnonymousClass14 anonymousClass14 = AnonymousClass14.this;
                                DialogListGdrive dialogListGdrive3 = DialogListGdrive.this;
                                int i = dialogListGdrive3.W;
                                GdriveAdapter gdriveAdapter = dialogListGdrive3.I;
                                if (gdriveAdapter == null) {
                                    return;
                                }
                                if (b) {
                                    List list = gdriveAdapter.d;
                                    if (list != null && i >= 0 && i < list.size() && ((MainItem.ChildItem) gdriveAdapter.d.remove(i)) != null) {
                                        gdriveAdapter.g();
                                    }
                                    List list2 = DialogListGdrive.this.I.d;
                                    if (list2 != null && !list2.isEmpty()) {
                                        DialogListGdrive.this.M.setVisibility(8);
                                    } else {
                                        DialogListGdrive.this.M.setVisibility(0);
                                    }
                                } else {
                                    MainUtil.e8(dialogListGdrive3.x, R.string.fail);
                                }
                                DialogListGdrive.this.p();
                            }
                        });
                    }
                }
            });
        }

        @Override // com.mycompany.app.dialog.DialogDeleteItem.DelItemListener
        public final void b(MyRoundImage myRoundImage, AppCompatTextView appCompatTextView) {
            DialogListGdrive dialogListGdrive = DialogListGdrive.this;
            MainItem.ChildItem childItem = dialogListGdrive.V;
            if (childItem == null || dialogListGdrive.R == null) {
                return;
            }
            myRoundImage.o(childItem.v, childItem.w);
            appCompatTextView.setText(childItem.h);
        }
    }

    /* loaded from: classes3.dex */
    public static class ListTask extends MyAsyncTask {
        public final WeakReference e;
        public String f;
        public ArrayList g;

        public ListTask(DialogListGdrive dialogListGdrive, String str) {
            WeakReference weakReference = new WeakReference(dialogListGdrive);
            this.e = weakReference;
            DialogListGdrive dialogListGdrive2 = (DialogListGdrive) weakReference.get();
            if (dialogListGdrive2 != null) {
                this.f = str;
                MyCoverView myCoverView = dialogListGdrive2.N;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:40:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:96:0x01fa  */
        /* JADX WARN: Type inference failed for: r12v1, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v7, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v8, types: [com.mycompany.app.main.MainItem$ChildItem, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r9v3, types: [java.lang.Object, com.mycompany.app.gdrive.GdriveManager$ServerFile] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 559
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogListGdrive.ListTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogListGdrive dialogListGdrive;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogListGdrive = (DialogListGdrive) weakReference.get()) == null) {
                return;
            }
            dialogListGdrive.J = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogListGdrive dialogListGdrive;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogListGdrive = (DialogListGdrive) weakReference.get()) != null) {
                dialogListGdrive.J = null;
                dialogListGdrive.O = this.f;
                GdriveAdapter gdriveAdapter = dialogListGdrive.I;
                if (gdriveAdapter != null) {
                    gdriveAdapter.d = this.g;
                    gdriveAdapter.g();
                }
                MyCoverView myCoverView = dialogListGdrive.N;
                if (myCoverView == null) {
                    return;
                }
                myCoverView.f(true);
                ArrayList arrayList = this.g;
                if (arrayList != null && !arrayList.isEmpty()) {
                    dialogListGdrive.M.setVisibility(8);
                } else {
                    dialogListGdrive.M.setVisibility(0);
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SortTask extends MyAsyncTask {
        public final WeakReference e;
        public final List f;

        public SortTask(DialogListGdrive dialogListGdrive, List list) {
            WeakReference weakReference = new WeakReference(dialogListGdrive);
            this.e = weakReference;
            DialogListGdrive dialogListGdrive2 = (DialogListGdrive) weakReference.get();
            if (dialogListGdrive2 != null) {
                this.f = list;
                MyCoverView myCoverView = dialogListGdrive2.N;
                if (myCoverView != null) {
                    myCoverView.m(true);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            List list;
            MainItem.ChildItem childItem;
            MainItem.ChildItem childItem2;
            WeakReference weakReference = this.e;
            if (weakReference != null && ((DialogListGdrive) weakReference.get()) != null && !this.f12839c && (list = this.f) != null && !list.isEmpty()) {
                MainItem.ChildItem childItem3 = null;
                if (!list.isEmpty() && (childItem2 = (MainItem.ChildItem) list.get(0)) != null && childItem2.b == 1) {
                    childItem = (MainItem.ChildItem) list.remove(0);
                } else {
                    childItem = null;
                }
                if (!list.isEmpty()) {
                    int size = list.size() - 1;
                    MainItem.ChildItem childItem4 = (MainItem.ChildItem) list.get(size);
                    if (childItem4 != null && childItem4.b == 2) {
                        childItem3 = (MainItem.ChildItem) list.remove(size);
                    }
                }
                if (!list.isEmpty()) {
                    try {
                        Collections.sort(list, MainUtil.g8(0, PrefList.h1, PrefList.i1));
                    } catch (Exception unused) {
                    }
                }
                if (childItem != null) {
                    list.add(0, childItem);
                }
                if (childItem3 != null) {
                    list.add(childItem3);
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogListGdrive dialogListGdrive;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogListGdrive = (DialogListGdrive) weakReference.get()) == null) {
                return;
            }
            dialogListGdrive.K = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            DialogListGdrive dialogListGdrive;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogListGdrive = (DialogListGdrive) weakReference.get()) != null) {
                dialogListGdrive.K = null;
                GdriveAdapter gdriveAdapter = dialogListGdrive.I;
                List list = this.f;
                if (gdriveAdapter != null) {
                    gdriveAdapter.d = list;
                    gdriveAdapter.g();
                }
                MyCoverView myCoverView = dialogListGdrive.N;
                if (myCoverView == null) {
                    return;
                }
                myCoverView.f(true);
                if (list != null && !list.isEmpty()) {
                    dialogListGdrive.M.setVisibility(8);
                } else {
                    dialogListGdrive.M.setVisibility(0);
                }
            }
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public DialogListGdrive(com.mycompany.app.setting.SettingBackup r2, com.mycompany.app.gdrive.GdriveManager r3, com.mycompany.app.dialog.DialogPrintPage.PathChangeListener r4) {
        /*
            r1 = this;
            boolean r0 = com.mycompany.app.main.MainApp.K1
            if (r0 == 0) goto L7
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullBlack
            goto L9
        L7:
            int r0 = com.mycompany.app.soulbrowser.R.style.DialogFullTheme
        L9:
            r1.<init>(r2, r0)
            com.mycompany.app.dialog.DialogListGdrive$10 r0 = new com.mycompany.app.dialog.DialogListGdrive$10
            r0.<init>()
            r1.U = r0
            r1.j()
            r1.w = r2
            android.content.Context r2 = r1.getContext()
            r1.x = r2
            r1.y = r4
            r1.z = r3
            r2 = 43
            r1.A = r2
            android.os.Handler r2 = r1.i
            if (r2 != 0) goto L2b
            return
        L2b:
            com.mycompany.app.dialog.DialogListGdrive$1 r3 = new com.mycompany.app.dialog.DialogListGdrive$1
            r3.<init>()
            r2.post(r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogListGdrive.<init>(com.mycompany.app.setting.SettingBackup, com.mycompany.app.gdrive.GdriveManager, com.mycompany.app.dialog.DialogPrintPage$PathChangeListener):void");
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18667c = false;
        if (this.x == null) {
            return;
        }
        ListTask listTask = this.J;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.J = null;
        SortTask sortTask = this.K;
        if (sortTask != null) {
            sortTask.f12839c = true;
        }
        this.K = null;
        DialogSetSort dialogSetSort = this.Q;
        if (dialogSetSort != null) {
            dialogSetSort.dismiss();
            this.Q = null;
        }
        p();
        MyPopupMenu myPopupMenu = this.P;
        if (myPopupMenu != null) {
            this.u = null;
            myPopupMenu.a();
            this.P = null;
        }
        MyButtonImage myButtonImage = this.C;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.C = null;
        }
        MyButtonImage myButtonImage2 = this.E;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.E = null;
        }
        MyButtonImage myButtonImage3 = this.F;
        if (myButtonImage3 != null) {
            myButtonImage3.j();
            this.F = null;
        }
        MyRecyclerView myRecyclerView = this.G;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.G = null;
        }
        GdriveAdapter gdriveAdapter = this.I;
        if (gdriveAdapter != null) {
            gdriveAdapter.f = gdriveAdapter.d();
            gdriveAdapter.d = null;
            gdriveAdapter.e = null;
            this.I = null;
        }
        MyScrollBar myScrollBar = this.L;
        if (myScrollBar != null) {
            myScrollBar.k();
            this.L = null;
        }
        MyFadeImage myFadeImage = this.M;
        if (myFadeImage != null) {
            myFadeImage.e();
            this.M = null;
        }
        MyCoverView myCoverView = this.N;
        if (myCoverView != null) {
            myCoverView.i();
            this.N = null;
        }
        SettingBackup settingBackup = this.w;
        if (settingBackup != null) {
            settingBackup.n0(null, false);
            this.w = null;
        }
        this.x = null;
        this.y = null;
        this.z = null;
        this.B = null;
        this.D = null;
        this.H = null;
        this.O = null;
        this.S = null;
        super.dismiss();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (!this.f18667c) {
            return false;
        }
        try {
            return super.dispatchTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.mycompany.app.view.MyDialogNormal
    public final void l() {
        if (!TextUtils.isEmpty(this.O) && !"/".equals(this.O)) {
            o(MainUtil.d1(null, this.O));
        } else {
            dismiss();
        }
    }

    public final void o(String str) {
        ListTask listTask = this.J;
        if (listTask != null) {
            listTask.f12839c = true;
        }
        this.J = null;
        ListTask listTask2 = new ListTask(this, str);
        this.J = listTask2;
        listTask2.b(this.x);
    }

    @Override // com.mycompany.app.view.MyDialogNormal, android.app.Dialog
    public final void onBackPressed() {
        if (e()) {
            return;
        }
        l();
    }

    public final void p() {
        DialogDeleteItem dialogDeleteItem = this.R;
        if (dialogDeleteItem != null) {
            dialogDeleteItem.dismiss();
            this.R = null;
        }
    }
}
