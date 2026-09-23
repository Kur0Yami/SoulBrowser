package com.mycompany.app.dialog;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Handler;
import android.speech.tts.TextToSpeech;
import android.text.TextUtils;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.gms.ads.RequestConfiguration;
import com.mycompany.app.dialog.DialogSetFull;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyPopupAdapter;
import com.mycompany.app.view.MyPopupMenu;
import com.mycompany.app.view.MyRecyclerView;
import com.mycompany.app.view.MyRoundFrame;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Locale;
import java.util.Set;

/* loaded from: classes3.dex */
public class DialogSetTts extends MyDialogBottom {
    public static final /* synthetic */ int u0 = 0;
    public MainActivity a0;
    public Context b0;
    public MyDialogLinear c0;
    public FrameLayout d0;
    public MyRoundFrame e0;
    public AppCompatTextView f0;
    public String g0;
    public MyRecyclerView h0;
    public AppCompatTextView i0;
    public MyLineText j0;
    public SettingListAdapter k0;
    public MyPopupMenu l0;
    public String m0;
    public float n0;
    public float o0;
    public TextToSpeech p0;
    public Locale q0;
    public ArrayList r0;
    public boolean s0;
    public DialogSetMsg t0;

    /* loaded from: classes3.dex */
    public static class SortTts implements Comparator<Locale> {

        /* renamed from: c, reason: collision with root package name */
        public String f14660c;

        @Override // java.util.Comparator
        public final int compare(Locale locale, Locale locale2) {
            Locale locale3 = locale;
            Locale locale4 = locale2;
            String str = this.f14660c;
            if (locale3 != null || locale4 != null) {
                if (locale3 != null) {
                    if (locale4 != null) {
                        String displayName = locale3.getDisplayName();
                        String displayName2 = locale4.getDisplayName();
                        boolean isEmpty = TextUtils.isEmpty(displayName);
                        boolean isEmpty2 = TextUtils.isEmpty(displayName2);
                        if (isEmpty && isEmpty2) {
                            return 0;
                        }
                        if (!isEmpty) {
                            if (!isEmpty2) {
                                if (TextUtils.isEmpty(str)) {
                                    return displayName.compareTo(displayName2);
                                }
                                String language = locale3.getLanguage();
                                String language2 = locale4.getLanguage();
                                if (!str.equals(language) || str.equals(language2)) {
                                    if (!str.equals(language2) || str.equals(language)) {
                                        String locale5 = locale3.toString();
                                        String locale6 = locale4.toString();
                                        if (!TextUtils.isEmpty(locale5) && !TextUtils.isEmpty(locale6)) {
                                            if (locale5.startsWith(str) && !locale6.startsWith(str)) {
                                                return -1;
                                            }
                                            if (locale6.startsWith(str) && !locale5.startsWith(str)) {
                                                return 1;
                                            }
                                        }
                                        return displayName.compareTo(displayName2);
                                    }
                                    return 1;
                                }
                                return -1;
                            }
                            return -1;
                        }
                        return 1;
                    }
                    return -1;
                }
                return 1;
            }
            return 0;
        }
    }

