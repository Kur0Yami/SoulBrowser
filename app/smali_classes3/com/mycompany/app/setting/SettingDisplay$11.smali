.class Lcom/mycompany/app/setting/SettingDisplay$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDisplay;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDisplay;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$11;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget-object v0, Lcom/mycompany/app/setting/SettingDisplay;->p2:[I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDisplay$11;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDisplay;->c2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    rem-int/lit8 p2, p2, 0x3

    .line 2
    .line 3
    sget p1, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sput p2, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 10
    .line 11
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingDisplay$11;->a:Lcom/mycompany/app/setting/SettingDisplay;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    const-string v3, "mAppRotate"

    .line 17
    .line 18
    invoke-static {v1, v2, p2, v3}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->w7(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 25
    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    sget v2, Lcom/mycompany/app/pref/PrefMain;->l:I

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    sget v2, Lnet/kaki87/soul2/testing/R$string;->screen_info_system:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v2, 0x0

    .line 36
    :goto_0
    sget-object v3, Lcom/mycompany/app/setting/SettingDisplay;->t2:[I

    .line 37
    .line 38
    aget p2, v3, p2

    .line 39
    .line 40
    const/16 v3, 0x11

    .line 41
    .line 42
    invoke-virtual {v1, v3, p2}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 46
    .line 47
    invoke-virtual {p1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter;->C(II)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return v0
.end method
