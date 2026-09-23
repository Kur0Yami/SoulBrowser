package com.mycompany.app.dialog;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.main.InitialSearch;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainSelectAdapter;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyCoverView;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogRelative;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class DialogSetItem extends MyDialogBottom {
    public Context a0;
    public MainSelectAdapter.MainSelectListener b0;
    public int[] c0;
    public int[] d0;
    public final int e0;
    public final boolean f0;
    public MyDialogRelative g0;
    public MyEditPure h0;
    public MyButtonImage i0;
    public MyRoundView j0;
    public MyRecyclerView k0;
    public MyLineText l0;
    public DialogTask m0;
    public ArrayList n0;
    public MainSelectAdapter o0;
    public MyManagerLinear p0;
    public boolean q0;

    /* loaded from: classes3.dex */
    public static class DialogTask extends MyAsyncTask {
        public final WeakReference e;
        public List f;
        public int g;
        public boolean h;
        public String i;

        public DialogTask(DialogSetItem dialogSetItem, String str) {
            WeakReference weakReference = new WeakReference(dialogSetItem);
            this.e = weakReference;
            if (((DialogSetItem) weakReference.get()) == null) {
                return;
            }
            this.g = -1;
            this.h = false;
            this.i = str;
        }

        /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object, java.util.Comparator] */
        /* JADX WARN: Type inference failed for: r7v5, types: [java.lang.Object, com.mycompany.app.main.MainSelectAdapter$MainSelectItem] */
        @Override // com.mycompany.app.async.MyAsyncTask
        public final void a() {
            DialogSetItem dialogSetItem;
            ArrayList arrayList;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetItem = (DialogSetItem) weakReference.get()) != null && !this.f12839c && dialogSetItem.a0 != null) {
                ArrayList arrayList2 = dialogSetItem.n0;
                int i = 0;
                if (arrayList2 == null || arrayList2.isEmpty()) {
                    int[] iArr = dialogSetItem.c0;
                    if (iArr != null && iArr.length != 0) {
                        arrayList = new ArrayList();
                        for (int i2 : dialogSetItem.c0) {
                            arrayList.add(Integer.valueOf(i2));
                        }
                    } else {
                        arrayList = null;
                    }
                    int[] iArr2 = dialogSetItem.d0;
                    if (iArr2 != null && iArr2.length != 0) {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        for (int i3 : dialogSetItem.d0) {
                            arrayList.add(Integer.valueOf(i3));
                        }
                    }
                    int s0 = MainUtil.s0(0, false);
                    ArrayList arrayList3 = new ArrayList();
                    for (int i4 = 3; i4 < 74; i4++) {
                        if (i4 != 68) {
                            ?? obj = new Object();
                            obj.f16839a = i4;
                            obj.f16840c = MainUtil.m2(i4, s0);
                            String string = dialogSetItem.a0.getString(MainUtil.n2(i4));
                            obj.e = string;
                            obj.g = string.toLowerCase(Locale.US);
                            if (obj.f16839a == dialogSetItem.e0) {
                                obj.i = true;
                            } else if (arrayList != null && arrayList.contains(Integer.valueOf(i4))) {
                                obj.k = true;
                            }
                            arrayList3.add(obj);
                        }
                    }
                    if (!arrayList3.isEmpty()) {
                        try {
                            Collections.sort(arrayList3, new Object());
                        } catch (Exception unused) {
                        }
                        int size = arrayList3.size();
                        int i5 = 0;
                        int i6 = 0;
                        while (true) {
                            if (i6 >= size) {
                                break;
                            }
                            Object obj2 = arrayList3.get(i6);
                            i6++;
                            MainSelectAdapter.MainSelectItem mainSelectItem = (MainSelectAdapter.MainSelectItem) obj2;
                            if (mainSelectItem != null) {
                                if (mainSelectItem.i) {
                                    this.g = i5;
                                    break;
                                }
                                i5++;
                            }
                        }
                    }
                    dialogSetItem.n0 = arrayList3;
                    if (arrayList3.isEmpty()) {
                        return;
                    }
                }
                ArrayList arrayList4 = dialogSetItem.n0;
                if (arrayList4 != null && !arrayList4.isEmpty()) {
                    if (TextUtils.isEmpty(this.i)) {
                        this.f = arrayList4;
                        return;
                    }
                    this.h = true;
                    this.i = this.i.toLowerCase(Locale.US);
                    boolean z = dialogSetItem.f0;
                    this.f = new ArrayList();
                    int size2 = arrayList4.size();
                    while (i < size2) {
                        Object obj3 = arrayList4.get(i);
                        i++;
                        MainSelectAdapter.MainSelectItem mainSelectItem2 = (MainSelectAdapter.MainSelectItem) obj3;
                        if (mainSelectItem2 != null) {
                            String str = this.i;
                            if (z) {
                                String a2 = InitialSearch.a(mainSelectItem2.e, mainSelectItem2.g, str);
                                if (!TextUtils.isEmpty(a2)) {
                                    mainSelectItem2.h = a2.toLowerCase(Locale.US);
                                    this.f.add(mainSelectItem2);
                                }
                            }
                            if (mainSelectItem2.g.contains(str)) {
                                mainSelectItem2.h = str;
                                this.f.add(mainSelectItem2);
                            }
                        }
                    }
                }
            }
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            DialogSetItem dialogSetItem;
            WeakReference weakReference = this.e;
            if (weakReference == null || (dialogSetItem = (DialogSetItem) weakReference.get()) == null) {
                return;
            }
            dialogSetItem.m0 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            final DialogSetItem dialogSetItem;
            WeakReference weakReference = this.e;
            if (weakReference != null && (dialogSetItem = (DialogSetItem) weakReference.get()) != null) {
                dialogSetItem.m0 = null;
                List list = this.f;
                final int i = this.g;
                boolean z = this.h;
                if (dialogSetItem.k0 != null) {
                    MainSelectAdapter mainSelectAdapter = dialogSetItem.o0;
                    if (mainSelectAdapter != null) {
                        mainSelectAdapter.d = list;
                        mainSelectAdapter.k = z;
                        mainSelectAdapter.g();
                    } else {
                        MainSelectAdapter mainSelectAdapter2 = new MainSelectAdapter(list, dialogSetItem.e0, 1, true, new MainSelectAdapter.MainSelectListener() { // from class: com.mycompany.app.dialog.DialogSetItem.9
                            @Override // com.mycompany.app.main.MainSelectAdapter.MainSelectListener
                            public final void a(int i2) {
                                MainSelectAdapter.MainSelectListener mainSelectListener = DialogSetItem.this.b0;
                                if (mainSelectListener != null) {
                                    mainSelectListener.a(i2);
                                }
                            }
                        });
                        dialogSetItem.o0 = mainSelectAdapter2;
                        dialogSetItem.k0.setAdapter(mainSelectAdapter2);
                        if (i < 1) {
                            return;
                        }
                        dialogSetItem.k0.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetItem.10
                            @Override // java.lang.Runnable
                            public final void run() {
                                MyManagerLinear myManagerLinear;
                                DialogSetItem dialogSetItem2 = DialogSetItem.this;
                                if (dialogSetItem2.o0 != null && (myManagerLinear = dialogSetItem2.p0) != null) {
                                    myManagerLinear.x0(i);
                                }
                            }
                        });
                    }
                }
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SortItem implements Comparator<MainSelectAdapter.MainSelectItem> {
        @Override // java.util.Comparator
        public final int compare(MainSelectAdapter.MainSelectItem mainSelectItem, MainSelectAdapter.MainSelectItem mainSelectItem2) {
            MainSelectAdapter.MainSelectItem mainSelectItem3 = mainSelectItem;
            MainSelectAdapter.MainSelectItem mainSelectItem4 = mainSelectItem2;
            if (mainSelectItem3 == null && mainSelectItem4 == null) {
                return 0;
            }
            if (mainSelectItem3 == null) {
                return 1;
            }
            if (mainSelectItem4 == null) {
                return -1;
            }
            return MainUtil.n(mainSelectItem3.g, mainSelectItem4.g, false);
        }
    }

    public DialogSetItem(Activity activity, int i, int[] iArr, int[] iArr2, MainSelectAdapter.MainSelectListener mainSelectListener) {
        super(activity);
        this.a0 = getContext();
        this.b0 = mainSelectListener;
        this.c0 = iArr;
        this.d0 = iArr2;
        this.e0 = i;
        this.f0 = MainUtil.M5();
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetItem.1
            @Override // java.lang.Runnable
            public final void run() {
                DialogSetItem.B(DialogSetItem.this);
            }
        });
    }

    public static void B(DialogSetItem dialogSetItem) {
        int i;
        Context context = dialogSetItem.a0;
        if (context != null) {
            int i2 = R.id.item_frame_view;
            int i3 = R.id.item_trans_view;
            MyDialogRelative myDialogRelative = new MyDialogRelative(context);
            RelativeLayout relativeLayout = new RelativeLayout(context);
            myDialogRelative.addView(relativeLayout, -1, MainApp.b1);
            MyRoundView myRoundView = new MyRoundView(context);
            relativeLayout.addView(myRoundView, -1, MainApp.b1);
            RelativeLayout relativeLayout2 = new RelativeLayout(context);
            relativeLayout2.setId(i2);
            relativeLayout2.setMinimumWidth(MainApp.g1);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, MainApp.b1);
            layoutParams.addRule(21);
            layoutParams.setMarginEnd(MainApp.G1);
            relativeLayout.addView(relativeLayout2, layoutParams);
            MyButtonImage myButtonImage = new MyButtonImage(context);
            myButtonImage.setId(i3);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            myButtonImage.setVisibility(8);
            relativeLayout2.addView(myButtonImage, MainApp.g1, MainApp.b1);
            if (MainApp.K1) {
                i = -328966;
            } else {
                i = -13022805;
            }
            MyCoverView myCoverView = new MyCoverView(context, i, (int) MainUtil.G(context, 2.0f), MainApp.z1);
            myCoverView.setVisibility(8);
            relativeLayout2.addView(myCoverView, MainApp.g1, MainApp.b1);
            MyButtonImage myButtonImage2 = new MyButtonImage(context);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams2.addRule(17, i3);
            relativeLayout2.addView(myButtonImage2, layoutParams2);
            MyButtonImage myButtonImage3 = new MyButtonImage(context);
            myButtonImage3.setScaleType(scaleType);
            myButtonImage3.setVisibility(8);
            relativeLayout2.addView(myButtonImage3, MainApp.g1, MainApp.b1);
            MyEditPure myEditPure = new MyEditPure(context);
            myEditPure.setGravity(16);
            myEditPure.setSingleLine(true);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setHint(R.string.search_url);
            myEditPure.setHintTextColor(-8289919);
            myEditPure.setImeOptions(268435459);
            myEditPure.setSelectAllOnFocus(true);
            myEditPure.setBackground(null);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, MainApp.b1);
            layoutParams3.addRule(16, i2);
            layoutParams3.setMarginStart((int) MainUtil.G(context, 20.0f));
            relativeLayout.addView(myEditPure, layoutParams3);
            MyRecyclerView u = com.google.android.gms.internal.mlkit_vision_text_common.a.u(context, true, false);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams4.topMargin = MainApp.b1;
            layoutParams4.bottomMargin = MainApp.g1;
            myDialogRelative.addView(u, layoutParams4);
            View view = new View(context);
            view.setVisibility(8);
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams((int) MainUtil.G(context, 130.0f), (int) MainUtil.G(context, 24.0f));
            layoutParams5.addRule(21);
            layoutParams5.addRule(12);
            layoutParams5.bottomMargin = MainApp.g1;
            myDialogRelative.addView(view, layoutParams5);
            MyLineText myLineText = new MyLineText(context);
            myLineText.setGravity(17);
            myLineText.setTextSize(1, 16.0f);
            myLineText.setText(R.string.close);
            myLineText.t(MainApp.E1);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, MainApp.g1);
            layoutParams6.addRule(12);
            myDialogRelative.addView(myLineText, layoutParams6);
            dialogSetItem.g0 = myDialogRelative;
            dialogSetItem.h0 = myEditPure;
            dialogSetItem.i0 = myButtonImage3;
            dialogSetItem.j0 = myRoundView;
            dialogSetItem.k0 = u;
            dialogSetItem.l0 = myLineText;
            Handler handler = dialogSetItem.i;
            if (handler == null) {
                return;
            }
            handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetItem.2
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r1v14, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.RecyclerView$LayoutManager, androidx.recyclerview.widget.LinearLayoutManager] */
                @Override // java.lang.Runnable
                public final void run() {
                    final DialogSetItem dialogSetItem2 = DialogSetItem.this;
                    if (dialogSetItem2.g0 != null && dialogSetItem2.a0 != null) {
                        MainUtil.r7(dialogSetItem2.k0);
                        int i4 = -1;
                        if (MainApp.K1) {
                            dialogSetItem2.g0.setBackgroundColor(-16777216);
                            dialogSetItem2.h0.setTextColor(-328966);
                            dialogSetItem2.i0.setImageResource(R.drawable.outline_cancel_dark_18);
                            dialogSetItem2.i0.setBgPreColor(-12632257);
                            dialogSetItem2.k0.setBackgroundColor(-14606047);
                            dialogSetItem2.l0.setBackgroundResource(R.drawable.selector_list_back_dark);
                            dialogSetItem2.l0.setTextColor(-328966);
                        } else {
                            dialogSetItem2.g0.setBackgroundColor(-460552);
                            dialogSetItem2.h0.setTextColor(-16777216);
                            dialogSetItem2.i0.setImageResource(R.drawable.outline_cancel_black_18);
                            dialogSetItem2.i0.setBgPreColor(-2039584);
                            dialogSetItem2.k0.setBackgroundColor(-1);
                            dialogSetItem2.l0.setBackgroundResource(R.drawable.selector_list_back);
                            dialogSetItem2.l0.setTextColor(-16777216);
                        }
                        MyRoundView myRoundView2 = dialogSetItem2.j0;
                        if (MainApp.K1) {
                            i4 = -14606047;
                        }
                        myRoundView2.setBackColor(i4);
                        dialogSetItem2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetItem.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogSetItem dialogSetItem3 = DialogSetItem.this;
                                MyButtonImage myButtonImage4 = dialogSetItem3.i0;
                                if (myButtonImage4 == null) {
                                    return;
                                }
                                myButtonImage4.setVisibility(4);
                                dialogSetItem3.h0.setText((CharSequence) null);
                                DialogTask dialogTask = dialogSetItem3.m0;
                                if (dialogTask != null) {
                                    dialogTask.f12839c = true;
                                }
                                dialogSetItem3.m0 = null;
                                DialogTask dialogTask2 = new DialogTask(dialogSetItem3, null);
                                dialogSetItem3.m0 = dialogTask2;
                                dialogTask2.b(dialogSetItem3.a0);
                            }
                        });
                        dialogSetItem2.h0.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.dialog.DialogSetItem.4
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                String str;
                                DialogSetItem dialogSetItem3 = DialogSetItem.this;
                                if (dialogSetItem3.i0 == null) {
                                    return;
                                }
                                if (!TextUtils.isEmpty(editable)) {
                                    str = editable.toString();
                                } else {
                                    str = null;
                                }
                                if (TextUtils.isEmpty(str)) {
                                    dialogSetItem3.i0.setVisibility(4);
                                } else {
                                    dialogSetItem3.i0.setVisibility(0);
                                    str = str.trim();
                                }
                                boolean isEmpty = TextUtils.isEmpty(str);
                                boolean z = !isEmpty;
                                if (!isEmpty || dialogSetItem3.q0) {
                                    DialogTask dialogTask = dialogSetItem3.m0;
                                    if (dialogTask != null) {
                                        dialogTask.f12839c = true;
                                    }
                                    dialogSetItem3.m0 = null;
                                    DialogTask dialogTask2 = new DialogTask(dialogSetItem3, str);
                                    dialogSetItem3.m0 = dialogTask2;
                                    dialogTask2.b(dialogSetItem3.a0);
                                }
                                dialogSetItem3.q0 = z;
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                            }
                        });
                        ?? linearLayoutManager = new LinearLayoutManager(1);
                        dialogSetItem2.p0 = linearLayoutManager;
                        dialogSetItem2.k0.setLayoutManager(linearLayoutManager);
                        dialogSetItem2.t(dialogSetItem2.k0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogSetItem.5
                            @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                            public final void a(boolean z) {
                                MyRecyclerView myRecyclerView = DialogSetItem.this.k0;
                                if (myRecyclerView == null) {
                                    return;
                                }
                                if (z) {
                                    myRecyclerView.w0();
                                } else {
                                    myRecyclerView.r0();
                                }
                            }
                        });
                        dialogSetItem2.l0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetItem.6
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view2) {
                                DialogSetItem.this.dismiss();
                            }
                        });
                        dialogSetItem2.f(dialogSetItem2.g0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetItem.7
                            @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                            public final void a(View view2) {
                                final DialogSetItem dialogSetItem3 = DialogSetItem.this;
                                if (dialogSetItem3.g0 != null) {
                                    dialogSetItem3.show();
                                    Handler handler2 = dialogSetItem3.i;
                                    if (handler2 == null) {
                                        return;
                                    }
                                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetItem.8
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            DialogSetItem dialogSetItem4 = DialogSetItem.this;
                                            DialogTask dialogTask = dialogSetItem4.m0;
                                            if (dialogTask != null) {
                                                dialogTask.f12839c = true;
                                            }
                                            dialogSetItem4.m0 = null;
                                            DialogTask dialogTask2 = new DialogTask(dialogSetItem4, null);
                                            dialogSetItem4.m0 = dialogTask2;
                                            dialogTask2.b(dialogSetItem4.a0);
                                        }
                                    });
                                }
                            }
                        });
                    }
                }
            });
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.a0 == null) {
            return;
        }
        DialogTask dialogTask = this.m0;
        if (dialogTask != null) {
            dialogTask.f12839c = true;
        }
        this.m0 = null;
        MyDialogRelative myDialogRelative = this.g0;
        if (myDialogRelative != null) {
            myDialogRelative.c();
            this.g0 = null;
        }
        MyButtonImage myButtonImage = this.i0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i0 = null;
        }
        MyRoundView myRoundView = this.j0;
        if (myRoundView != null) {
            myRoundView.a();
            this.j0 = null;
        }
        MyRecyclerView myRecyclerView = this.k0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.k0 = null;
        }
        MyLineText myLineText = this.l0;
        if (myLineText != null) {
            myLineText.u();
            this.l0 = null;
        }
        MainSelectAdapter mainSelectAdapter = this.o0;
        if (mainSelectAdapter != null) {
            mainSelectAdapter.w();
            this.o0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.d0 = null;
        this.h0 = null;
        this.p0 = null;
        super.dismiss();
    }
}
