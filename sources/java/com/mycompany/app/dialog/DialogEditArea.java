package com.mycompany.app.dialog;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.main.MainActivity;
import com.mycompany.app.main.MainAreaAdapter;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogBottom;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class DialogEditArea extends MyDialogBottom {
    public static final /* synthetic */ int E0 = 0;
    public ArrayList A0;
    public boolean B0;
    public boolean C0;
    public String D0;
    public MainActivity a0;
    public Context b0;
    public EditAreaListener c0;
    public MyDialogLinear d0;
    public MyButtonImage e0;
    public MyButtonImage f0;
    public MyLineText g0;
    public MyRecyclerView h0;
    public MainAreaAdapter i0;
    public AppCompatTextView j0;
    public MyLineText k0;
    public DialogGuideArea l0;
    public DialogWebView m0;
    public final boolean n0;
    public DialogSetMsg o0;
    public DialogEditCmd p0;
    public String q0;
    public String r0;
    public String s0;
    public String t0;
    public String u0;
    public String v0;
    public String w0;
    public List x0;
    public ArrayList y0;
    public ArrayList z0;

    /* loaded from: classes3.dex */
    public interface EditAreaListener {
        void a(String str, String str2, String str3);
    }

    public DialogEditArea(MainActivity mainActivity, String str, String str2, String str3, boolean z, EditAreaListener editAreaListener) {
        super(mainActivity);
        this.a0 = mainActivity;
        this.b0 = getContext();
        this.c0 = editAreaListener;
        this.q0 = str;
        this.r0 = str2;
        this.D0 = str3;
        this.n0 = z;
        s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditArea.1
            /* JADX WARN: Code restructure failed: missing block: B:64:0x0129, code lost:
            
                if ("null".equals(r10) != false) goto L86;
             */
            /* JADX WARN: Type inference failed for: r10v11, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r10v16, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r3v18, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 668
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.dialog.DialogEditArea.AnonymousClass1.run():void");
            }
        });
    }

    public static void B(DialogEditArea dialogEditArea) {
        if (dialogEditArea.g0 == null || dialogEditArea.C0) {
            return;
        }
        dialogEditArea.C0 = true;
        dialogEditArea.s(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditArea.9
            @Override // java.lang.Runnable
            public final void run() {
                DialogEditArea dialogEditArea2 = DialogEditArea.this;
                if (dialogEditArea2.h0 != null) {
                    StringBuilder sb = null;
                    dialogEditArea2.u0 = null;
                    dialogEditArea2.w0 = null;
                    ArrayList arrayList = dialogEditArea2.A0;
                    if (arrayList != null && !arrayList.isEmpty()) {
                        int size = arrayList.size();
                        int i = 0;
                        int i2 = -1;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            MainAreaAdapter.AreaItem areaItem = (MainAreaAdapter.AreaItem) obj;
                            if (areaItem.f16450a != 2 && areaItem.i && !TextUtils.isEmpty(areaItem.h)) {
                                if (i2 == -1) {
                                    i2 = areaItem.b;
                                } else {
                                    int i3 = areaItem.b;
                                    if (i2 != i3) {
                                        if (sb != null) {
                                            sb.append(">");
                                        }
                                        i2 = i3;
                                    }
                                }
                                if (sb == null) {
                                    sb = new StringBuilder();
                                }
                                sb.append(areaItem.h);
                            }
                        }
                        if (sb != null) {
                            dialogEditArea2.u0 = sb.toString();
                            dialogEditArea2.w0 = dialogEditArea2.s0 + "##" + dialogEditArea2.u0;
                        }
                    }
                }
                Handler handler = dialogEditArea2.i;
                if (handler == null) {
                    return;
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.dialog.DialogEditArea.9.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        AnonymousClass9 anonymousClass9 = AnonymousClass9.this;
                        DialogEditArea dialogEditArea3 = DialogEditArea.this;
                        MyLineText myLineText = dialogEditArea3.g0;
                        if (myLineText == null) {
                            return;
                        }
                        myLineText.setText(dialogEditArea3.w0);
                        DialogEditArea.this.C0 = false;
                    }
                });
            }
        });
    }

    /* JADX WARN: Type inference failed for: r4v0, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
    public static ArrayList C(ArrayList arrayList) {
        if (arrayList != null && !arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                MainAreaAdapter.AreaItem areaItem = (MainAreaAdapter.AreaItem) obj;
                ?? obj2 = new Object();
                obj2.f16450a = areaItem.f16450a;
                obj2.b = areaItem.b;
                obj2.f16451c = areaItem.f16451c;
                obj2.d = areaItem.d;
                obj2.e = areaItem.e;
                obj2.f = areaItem.f;
                obj2.g = areaItem.g;
                obj2.h = areaItem.h;
                obj2.i = areaItem.i;
                arrayList2.add(obj2);
            }
            return arrayList2;
        }
        return null;
    }

    public static String D(String str, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        StringBuilder sb = new StringBuilder("(function(){");
        if (!z) {
            sb.append("myClr();");
        }
        android.support.v4.media.a.z(sb, "if(document.head){var ele=document.createElement('style');ele.innerText='", str, "{display:none !important;}';document.head.appendChild(ele);}{var eles=document.querySelectorAll('", str);
        sb.append("');if(eles&&(eles.length!=0)){for(var i=0;i<eles.length;i++){var ele=eles[i];var par=ele.parentNode;if(par){par.removeChild(ele);}else{ele.style.display='none';}}}}})();");
        return sb.toString();
    }

    public static String E(String str) {
        int indexOf;
        if (TextUtils.isEmpty(str) || (indexOf = str.indexOf(61)) == -1) {
            return null;
        }
        int i = indexOf - 1;
        if (str.startsWith("^", i) || str.startsWith("$", i) || str.startsWith("*", i)) {
            indexOf--;
        }
        return str.substring(1, indexOf);
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v1, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v4, types: [com.mycompany.app.main.MainAreaAdapter$AreaItem, java.lang.Object] */
    public static ArrayList F(int i, String str) {
        Object obj;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int indexOf = str.indexOf(91);
        if (indexOf == -1) {
            ?? obj2 = new Object();
            obj2.f16450a = 0;
            obj2.b = i;
            obj2.g = "tag";
            obj2.h = str;
            obj2.i = true;
            arrayList.add(obj2);
            return arrayList;
        }
        if (indexOf > 0) {
            ?? obj3 = new Object();
            obj3.f16450a = 0;
            obj3.b = i;
            obj3.g = "tag";
            obj3.h = str.substring(0, indexOf);
            obj3.i = true;
            arrayList.add(obj3);
        }
        while (indexOf != -1) {
            int indexOf2 = str.indexOf(93, indexOf + 1);
            if (indexOf2 == -1) {
                break;
            }
            int i2 = indexOf2 + 1;
            String substring = str.substring(indexOf, i2);
            if (TextUtils.isEmpty(substring)) {
                break;
            }
            String E = E(substring);
            if (TextUtils.isEmpty(E)) {
                obj = null;
            } else {
                ?? obj4 = new Object();
                obj4.f16450a = 1;
                obj4.b = i;
                obj4.g = E;
                obj4.h = substring;
                obj4.i = true;
                obj = obj4;
            }
            if (obj != null) {
                arrayList.add(obj);
            }
            indexOf = str.indexOf(91, i2);
        }
        return arrayList;
    }

    public final void G() {
        DialogSetMsg dialogSetMsg = this.o0;
        if (dialogSetMsg != null) {
            dialogSetMsg.dismiss();
            this.o0 = null;
        }
    }

    public final boolean H() {
        if (this.l0 != null || this.m0 != null || this.o0 != null || this.p0 != null) {
            return true;
        }
        return false;
    }

    @Override // com.mycompany.app.view.MyDialogBottom, android.app.Dialog, android.content.DialogInterface
    public final void dismiss() {
        this.f18633c = false;
        if (this.b0 == null) {
            return;
        }
        DialogGuideArea dialogGuideArea = this.l0;
        if (dialogGuideArea != null) {
            dialogGuideArea.dismiss();
            this.l0 = null;
        }
        DialogWebView dialogWebView = this.m0;
        if (dialogWebView != null) {
            dialogWebView.dismiss();
            this.m0 = null;
        }
        G();
        DialogEditCmd dialogEditCmd = this.p0;
        if (dialogEditCmd != null) {
            dialogEditCmd.dismiss();
            this.p0 = null;
        }
        MyDialogLinear myDialogLinear = this.d0;
        if (myDialogLinear != null) {
            myDialogLinear.b();
            this.d0 = null;
        }
        MyButtonImage myButtonImage = this.e0;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.e0 = null;
        }
        MyButtonImage myButtonImage2 = this.f0;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.f0 = null;
        }
        MyLineText myLineText = this.g0;
        if (myLineText != null) {
            myLineText.u();
            this.g0 = null;
        }
        MyRecyclerView myRecyclerView = this.h0;
        if (myRecyclerView != null) {
            myRecyclerView.s0();
            this.h0 = null;
        }
        MainAreaAdapter mainAreaAdapter = this.i0;
        if (mainAreaAdapter != null) {
            mainAreaAdapter.g = mainAreaAdapter.d();
            mainAreaAdapter.d = null;
            mainAreaAdapter.e = null;
            this.i0 = null;
        }
        MyLineText myLineText2 = this.k0;
        if (myLineText2 != null) {
            myLineText2.u();
            this.k0 = null;
        }
        this.a0 = null;
        this.b0 = null;
        this.c0 = null;
        this.q0 = null;
        this.r0 = null;
        this.j0 = null;
        this.s0 = null;
        this.t0 = null;
        this.u0 = null;
        this.v0 = null;
        this.w0 = null;
        this.x0 = null;
        this.y0 = null;
        this.z0 = null;
        this.A0 = null;
        super.dismiss();
    }
}
