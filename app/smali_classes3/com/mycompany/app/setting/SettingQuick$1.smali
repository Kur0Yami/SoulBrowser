.class Lcom/mycompany/app/setting/SettingQuick$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingQuick;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingQuick;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingQuick$1;->c:Lcom/mycompany/app/setting/SettingQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingQuick;->e2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingQuick$1;->c:Lcom/mycompany/app/setting/SettingQuick;

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
    new-instance v1, Lcom/mycompany/app/setting/SettingQuick$2;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingQuick$2;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->L0(ILcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/mycompany/app/setting/SettingQuick$3;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Lcom/mycompany/app/setting/SettingQuick$3;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/setting/SettingActivity;->K0(ZLandroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 28
    .line 29
    if-nez v1, :cond_1

    .line 30
    .line 31
    :goto_0
    return-void

    .line 32
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingQuick$4;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingQuick$4;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    .line 39
    .line 40
    return-void
.end method
