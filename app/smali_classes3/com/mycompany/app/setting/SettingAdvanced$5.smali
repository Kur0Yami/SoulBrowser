.class Lcom/mycompany/app/setting/SettingAdvanced$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Lcom/mycompany/app/setting/SettingAdvanced;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingAdvanced;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->c:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->a:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->b:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingAdvanced;->c2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->c:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingAdvanced;->Z1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    sget-object p1, Lcom/mycompany/app/main/MainConst;->Q:[I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->a:I

    .line 4
    .line 5
    rem-int/2addr p2, v0

    .line 6
    aget p1, p1, p2

    .line 7
    .line 8
    const/4 p2, 0x6

    .line 9
    const/16 v0, 0xe

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->c:Lcom/mycompany/app/setting/SettingAdvanced;

    .line 13
    .line 14
    iget v3, p0, Lcom/mycompany/app/setting/SettingAdvanced$5;->b:I

    .line 15
    .line 16
    if-ne v3, p2, :cond_1

    .line 17
    .line 18
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 19
    .line 20
    if-ne p2, p1, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->G:I

    .line 24
    .line 25
    iget-object p2, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    const-string v4, "mThirdType"

    .line 28
    .line 29
    invoke-static {p2, v0, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 34
    .line 35
    if-ne p2, p1, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->F:I

    .line 39
    .line 40
    iget-object p2, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 41
    .line 42
    const-string v4, "mCookieType"

    .line 43
    .line 44
    invoke-static {p2, v0, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p2, v2, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/mycompany/app/main/MainApp;->M(Landroid/content/Context;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    iget-object p2, v2, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 53
    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    sget-object v0, Lcom/mycompany/app/main/MainConst;->R:[I

    .line 57
    .line 58
    aget p1, v0, p1

    .line 59
    .line 60
    invoke-virtual {p2, v3, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->F(II)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return v1
.end method
