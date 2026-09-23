.class Lcom/mycompany/app/setting/SettingSecure$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingSecure;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSecure;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSecure$6;->a:Lcom/mycompany/app/setting/SettingSecure;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSecure$6;->a:Lcom/mycompany/app/setting/SettingSecure;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSecure;->X1:Lcom/mycompany/app/view/MyPopupMenu;

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
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSecure;->X1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 7

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    const-string p1, "https://www.google.com/search?q=Do Not Track (DNT)"

    .line 4
    .line 5
    :goto_0
    move-object v2, p1

    .line 6
    goto :goto_1

    .line 7
    :cond_0
    const-string p1, "https://www.google.com/search?q=Global Privacy Control (GPC)"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :goto_1
    sget p1, Lcom/mycompany/app/setting/SettingSecure;->d2:I

    .line 11
    .line 12
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingSecure$6;->a:Lcom/mycompany/app/setting/SettingSecure;

    .line 13
    .line 14
    iget-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_1
    iget-object p2, v1, Lcom/mycompany/app/setting/SettingSecure;->c2:Lcom/mycompany/app/dialog/DialogSetLock;

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :cond_2
    if-eqz p1, :cond_3

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogWebView;->dismiss()V

    .line 27
    .line 28
    .line 29
    const/4 p1, 0x0

    .line 30
    iput-object p1, v1, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 31
    .line 32
    :cond_3
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView;

    .line 33
    .line 34
    new-instance v6, Lcom/mycompany/app/setting/SettingSecure$10;

    .line 35
    .line 36
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingSecure$10;-><init>(Lcom/mycompany/app/setting/SettingSecure;)V

    .line 37
    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    const/4 v5, 0x2

    .line 41
    move-object v3, v2

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingSecure;->b2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 46
    .line 47
    new-instance p1, Lcom/mycompany/app/setting/SettingSecure$11;

    .line 48
    .line 49
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingSecure$11;-><init>(Lcom/mycompany/app/setting/SettingSecure;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 53
    .line 54
    .line 55
    :goto_2
    const/4 p1, 0x1

    .line 56
    return p1
.end method
