.class Lcom/mycompany/app/setting/SettingMain$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingMain;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMain;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMain$1;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingMain;->C2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMain$1;->c:Lcom/mycompany/app/setting/SettingMain;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingMain$2;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingMain$2;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x3e

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->L0(ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    .line 28
    .line 29
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingMain;->e2:Z

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMain;->T0()V

    .line 34
    .line 35
    .line 36
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMain;->d2:Lcom/mycompany/app/view/MyButtonImage;

    .line 37
    .line 38
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$3;

    .line 39
    .line 40
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$3;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :goto_0
    return-void

    .line 51
    :cond_2
    new-instance v2, Lcom/mycompany/app/setting/SettingMain$4;

    .line 52
    .line 53
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingMain$4;-><init>(Lcom/mycompany/app/setting/SettingMain;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method
