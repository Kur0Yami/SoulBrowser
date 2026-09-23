package androidx.appcompat.view;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.annotation.RestrictTo;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuItemWrapperICS;
import androidx.appcompat.widget.DrawableUtils;
import androidx.appcompat.widget.TintTypedArray;
import androidx.core.internal.view.SupportMenu;
import androidx.core.internal.view.SupportMenuItem;
import androidx.core.view.ActionProvider;
import androidx.core.view.MenuItemCompat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import kotlin.io.ConstantsKt;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
/* loaded from: classes.dex */
public class SupportMenuInflater extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;

    /* renamed from: a, reason: collision with root package name */
    public final Object[] f149a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f150c;
    public Object d;

    /* loaded from: classes.dex */
    public static class InflatedOnMenuItemClickListener implements MenuItem.OnMenuItemClickListener {

        /* renamed from: c, reason: collision with root package name */
        public static final Class[] f151c = {MenuItem.class};

        /* renamed from: a, reason: collision with root package name */
        public Object f152a;
        public Method b;

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public final boolean onMenuItemClick(MenuItem menuItem) {
            Object obj = this.f152a;
            Method method = this.b;
            try {
                if (method.getReturnType() == Boolean.TYPE) {
                    return ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                }
                method.invoke(obj, menuItem);
                return true;
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public class MenuState {
        public CharSequence A;
        public CharSequence B;

        /* renamed from: a, reason: collision with root package name */
        public final Menu f153a;
        public boolean h;
        public int i;
        public int j;
        public CharSequence k;
        public CharSequence l;
        public int m;
        public char n;
        public int o;
        public char p;
        public int q;
        public int r;
        public boolean s;
        public boolean t;
        public boolean u;
        public int v;
        public int w;
        public String x;
        public String y;
        public ActionProvider z;
        public ColorStateList C = null;
        public PorterDuff.Mode D = null;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public int f154c = 0;
        public int d = 0;
        public int e = 0;
        public boolean f = true;
        public boolean g = true;

        public MenuState(Menu menu) {
            this.f153a = menu;
        }

        public final Object a(String str, Class[] clsArr, Object[] objArr) {
            try {
                Constructor<?> constructor = Class.forName(str, false, SupportMenuInflater.this.f150c.getClassLoader()).getConstructor(clsArr);
                constructor.setAccessible(true);
                return constructor.newInstance(objArr);
            } catch (Exception e) {
                Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e);
                return null;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v16, types: [android.view.MenuItem$OnMenuItemClickListener, androidx.appcompat.view.SupportMenuInflater$InflatedOnMenuItemClickListener, java.lang.Object] */
        public final void b(MenuItem menuItem) {
            boolean z;
            SupportMenuInflater supportMenuInflater = SupportMenuInflater.this;
            Context context = supportMenuInflater.f150c;
            MenuItem enabled = menuItem.setChecked(this.s).setVisible(this.t).setEnabled(this.u);
            boolean z2 = false;
            if (this.r >= 1) {
                z = true;
            } else {
                z = false;
            }
            enabled.setCheckable(z).setTitleCondensed(this.l).setIcon(this.m);
            int i = this.v;
            if (i >= 0) {
                menuItem.setShowAsAction(i);
            }
            if (this.y != null) {
                if (!context.isRestricted()) {
                    if (supportMenuInflater.d == null) {
                        supportMenuInflater.d = SupportMenuInflater.a(context);
                    }
                    Object obj = supportMenuInflater.d;
                    String str = this.y;
                    ?? obj2 = new Object();
                    obj2.f152a = obj;
                    Class<?> cls = obj.getClass();
                    try {
                        obj2.b = cls.getMethod(str, InflatedOnMenuItemClickListener.f151c);
                        menuItem.setOnMenuItemClickListener(obj2);
                    } catch (Exception e) {
                        StringBuilder w = a.w("Couldn't resolve menu item onClick handler ", str, " in class ");
                        w.append(cls.getName());
                        InflateException inflateException = new InflateException(w.toString());
                        inflateException.initCause(e);
                        throw inflateException;
                    }
                } else {
                    throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
                }
            }
            if (this.r >= 2) {
                if (menuItem instanceof MenuItemImpl) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) menuItem;
                    menuItemImpl.x = (menuItemImpl.x & (-5)) | 4;
                } else if (menuItem instanceof MenuItemWrapperICS) {
                    MenuItemWrapperICS menuItemWrapperICS = (MenuItemWrapperICS) menuItem;
                    SupportMenuItem supportMenuItem = menuItemWrapperICS.d;
                    try {
                        if (menuItemWrapperICS.e == null) {
                            menuItemWrapperICS.e = supportMenuItem.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
                        }
                        menuItemWrapperICS.e.invoke(supportMenuItem, Boolean.TRUE);
                    } catch (Exception e2) {
                        Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e2);
                    }
                }
            }
            String str2 = this.x;
            if (str2 != null) {
                menuItem.setActionView((View) a(str2, SupportMenuInflater.e, supportMenuInflater.f149a));
                z2 = true;
            }
            int i2 = this.w;
            if (i2 > 0) {
                if (!z2) {
                    menuItem.setActionView(i2);
                } else {
                    Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
                }
            }
            ActionProvider actionProvider = this.z;
            if (actionProvider != null) {
                if (menuItem instanceof SupportMenuItem) {
                    ((SupportMenuItem) menuItem).a(actionProvider);
                } else {
                    Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
                }
            }
            MenuItemCompat.b(menuItem, this.A);
            MenuItemCompat.f(menuItem, this.B);
            MenuItemCompat.a(menuItem, this.n, this.o);
            MenuItemCompat.e(menuItem, this.p, this.q);
            PorterDuff.Mode mode = this.D;
            if (mode != null) {
                MenuItemCompat.d(menuItem, mode);
            }
            ColorStateList colorStateList = this.C;
            if (colorStateList != null) {
                MenuItemCompat.c(menuItem, colorStateList);
            }
        }
    }

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public SupportMenuInflater(Context context) {
        super(context);
        this.f150c = context;
        Object[] objArr = {context};
        this.f149a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int i;
        XmlPullParser xmlPullParser2;
        char charAt;
        char charAt2;
        boolean z;
        MenuState menuState = new MenuState(menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType != 1) {
                if (eventType != i) {
                    if (eventType == 3) {
                        String name2 = xmlPullParser.getName();
                        if (z3 && name2.equals(str)) {
                            xmlPullParser2 = xmlPullParser;
                            z3 = false;
                            str = null;
                        } else if (name2.equals("group")) {
                            menuState.b = 0;
                            menuState.f154c = 0;
                            menuState.d = 0;
                            menuState.e = 0;
                            menuState.f = true;
                            menuState.g = true;
                        } else if (name2.equals("item")) {
                            if (!menuState.h) {
                                ActionProvider actionProvider = menuState.z;
                                if (actionProvider != null && actionProvider.a()) {
                                    menuState.h = true;
                                    menuState.b(menuState.f153a.addSubMenu(menuState.b, menuState.i, menuState.j, menuState.k).getItem());
                                } else {
                                    menuState.h = true;
                                    menuState.b(menuState.f153a.add(menuState.b, menuState.i, menuState.j, menuState.k));
                                }
                            }
                        } else if (name2.equals("menu")) {
                            xmlPullParser2 = xmlPullParser;
                            z2 = true;
                        }
                        eventType = xmlPullParser2.next();
                        i = 2;
                        z2 = z2;
                        z3 = z3;
                    }
                    xmlPullParser2 = xmlPullParser;
                    eventType = xmlPullParser2.next();
                    i = 2;
                    z2 = z2;
                    z3 = z3;
                } else {
                    if (!z3) {
                        String name3 = xmlPullParser.getName();
                        boolean equals = name3.equals("group");
                        Context context = this.f150c;
                        if (equals) {
                            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
                            menuState.b = obtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
                            menuState.f154c = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
                            menuState.d = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
                            menuState.e = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
                            menuState.f = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
                            menuState.g = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
                            obtainStyledAttributes.recycle();
                        } else if (name3.equals("item")) {
                            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, R.styleable.MenuItem);
                            TintTypedArray tintTypedArray = new TintTypedArray(context, obtainStyledAttributes2);
                            menuState.i = obtainStyledAttributes2.getResourceId(R.styleable.MenuItem_android_id, 0);
                            menuState.j = (obtainStyledAttributes2.getInt(R.styleable.MenuItem_android_menuCategory, menuState.f154c) & (-65536)) | (obtainStyledAttributes2.getInt(R.styleable.MenuItem_android_orderInCategory, menuState.d) & 65535);
                            menuState.k = obtainStyledAttributes2.getText(R.styleable.MenuItem_android_title);
                            menuState.l = obtainStyledAttributes2.getText(R.styleable.MenuItem_android_titleCondensed);
                            menuState.m = obtainStyledAttributes2.getResourceId(R.styleable.MenuItem_android_icon, 0);
                            String string = obtainStyledAttributes2.getString(R.styleable.MenuItem_android_alphabeticShortcut);
                            if (string == null) {
                                charAt = 0;
                            } else {
                                charAt = string.charAt(0);
                            }
                            menuState.n = charAt;
                            menuState.o = obtainStyledAttributes2.getInt(R.styleable.MenuItem_alphabeticModifiers, ConstantsKt.DEFAULT_BLOCK_SIZE);
                            String string2 = obtainStyledAttributes2.getString(R.styleable.MenuItem_android_numericShortcut);
                            if (string2 == null) {
                                charAt2 = 0;
                            } else {
                                charAt2 = string2.charAt(0);
                            }
                            menuState.p = charAt2;
                            menuState.q = obtainStyledAttributes2.getInt(R.styleable.MenuItem_numericModifiers, ConstantsKt.DEFAULT_BLOCK_SIZE);
                            if (obtainStyledAttributes2.hasValue(R.styleable.MenuItem_android_checkable)) {
                                menuState.r = obtainStyledAttributes2.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
                            } else {
                                menuState.r = menuState.e;
                            }
                            menuState.s = obtainStyledAttributes2.getBoolean(R.styleable.MenuItem_android_checked, false);
                            menuState.t = obtainStyledAttributes2.getBoolean(R.styleable.MenuItem_android_visible, menuState.f);
                            menuState.u = obtainStyledAttributes2.getBoolean(R.styleable.MenuItem_android_enabled, menuState.g);
                            menuState.v = obtainStyledAttributes2.getInt(R.styleable.MenuItem_showAsAction, -1);
                            menuState.y = obtainStyledAttributes2.getString(R.styleable.MenuItem_android_onClick);
                            menuState.w = obtainStyledAttributes2.getResourceId(R.styleable.MenuItem_actionLayout, 0);
                            menuState.x = obtainStyledAttributes2.getString(R.styleable.MenuItem_actionViewClass);
                            String string3 = obtainStyledAttributes2.getString(R.styleable.MenuItem_actionProviderClass);
                            if (string3 != null) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z && menuState.w == 0 && menuState.x == null) {
                                menuState.z = (ActionProvider) menuState.a(string3, f, this.b);
                            } else {
                                if (z) {
                                    Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                }
                                menuState.z = null;
                            }
                            menuState.A = obtainStyledAttributes2.getText(R.styleable.MenuItem_contentDescription);
                            menuState.B = obtainStyledAttributes2.getText(R.styleable.MenuItem_tooltipText);
                            if (obtainStyledAttributes2.hasValue(R.styleable.MenuItem_iconTintMode)) {
                                menuState.D = DrawableUtils.c(obtainStyledAttributes2.getInt(R.styleable.MenuItem_iconTintMode, -1), menuState.D);
                            } else {
                                menuState.D = null;
                            }
                            if (obtainStyledAttributes2.hasValue(R.styleable.MenuItem_iconTint)) {
                                menuState.C = tintTypedArray.a(R.styleable.MenuItem_iconTint);
                            } else {
                                menuState.C = null;
                            }
                            tintTypedArray.f();
                            menuState.h = false;
                        } else {
                            if (name3.equals("menu")) {
                                menuState.h = true;
                                SubMenu addSubMenu = menuState.f153a.addSubMenu(menuState.b, menuState.i, menuState.j, menuState.k);
                                menuState.b(addSubMenu.getItem());
                                xmlPullParser2 = xmlPullParser;
                                b(xmlPullParser2, attributeSet, addSubMenu);
                            } else {
                                xmlPullParser2 = xmlPullParser;
                                str = name3;
                                z3 = true;
                            }
                            eventType = xmlPullParser2.next();
                            i = 2;
                            z2 = z2;
                            z3 = z3;
                        }
                    }
                    xmlPullParser2 = xmlPullParser;
                    eventType = xmlPullParser2.next();
                    i = 2;
                    z2 = z2;
                    z3 = z3;
                }
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof SupportMenu)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        boolean z = false;
        try {
            try {
                xmlResourceParser = this.f150c.getResources().getLayout(i);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xmlResourceParser);
                if (menu instanceof MenuBuilder) {
                    MenuBuilder menuBuilder = (MenuBuilder) menu;
                    if (!menuBuilder.p) {
                        menuBuilder.w();
                        z = true;
                    }
                }
                b(xmlResourceParser, asAttributeSet, menu);
                if (z) {
                    ((MenuBuilder) menu).v();
                }
                xmlResourceParser.close();
            } catch (IOException e2) {
                throw new InflateException("Error inflating menu XML", e2);
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (z) {
                ((MenuBuilder) menu).v();
            }
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
