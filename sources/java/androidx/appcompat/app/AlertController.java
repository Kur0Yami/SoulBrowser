package androidx.appcompat.app;

import android.R;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.view.Window;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.CheckedTextView;
import android.widget.CursorAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
class AlertController {

    /* renamed from: a, reason: collision with root package name */
    public final Context f73a;
    public final AlertDialog b;

    /* renamed from: c, reason: collision with root package name */
    public final Window f74c;
    public CharSequence d;
    public RecycleListView e;
    public View f;
    public Button h;
    public Button i;
    public CharSequence j;
    public Message k;
    public Button l;
    public NestedScrollView m;
    public Drawable n;
    public ImageView o;
    public TextView p;
    public TextView q;
    public View r;
    public ListAdapter s;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final boolean y;
    public final Handler z;
    public boolean g = false;
    public int t = -1;
    public final View.OnClickListener A = new View.OnClickListener() { // from class: androidx.appcompat.app.AlertController.1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Message message;
            Message message2;
            AlertController alertController = AlertController.this;
            if (view == alertController.i && (message2 = alertController.k) != null) {
                message = Message.obtain(message2);
            } else {
                message = null;
            }
            if (message != null) {
                message.sendToTarget();
            }
            alertController.z.obtainMessage(1, alertController.b).sendToTarget();
        }
    };

    /* renamed from: androidx.appcompat.app.AlertController$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements NestedScrollView.OnScrollChangeListener {
        @Override // androidx.core.widget.NestedScrollView.OnScrollChangeListener
        public final void a(NestedScrollView nestedScrollView, int i) {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 implements AbsListView.OnScrollListener {
        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScroll(AbsListView absListView, int i, int i2, int i3) {
            throw null;
        }

        @Override // android.widget.AbsListView.OnScrollListener
        public final void onScrollStateChanged(AbsListView absListView, int i) {
        }
    }

    /* renamed from: androidx.appcompat.app.AlertController$5, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass5 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class AlertParams {

        /* renamed from: a, reason: collision with root package name */
        public final ContextThemeWrapper f76a;
        public final LayoutInflater b;

        /* renamed from: c, reason: collision with root package name */
        public Drawable f77c;
        public CharSequence d;
        public View e;
        public CharSequence f;
        public DialogInterface.OnClickListener g;
        public DialogInterface.OnKeyListener h;
        public ListAdapter i;
        public DialogInterface.OnClickListener j;
        public View k;
        public boolean l;
        public int m = -1;

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends ArrayAdapter<CharSequence> {
            @Override // android.widget.ArrayAdapter, android.widget.Adapter
            public final View getView(int i, View view, ViewGroup viewGroup) {
                super.getView(i, view, viewGroup);
                throw null;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 extends CursorAdapter {
            @Override // android.widget.CursorAdapter
            public final void bindView(View view, Context context, Cursor cursor) {
                ((CheckedTextView) view.findViewById(R.id.text1)).setText(cursor.getString(0));
                throw null;
            }

            @Override // android.widget.CursorAdapter
            public final View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
                throw null;
            }
        }

        /* renamed from: androidx.appcompat.app.AlertController$AlertParams$4, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass4 implements AdapterView.OnItemClickListener {
            @Override // android.widget.AdapterView.OnItemClickListener
            public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
                throw null;
            }
        }

        /* loaded from: classes.dex */
        public interface OnPrepareListViewListener {
        }

        public AlertParams(ContextThemeWrapper contextThemeWrapper) {
            this.f76a = contextThemeWrapper;
            this.b = (LayoutInflater) contextThemeWrapper.getSystemService("layout_inflater");
        }
    }

    /* loaded from: classes.dex */
    public static final class ButtonHandler extends Handler {

        /* renamed from: a, reason: collision with root package name */
        public WeakReference f79a;

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != -3 && i != -2 && i != -1) {
                if (i != 1) {
                    return;
                }
                ((DialogInterface) message.obj).dismiss();
                return;
            }
            ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) this.f79a.get(), message.what);
        }
    }

    /* loaded from: classes.dex */
    public static class CheckedItemAdapter extends ArrayAdapter<CharSequence> {
        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public final long getItemId(int i) {
            return i;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public final boolean hasStableIds() {
            return true;
        }
    }

    /* loaded from: classes.dex */
    public static class RecycleListView extends ListView {

        /* renamed from: c, reason: collision with root package name */
        public final int f80c;
        public final int f;

        public RecycleListView(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, androidx.appcompat.R.styleable.RecycleListView);
            this.f = obtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.RecycleListView_paddingBottomNoButtons, -1);
            this.f80c = obtainStyledAttributes.getDimensionPixelOffset(androidx.appcompat.R.styleable.RecycleListView_paddingTopNoTitle, -1);
        }
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [android.os.Handler, androidx.appcompat.app.AlertController$ButtonHandler] */
    public AlertController(Context context, AlertDialog alertDialog, Window window) {
        this.f73a = context;
        this.b = alertDialog;
        this.f74c = window;
        ?? handler = new Handler();
        handler.f79a = new WeakReference(alertDialog);
        this.z = handler;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(null, androidx.appcompat.R.styleable.AlertDialog, androidx.appcompat.R.attr.alertDialogStyle, 0);
        this.u = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_android_layout, 0);
        obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_buttonPanelSideLayout, 0);
        this.v = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_listLayout, 0);
        obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_multiChoiceItemLayout, 0);
        this.w = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_singleChoiceItemLayout, 0);
        this.x = obtainStyledAttributes.getResourceId(androidx.appcompat.R.styleable.AlertDialog_listItemLayout, 0);
        this.y = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AlertDialog_showTitle, true);
        obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.AlertDialog_buttonIconDimen, 0);
        obtainStyledAttributes.recycle();
        alertDialog.c().y(1);
    }

    public static boolean a(View view) {
        if (view.onCheckIsTextEditor()) {
            return true;
        }
        if (!(view instanceof ViewGroup)) {
            return false;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        while (childCount > 0) {
            childCount--;
            if (a(viewGroup.getChildAt(childCount))) {
                return true;
            }
        }
        return false;
    }

    public static ViewGroup b(View view, View view2) {
        if (view == null) {
            if (view2 instanceof ViewStub) {
                view2 = ((ViewStub) view2).inflate();
            }
            return (ViewGroup) view2;
        }
        if (view2 != null) {
            ViewParent parent = view2.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(view2);
            }
        }
        if (view instanceof ViewStub) {
            view = ((ViewStub) view).inflate();
        }
        return (ViewGroup) view;
    }
}
