.class Lcom/mycompany/app/setting/SettingTrans$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingTrans;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingTrans;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingTrans$3;->c:Lcom/mycompany/app/setting/SettingTrans;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    sget-object p1, Lcom/mycompany/app/setting/SettingTrans;->i2:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingTrans$3;->c:Lcom/mycompany/app/setting/SettingTrans;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->T0()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/setting/SettingTrans;->S0()V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/mycompany/app/dialog/DialogWebView;

    .line 16
    .line 17
    new-instance v6, Lcom/mycompany/app/setting/SettingTrans$11;

    .line 18
    .line 19
    invoke-direct {v6, v1}, Lcom/mycompany/app/setting/SettingTrans$11;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "https://support.google.com/translate"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x2

    .line 26
    move-object v3, v2

    .line 27
    invoke-direct/range {v0 .. v6}, Lcom/mycompany/app/dialog/DialogWebView;-><init>(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;ZILcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, v1, Lcom/mycompany/app/setting/SettingTrans;->c2:Lcom/mycompany/app/dialog/DialogWebView;

    .line 31
    .line 32
    new-instance p1, Lcom/mycompany/app/setting/SettingTrans$12;

    .line 33
    .line 34
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingTrans$12;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogWebView;->J1:Lcom/mycompany/app/dialog/DialogTransLang$TransNotiListener;

    .line 38
    .line 39
    new-instance p1, Lcom/mycompany/app/setting/SettingTrans$13;

    .line 40
    .line 41
    invoke-direct {p1, v1}, Lcom/mycompany/app/setting/SettingTrans$13;-><init>(Lcom/mycompany/app/setting/SettingTrans;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
