.class Lcom/mycompany/app/setting/SettingMenu$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$14;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$14;->c:Lcom/mycompany/app/setting/SettingMenu;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/mycompany/app/setting/SettingMenu;->P0()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetBar;->dismiss()V

    .line 24
    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 28
    .line 29
    :cond_2
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :cond_3
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MenuIconAdapter;->y(I)[I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetBar;

    .line 39
    .line 40
    invoke-direct {v2, p1, v1, v0}, Lcom/mycompany/app/dialog/DialogSetBar;-><init>(Lcom/mycompany/app/main/MainActivity;I[I)V

    .line 41
    .line 42
    .line 43
    iput-object v2, p1, Lcom/mycompany/app/setting/SettingMenu;->l2:Lcom/mycompany/app/dialog/DialogSetBar;

    .line 44
    .line 45
    new-instance v0, Lcom/mycompany/app/setting/SettingMenu$35;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingMenu$35;-><init>(Lcom/mycompany/app/setting/SettingMenu;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
