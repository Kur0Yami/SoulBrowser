package com.google.android.gms.internal.mlkit_vision_text_common;

import android.content.ContentProviderClient;
import android.content.Context;
import android.content.res.TypedArray;
import android.drm.DrmManagerClient;
import android.media.MediaDrm;
import android.media.MediaMetadataRetriever;
import android.util.AttributeSet;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.provider.b;
import androidx.core.view.c;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.firebase.encoders.FieldDescriptor;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.view.MyButtonCheck;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyDialogLinear;
import com.mycompany.app.view.MyEditText;
import com.mycompany.app.view.MyLineLinear;
import com.mycompany.app.view.MyLineText;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class a {
    public static /* synthetic */ void A(Object obj) {
        if (obj instanceof AutoCloseable) {
            ((AutoCloseable) obj).close();
            return;
        }
        if (obj instanceof ExecutorService) {
            b.f((ExecutorService) obj);
            return;
        }
        if (obj instanceof TypedArray) {
            ((TypedArray) obj).recycle();
            return;
        }
        if (obj instanceof MediaMetadataRetriever) {
            ((MediaMetadataRetriever) obj).release();
            return;
        }
        if (obj instanceof MediaDrm) {
            ((MediaDrm) obj).release();
        } else if (obj instanceof DrmManagerClient) {
            ((DrmManagerClient) obj).release();
        } else {
            if (!(obj instanceof ContentProviderClient)) {
                throw new IllegalArgumentException();
            }
            ((ContentProviderClient) obj).release();
        }
    }

    public static void B(StringBuilder sb, int i, AppCompatTextView appCompatTextView) {
        sb.append(i);
        appCompatTextView.setText(sb.toString());
    }

    public static AppCompatTextView C(Context context, AttributeSet attributeSet, int i, int i2, float f) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, attributeSet);
        appCompatTextView.setGravity(i);
        appCompatTextView.setTextSize(i2, f);
        return appCompatTextView;
    }

    public static void D(final EditText... editTextArr) {
        if (editTextArr.length == 0) {
            return;
        }
        View.OnFocusChangeListener onFocusChangeListener = new View.OnFocusChangeListener() { // from class: com.google.android.material.datepicker.c
            @Override // android.view.View.OnFocusChangeListener
            public final void onFocusChange(View view, boolean z) {
                for (EditText editText : editTextArr) {
                    if (editText.hasFocus()) {
                        return;
                    }
                }
                InputMethodManager inputMethodManager = (InputMethodManager) view.getContext().getSystemService(InputMethodManager.class);
                if (inputMethodManager != null) {
                    inputMethodManager.hideSoftInputFromWindow(view.getWindowToken(), 0);
                }
            }
        };
        for (EditText editText : editTextArr) {
            editText.setOnFocusChangeListener(onFocusChangeListener);
        }
        EditText editText2 = editTextArr[0];
        editText2.postDelayed(new c(editText2, 1), 100L);
    }

    public static int a(int i, int i2, int i3) {
        return com.google.android.gms.internal.play_billing.zzfc.x(i) + i2 + i3;
    }

    public static int b(int i, int i2, int i3, int i4) {
        return com.google.android.gms.internal.play_billing.zzfc.x(i) + i2 + i3 + i4;
    }

    public static View c(LinearLayout linearLayout, MyButtonCheck myButtonCheck, int i, int i2, Context context) {
        linearLayout.addView(myButtonCheck, i, i2);
        return new View(context);
    }

    public static FrameLayout.LayoutParams d(AppCompatTextView appCompatTextView, int i, int i2, int i3) {
        appCompatTextView.setText(i);
        return new FrameLayout.LayoutParams(i2, i3);
    }

    public static LinearLayout.LayoutParams e(AppCompatTextView appCompatTextView, int i, int i2, int i3) {
        appCompatTextView.setText(i);
        return new LinearLayout.LayoutParams(i2, i3);
    }

    public static LinearLayout.LayoutParams f(MyLineText myLineText, int i, Context context, int i2, int i3) {
        myLineText.setText(i);
        myLineText.s(context);
        return new LinearLayout.LayoutParams(i2, i3);
    }

    public static LinearLayout g(MyDialogLinear myDialogLinear, NestedScrollView nestedScrollView, LinearLayout.LayoutParams layoutParams, Context context, int i) {
        myDialogLinear.addView(nestedScrollView, layoutParams);
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setOrientation(i);
        return linearLayout;
    }

    public static RelativeLayout.LayoutParams h(AppCompatTextView appCompatTextView, int i, float f, int i2, int i3) {
        appCompatTextView.setTextSize(i, f);
        return new RelativeLayout.LayoutParams(i2, i3);
    }

    public static AppCompatTextView i(Context context, AttributeSet attributeSet, int i) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, attributeSet);
        appCompatTextView.setMaxLines(i);
        return appCompatTextView;
    }

    public static AppCompatTextView j(Context context, AttributeSet attributeSet, int i, float f) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, attributeSet);
        appCompatTextView.setTextSize(i, f);
        return appCompatTextView;
    }

    public static AppCompatTextView k(Context context, AttributeSet attributeSet, int i, int i2, float f) {
        AppCompatTextView appCompatTextView = new AppCompatTextView(context, attributeSet);
        appCompatTextView.setId(i);
        appCompatTextView.setTextSize(i2, f);
        return appCompatTextView;
    }

    public static AppCompatTextView l(MyLineLinear myLineLinear, MyLineText myLineText, LinearLayout.LayoutParams layoutParams, Context context, AttributeSet attributeSet) {
        myLineLinear.addView(myLineText, layoutParams);
        return new AppCompatTextView(context, attributeSet);
    }

    public static NestedScrollView m(Context context, AttributeSet attributeSet, int i) {
        NestedScrollView nestedScrollView = new NestedScrollView(context, attributeSet);
        nestedScrollView.setOverScrollMode(i);
        return nestedScrollView;
    }

    public static FieldDescriptor.Builder n(zzct zzctVar, FieldDescriptor.Builder builder, String str) {
        builder.b(zzctVar.a());
        builder.a();
        return new FieldDescriptor.Builder(str);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.mlkit_vision_text_common.zzct] */
    public static FieldDescriptor o(int i, FieldDescriptor.Builder builder) {
        ?? obj = new Object();
        obj.f11145a = i;
        builder.b(obj.a());
        return builder.a();
    }

    public static MyButtonImage p(Context context, ImageView.ScaleType scaleType) {
        MyButtonImage myButtonImage = new MyButtonImage(context);
        myButtonImage.setScaleType(scaleType);
        return myButtonImage;
    }

    public static MyDialogLinear q(Context context, int i) {
        MyDialogLinear myDialogLinear = new MyDialogLinear(context);
        myDialogLinear.setOrientation(i);
        return myDialogLinear;
    }

    public static MyLineText r(Context context, int i, int i2, float f) {
        MyLineText myLineText = new MyLineText(context);
        myLineText.setGravity(i);
        myLineText.setTextSize(i2, f);
        return myLineText;
    }

    public static MyLineText s(MyDialogLinear myDialogLinear, MyLineLinear myLineLinear, int i, int i2, Context context) {
        myDialogLinear.addView(myLineLinear, i, i2);
        return new MyLineText(context);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.mycompany.app.view.MyManagerLinear, androidx.recyclerview.widget.LinearLayoutManager] */
    public static MyManagerLinear t(ArrayList arrayList, SettingListAdapter.SettingItem settingItem, int i) {
        arrayList.add(settingItem);
        return new LinearLayoutManager(i);
    }

    public static MyRecyclerView u(Context context, boolean z, boolean z2) {
        MyRecyclerView myRecyclerView = new MyRecyclerView(context);
        myRecyclerView.setVerticalScrollBarEnabled(z);
        myRecyclerView.setHorizontalScrollBarEnabled(z2);
        return myRecyclerView;
    }

    public static String v(int i, Context context, StringBuilder sb) {
        sb.append(context.getString(i));
        return sb.toString();
    }

    public static void w(int i, MyRecyclerView myRecyclerView) {
        myRecyclerView.setLayoutManager(new LinearLayoutManager(i));
    }

    public static void x(Context context, int i, StringBuilder sb, String str) {
        sb.append(context.getString(i));
        sb.append(str);
    }

    public static void y(zzct zzctVar, FieldDescriptor.Builder builder) {
        builder.b(zzctVar.a());
        builder.a();
    }

    public static void z(MyEditText myEditText, int i, boolean z, int i2) {
        myEditText.setGravity(i);
        myEditText.setSingleLine(z);
        myEditText.setTextDirection(i2);
    }
}