    public DialogSetTts(MainActivity mainActivity) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.m0 = PrefTts.k;
        this.n0 = PrefTts.l;
        this.o0 = PrefTts.m;
        try {
            this.p0 = new TextToSpeech(this.b0, new TextToSpeech.OnInitListener() { // from class: com.mycompany.app.dialog.DialogSetTts.10
                @Override // android.speech.tts.TextToSpeech.OnInitListener
                public final void onInit(int i) {
                    DialogSetTts dialogSetTts = DialogSetTts.this;
                    if (i == -1) {
                        int i2 = DialogSetTts.u0;
                        dialogSetTts.F();
                        dialogSetTts.s0 = true;
                    } else if (dialogSetTts.p0 == null) {
                        dialogSetTts.s0 = true;
                    } else {
                        dialogSetTts.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTts.10.1
                            /* JADX WARN: Type inference failed for: r1v6, types: [com.mycompany.app.dialog.DialogSetTts$SortTts, java.lang.Object, java.util.Comparator] */
                            @Override // java.lang.Runnable
                            public final void run() {
                                ArrayList arrayList;
                                DialogSetTts dialogSetTts2 = DialogSetTts.this;
                                try {
                                    Set<Locale> availableLanguages = dialogSetTts2.p0.getAvailableLanguages();
                                    if (availableLanguages != null && availableLanguages.size() > 0) {
                                        arrayList = new ArrayList(availableLanguages);
                                        ?? obj = new Object();
                                        Locale j = MainApp.j();
                                        if (j != null) {
                                            obj.f14660c = j.getLanguage();
                                        }
                                        try {
                                            Collections.sort(arrayList, obj);
                                        } catch (Exception unused) {
                                        }
                                    } else {
                                        arrayList = null;
                                    }
                                    dialogSetTts2.r0 = arrayList;
                                    Locale locale = dialogSetTts2.q0;
                                    if (locale != null && dialogSetTts2.p0.isLanguageAvailable(locale) >= 0) {
                                        dialogSetTts2.p0.setLanguage(dialogSetTts2.q0);
                                    }
                                } catch (Exception unused2) {
                                }
                                dialogSetTts2.s0 = true;
                            }
                        });
                    }
                }
            });
            H();
        } catch (Exception unused) {
        }
        Handler handler = this.i;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTts.1
            @Override // java.lang.Runnable
            public final void run() {
                final DialogSetTts dialogSetTts = DialogSetTts.this;
                Context context = dialogSetTts.b0;
                if (context != null) {
                    MyDialogLinear q = com.google.android.gms.internal.mlkit_vision_text_common.a.q(context, 1);
                    FrameLayout frameLayout = new FrameLayout(context);
                    frameLayout.setPadding(0, 0, 0, MainApp.F1);
                    q.addView(frameLayout, -1, -2);
                    MyRoundFrame myRoundFrame = new MyRoundFrame(context);
                    frameLayout.addView(myRoundFrame, -1, -2);
                    AppCompatTextView appCompatTextView = new AppCompatTextView(context, null);
                    appCompatTextView.setGravity(17);
                    appCompatTextView.setLineSpacing(MainApp.F1, 1.0f);
                    appCompatTextView.setTextSize(1, 16.0f);
                    appCompatTextView.setMinHeight((int) MainUtil.G(context, 72.0f));
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                    int i = MainApp.E1;
                    layoutParams.setMargins(i, i, i, i);
                    layoutParams.gravity = 17;
                    myRoundFrame.addView(appCompatTextView, layoutParams);
                    MyRecyclerView myRecyclerView = new MyRecyclerView(context);
                    myRecyclerView.u0(true, false);
                    myRecyclerView.setVerticalScrollBarEnabled(true);
                    myRecyclerView.setHorizontalScrollBarEnabled(false);
                    LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, 0);
                    layoutParams2.weight = 1.0f;
                    q.addView(myRecyclerView, layoutParams2);
                    MyLineLinear myLineLinear = new MyLineLinear(context);
                    myLineLinear.setBaselineAligned(false);
                    myLineLinear.setOrientation(0);
                    myLineLinear.setLinePad(MainApp.E1);
                    myLineLinear.setLineUp(true);
                    MyLineText s = com.google.android.gms.internal.mlkit_vision_text_common.a.s(q, myLineLinear, -1, MainApp.g1, context);
                    s.setGravity(17);
                    s.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams f = com.google.android.gms.internal.mlkit_vision_text_common.a.f(s, R.string.reset, context, 0, -1);
                    f.weight = 1.0f;
                    AppCompatTextView l = com.google.android.gms.internal.mlkit_vision_text_common.a.l(myLineLinear, s, f, context, null);
                    l.setGravity(17);
                    l.setTextSize(1, 16.0f);
                    LinearLayout.LayoutParams e = com.google.android.gms.internal.mlkit_vision_text_common.a.e(l, R.string.apply, 0, -1);
                    e.weight = 1.0f;
                    myLineLinear.addView(l, e);
                    dialogSetTts.c0 = q;
                    dialogSetTts.d0 = frameLayout;
                    dialogSetTts.e0 = myRoundFrame;
                    dialogSetTts.f0 = appCompatTextView;
                    dialogSetTts.h0 = myRecyclerView;
                    dialogSetTts.i0 = l;
                    dialogSetTts.j0 = s;
                    Handler handler2 = dialogSetTts.i;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTts.2
                        @Override // java.lang.Runnable
                        public final void run() {
                            String string;
                            int i2;
                            final DialogSetTts dialogSetTts2 = DialogSetTts.this;
                            MyDialogLinear myDialogLinear = dialogSetTts2.c0;
                            if (myDialogLinear != null && dialogSetTts2.b0 != null) {
                                if (MainApp.K1) {
                                    myDialogLinear.setBackgroundColor(-16777216);
                                    dialogSetTts2.e0.c(-14606047, MainApp.l1);
                                    dialogSetTts2.f0.setTextColor(-328966);
                                    dialogSetTts2.h0.setBackgroundColor(-14606047);
                                    dialogSetTts2.i0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetTts2.j0.setBackgroundResource(R.drawable.selector_list_back_dark);
                                    dialogSetTts2.i0.setTextColor(-328966);
                                    dialogSetTts2.j0.setTextColor(-328966);
                                } else {
                                    myDialogLinear.setBackgroundColor(-460552);
                                    dialogSetTts2.e0.c(-1, MainApp.l1);
                                    dialogSetTts2.f0.setTextColor(-16777216);
                                    dialogSetTts2.h0.setBackgroundColor(-1);
                                    dialogSetTts2.i0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetTts2.j0.setBackgroundResource(R.drawable.selector_list_back);
                                    dialogSetTts2.i0.setTextColor(-14784824);
                                    dialogSetTts2.j0.setTextColor(-16777216);
                                }
                                String string2 = dialogSetTts2.b0.getString(R.string.tts_info_2);
                                dialogSetTts2.g0 = string2;
                                if (!TextUtils.isEmpty(string2)) {
                                    dialogSetTts2.f0.setText(dialogSetTts2.g0);
                                    dialogSetTts2.g0 = dialogSetTts2.g0.replace('\n', ' ');
                                }
                                Locale O3 = MainUtil.O3(dialogSetTts2.m0);
                                dialogSetTts2.q0 = O3;
                                if (O3 != null) {
                                    string = O3.getDisplayName();
                                    i2 = 0;
                                } else {
                                    string = dialogSetTts2.b0.getString(R.string.auto_detect);
                                    i2 = R.string.not_support_site;
                                }
                                String str = string;
                                int i3 = i2;
                                ArrayList arrayList = new ArrayList();
                                arrayList.add(new SettingListAdapter.SettingItem(0, R.string.locale, str, i3, 0));
                                arrayList.add(new SettingListAdapter.SettingItem(1, R.string.voice_speed, 25, DialogSetTts.C(dialogSetTts2.n0, 25), (Object) null));
                                MyManagerLinear t = com.google.android.gms.internal.mlkit_vision_text_common.a.t(arrayList, new SettingListAdapter.SettingItem(2, R.string.voice_tone, 15, DialogSetTts.C(dialogSetTts2.o0, 15), (Object) null), 1);
                                dialogSetTts2.k0 = new SettingListAdapter(arrayList, true, t, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.dialog.DialogSetTts.3
                                    @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                    public final void a(SettingListAdapter.ViewHolder viewHolder, int i4, boolean z, int i5) {
                                        boolean z2;
                                        final DialogSetTts dialogSetTts3 = DialogSetTts.this;
                                        if (i4 != 0) {
                                            if (i4 != 1) {
                                                if (i4 != 2) {
                                                    int i6 = DialogSetTts.u0;
                                                    return;
                                                } else {
                                                    if (dialogSetTts3.p0 != null) {
                                                        dialogSetTts3.I();
                                                        float B = DialogSetTts.B(i5, 15);
                                                        dialogSetTts3.o0 = B;
                                                        dialogSetTts3.p0.setPitch(B);
                                                        return;
                                                    }
                                                    return;
                                                }
                                            }
                                            if (dialogSetTts3.p0 != null) {
                                                dialogSetTts3.I();
                                                float B2 = DialogSetTts.B(i5, 25);
                                                dialogSetTts3.n0 = B2;
                                                dialogSetTts3.p0.setSpeechRate(B2);
                                                return;
                                            }
                                            return;
                                        }
                                        if (!dialogSetTts3.s0) {
                                            MainUtil.e8(dialogSetTts3.b0, R.string.wait_retry);
                                            return;
                                        }
                                        MyPopupMenu myPopupMenu = dialogSetTts3.l0;
                                        if (myPopupMenu == null) {
                                            if (myPopupMenu != null) {
                                                dialogSetTts3.Y = null;
                                                myPopupMenu.a();
                                                dialogSetTts3.l0 = null;
                                            }
                                            if (viewHolder != null && viewHolder.D != null) {
                                                ArrayList arrayList2 = new ArrayList();
                                                boolean isEmpty = TextUtils.isEmpty(dialogSetTts3.m0);
                                                arrayList2.add(new MyPopupAdapter.PopMenuItem(0, R.string.auto_detect, isEmpty));
                                                ArrayList arrayList3 = dialogSetTts3.r0;
                                                if (arrayList3 != null && arrayList3.size() > 0) {
                                                    ArrayList arrayList4 = dialogSetTts3.r0;
                                                    int size = arrayList4.size();
                                                    int i7 = 1;
                                                    int i8 = 0;
                                                    while (i8 < size) {
                                                        Object obj = arrayList4.get(i8);
                                                        i8++;
                                                        Locale locale = (Locale) obj;
                                                        String displayName = locale.getDisplayName();
                                                        if (!isEmpty && dialogSetTts3.m0.equals(locale.toString())) {
                                                            z2 = true;
                                                        } else {
                                                            z2 = false;
                                                        }
                                                        arrayList2.add(new MyPopupAdapter.PopMenuItem(displayName, i7, z2));
                                                        i7++;
                                                    }
                                                }
                                                MyPopupMenu myPopupMenu2 = new MyPopupMenu(dialogSetTts3.a0, dialogSetTts3.c0, viewHolder.D, arrayList2, MainApp.K1, new MyPopupMenu.MyPopupListener() { // from class: com.mycompany.app.dialog.DialogSetTts.9
                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final void a() {
                                                        int i9 = DialogSetTts.u0;
                                                        DialogSetTts dialogSetTts4 = DialogSetTts.this;
                                                        MyPopupMenu myPopupMenu3 = dialogSetTts4.l0;
                                                        if (myPopupMenu3 != null) {
                                                            dialogSetTts4.Y = null;
                                                            myPopupMenu3.a();
                                                            dialogSetTts4.l0 = null;
                                                        }
                                                    }

                                                    @Override // com.mycompany.app.view.MyPopupMenu.MyPopupListener
                                                    public final boolean b(View view, int i9) {
                                                        String str2;
                                                        int i10;
                                                        ArrayList arrayList5;
                                                        int i11;
                                                        DialogSetTts dialogSetTts4 = DialogSetTts.this;
                                                        if (dialogSetTts4.p0 != null) {
                                                            String str3 = null;
                                                            dialogSetTts4.q0 = null;
                                                            if (i9 > 0 && (arrayList5 = dialogSetTts4.r0) != null && (i11 = i9 - 1) < arrayList5.size()) {
                                                                Locale locale2 = (Locale) dialogSetTts4.r0.get(i11);
                                                                dialogSetTts4.q0 = locale2;
                                                                str3 = locale2.toString();
                                                                str2 = dialogSetTts4.q0.getDisplayName();
                                                            } else {
                                                                str2 = null;
                                                            }
                                                            if (!MainUtil.q5(dialogSetTts4.m0, str3)) {
                                                                dialogSetTts4.m0 = str3;
                                                                if (dialogSetTts4.k0 != null) {
                                                                    if (!TextUtils.isEmpty(str2)) {
                                                                        dialogSetTts4.k0.G(0, str2);
                                                                        i10 = 0;
                                                                    } else {
                                                                        dialogSetTts4.k0.F(0, R.string.auto_detect);
                                                                        i10 = R.string.not_support_site;
                                                                    }
                                                                    dialogSetTts4.k0.C(0, i10);
                                                                }
                                                                dialogSetTts4.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogSetTts.9.1
                                                                    @Override // java.lang.Runnable
                                                                    public final void run() {
                                                                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                                                                        DialogSetTts.this.I();
                                                                        try {
                                                                            DialogSetTts dialogSetTts5 = DialogSetTts.this;
                                                                            Locale locale3 = dialogSetTts5.q0;
                                                                            if (locale3 != null) {
                                                                                dialogSetTts5.p0.setLanguage(locale3);
                                                                            } else {
                                                                                dialogSetTts5.p0.setLanguage(MainApp.j());
                                                                            }
                                                                        } catch (Exception unused2) {
                                                                        }
                                                                    }
                                                                });
                                                            }
                                                        }
                                                        return true;
                                                    }
                                                });
                                                dialogSetTts3.l0 = myPopupMenu2;
                                                dialogSetTts3.Y = myPopupMenu2;
                                            }
                                        }
                                    }
                                });
                                dialogSetTts2.h0.setLayoutManager(t);
                                dialogSetTts2.h0.setAdapter(dialogSetTts2.k0);
                                dialogSetTts2.t(dialogSetTts2.h0, new MyDialogBottom.BotListListener() { // from class: com.mycompany.app.dialog.DialogSetTts.4
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotListListener
                                    public final void a(boolean z) {
                                        MyRecyclerView myRecyclerView2 = DialogSetTts.this.h0;
                                        if (myRecyclerView2 == null) {
                                            return;
                                        }
                                        if (z) {
                                            myRecyclerView2.w0();
                                        } else {
                                            myRecyclerView2.r0();
                                        }
                                    }
                                });
                                dialogSetTts2.f0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTts.5
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        TextToSpeech textToSpeech;
                                        DialogSetTts dialogSetTts3 = DialogSetTts.this;
                                        String str2 = dialogSetTts3.g0;
                                        dialogSetTts3.getClass();
                                        if (!TextUtils.isEmpty(str2) && (textToSpeech = dialogSetTts3.p0) != null) {
                                            try {
                                                if (textToSpeech.isSpeaking()) {
                                                    dialogSetTts3.p0.stop();
                                                }
                                                dialogSetTts3.p0.speak(str2, 0, null, null);
                                            } catch (Exception unused2) {
                                            }
                                        }
                                    }
                                });
                                dialogSetTts2.i0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTts.6
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i4 = DialogSetTts.u0;
                                        DialogSetTts.this.G(true);
                                    }
                                });
                                dialogSetTts2.j0.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.dialog.DialogSetTts.7
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        final DialogSetTts dialogSetTts3 = DialogSetTts.this;
                                        if (dialogSetTts3.a0 == null || dialogSetTts3.t0 != null) {
                                            return;
                                        }
                                        dialogSetTts3.D();
                                        DialogSetMsg dialogSetMsg = new DialogSetMsg(dialogSetTts3.a0, R.string.reset_setting, R.string.reset, new DialogSetFull.DialogApplyListener() { // from class: com.mycompany.app.dialog.DialogSetTts.11
                                            @Override // com.mycompany.app.dialog.DialogSetFull.DialogApplyListener
                                            public final void a() {
                                                String string3;
                                                int i4;
                                                int i5 = DialogSetTts.u0;
                                                DialogSetTts dialogSetTts4 = DialogSetTts.this;
                                                dialogSetTts4.D();
                                                if (dialogSetTts4.k0 == null) {
                                                    return;
                                                }
                                                dialogSetTts4.I();
                                                if (!MainUtil.q5(dialogSetTts4.m0, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
                                                    dialogSetTts4.m0 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                                    Locale O32 = MainUtil.O3(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                                                    dialogSetTts4.q0 = O32;
                                                    if (O32 != null) {
                                                        string3 = O32.getDisplayName();
                                                        i4 = 0;
                                                    } else {
                                                        string3 = dialogSetTts4.b0.getString(R.string.auto_detect);
                                                        i4 = R.string.not_support_site;
                                                    }
                                                    if (!TextUtils.isEmpty(string3)) {
                                                        dialogSetTts4.k0.G(0, string3);
                                                    } else {
                                                        dialogSetTts4.k0.F(0, R.string.auto_detect);
                                                    }
                                                    dialogSetTts4.k0.C(0, i4);
                                                    try {
                                                        Locale locale = dialogSetTts4.q0;
                                                        if (locale != null) {
                                                            dialogSetTts4.p0.setLanguage(locale);
                                                        } else {
                                                            dialogSetTts4.p0.setLanguage(MainApp.j());
                                                        }
                                                    } catch (Exception unused2) {
                                                    }
                                                }
                                                if (Float.compare(dialogSetTts4.n0, 1.0f) != 0) {
                                                    dialogSetTts4.n0 = 1.0f;
                                                    dialogSetTts4.k0.D(new SettingListAdapter.SettingItem(1, R.string.voice_speed, 25, DialogSetTts.C(1.0f, 25), (Object) null));
                                                    dialogSetTts4.p0.setSpeechRate(dialogSetTts4.n0);
                                                }
                                                if (Float.compare(dialogSetTts4.o0, 1.0f) != 0) {
                                                    dialogSetTts4.o0 = 1.0f;
                                                    dialogSetTts4.k0.D(new SettingListAdapter.SettingItem(2, R.string.voice_tone, 15, DialogSetTts.C(1.0f, 15), (Object) null));
                                                    dialogSetTts4.p0.setPitch(dialogSetTts4.o0);
                                                }
                                                dialogSetTts4.G(false);
                                            }
                                        });
                                        dialogSetTts3.t0 = dialogSetMsg;
                                        dialogSetMsg.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.mycompany.app.dialog.DialogSetTts.12
                                            @Override // android.content.DialogInterface.OnDismissListener
                                            public final void onDismiss(DialogInterface dialogInterface) {
                                                int i4 = DialogSetTts.u0;
                                                DialogSetTts.this.D();
                                            }
                                        });
                                    }
                                });
                                dialogSetTts2.E(dialogSetTts2.p());
                                dialogSetTts2.g(dialogSetTts2.c0, new MyDialogBottom.BotViewListener() { // from class: com.mycompany.app.dialog.DialogSetTts.8
                                    @Override // com.mycompany.app.view.MyDialogBottom.BotViewListener
                                    public final void a(View view) {
                                        DialogSetTts dialogSetTts3 = DialogSetTts.this;
                                        if (dialogSetTts3.c0 == null) {
                                            return;
                                        }
                                        dialogSetTts3.show();
                                    }
                                });
                            }
                        }
                    });
                }
            }
        });
    }

    public static float B(int i, int i2) {
        float f = (i2 / 10.0f) + 0.5f;
        float f2 = (i / 10.0f) + 0.5f;
        if (f2 < 0.5f) {
            return 0.5f;
        }
        return f2 > f ? f : f2;
    }

    public static int C(float f, int i) {
        int round = Math.round((f - 0.5f) * 10.0f);
        if (round < 0) {
            return 0;
        }
        if (round > i) {
            return i;
        }
        return round;
    }

    public final void D() {
        DialogSetMsg dialogSetMsg = this.t0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.t0 = null;
        }
    }

    public final void E(boolean z) {
        int i;
        if (this.d0 == null) {
            return;
        }
        if (z) {
            z = q();
        }
        FrameLayout frameLayout = this.d0;
        if (z) {
            i = 8;
        } else {
            i = 0;
        }
        frameLayout.setVisibility(i);
    }

    public final void F() {
        this.r0 = null;
        TextToSpeech textToSpeech = this.p0;
        if (textToSpeech == null) {
            return;
        }
        try {
            if (textToSpeech.isSpeaking()) {
                this.p0.stop();
            }
            this.p0.shutdown();
        } catch (Exception unused) {
        }
        this.p0 = null;
    }

    public final void G(boolean z) {
        if (!MainUtil.q5(PrefTts.k, this.m0) || Float.compare(PrefTts.l, this.n0) != 0 || Float.compare(PrefTts.m, this.o0) != 0) {
            PrefTts.k = this.m0;
            PrefTts.l = this.n0;
            PrefTts.m = this.o0;
            PrefTts r = PrefTts.r(this.b0, false);
            if (z) {
                r.p("mTtsLang", PrefTts.k);
                r.m("mTtsRate", PrefTts.l);
                r.m("mTtsPitch", PrefTts.m);
            } else {
                r.q("mTtsLang");
                r.q("mTtsRate");
                r.q("mTtsPitch");
            }
            r.a();
        }
        if (z) {
            dismiss();
        }
    }

    public final void H() {
        if (this.p0 != null) {
            try {
                if (Float.compare(this.n0, 1.0f) != 0) {
                    float f = this.n0;
                    if (f < 0.5f) {
                        this.n0 = 0.5f;
                    } else if (f > 3.0f) {
                        this.n0 = 3.0f;
                    }
                    this.p0.setSpeechRate(this.n0);
                }
                if (Float.compare(this.o0, 1.0f) != 0) {
                    float f2 = this.o0;
                    if (f2 < 0.5f) {
                        this.o0 = 0.5f;
                    } else if (f2 > 2.0f) {
                        this.o0 = 2.0f;
                    }
                    this.p0.setPitch(this.o0);
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void I() {
        TextToSpeech textToSpeech = this.p0;
        if (textToSpeech != null) {
            try {
                if (textToSpeech.isSpeaking()) {
                    this.p0.stop();
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        F();
        D();
        MyPopupMenu myPopupMenu = this.l0;
        if (myPopupMenu != null) {
            this.Y = null;
            myPopupMenu.a();
            this.l0 = null;
        }
        MyDialogLinear myDialogLinear = this.c0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.c0 = null;
        }
        MyRoundFrame myRoundFrame = this.e0;
        if (myRoundFrame != null) {
            myRoundFrame.a();
            this.e0 = null;
        }
        MyRecyclerView myRecyclerView = this.h0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.h0 = null;
        }
        MyLineText myLineText = this.j0;
        if (myLineText != null) {
            myLineText.u();
            this.j0 = null;
        }
        SettingListAdapter settingListAdapter = this.k0;
        if (settingListAdapter != null) {
            settingListAdapter.z();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.d0 = null;
        this.f0 = null;
        this.g0 = null;
        this.i0 = null;
        this.m0 = null;
        this.q0 = null;
        super.dismiss();
    }
}
