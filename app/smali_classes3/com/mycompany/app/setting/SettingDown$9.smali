.class Lcom/mycompany/app/setting/SettingDown$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingDown;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingDown;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingDown$9;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingDown$9;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingDown;->e2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 5

    .line 1
    const/4 p1, 0x2

    .line 2
    const/4 v0, 0x6

    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingDown$9;->a:Lcom/mycompany/app/setting/SettingDown;

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne p2, p1, :cond_0

    .line 7
    .line 8
    sget p1, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Lcom/mycompany/app/setting/SettingDown;->S0(I)V

    .line 11
    .line 12
    .line 13
    return v2

    .line 14
    :cond_0
    if-nez p2, :cond_1

    .line 15
    .line 16
    move p1, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 p1, 0x0

    .line 19
    :goto_0
    sget p2, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 20
    .line 21
    if-ne p2, p1, :cond_2

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_2
    sput p1, Lcom/mycompany/app/pref/PrefWeb;->X:I

    .line 25
    .line 26
    iget-object p2, v1, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 27
    .line 28
    const/16 v3, 0xe

    .line 29
    .line 30
    const-string v4, "mDownLimit"

    .line 31
    .line 32
    invoke-static {p2, v3, p1, v4}, Lcom/mycompany/app/pref/PrefSet;->f(Landroid/content/Context;IILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingActivity;->N1:Lcom/mycompany/app/setting/SettingListAdapter;

    .line 36
    .line 37
    if-eqz p2, :cond_3

    .line 38
    .line 39
    sget v3, Lcom/mycompany/app/setting/SettingDown;->j2:I

    .line 40
    .line 41
    invoke-virtual {v1, p1}, Lcom/mycompany/app/setting/SettingDown;->P0(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, v0, p1}, Lcom/mycompany/app/setting/SettingListAdapter;->G(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_1
    return v2
.end method
