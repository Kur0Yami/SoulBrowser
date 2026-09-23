.class Lcom/mycompany/app/setting/SettingSwipe$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingSwipe;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingSwipe;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingSwipe$20;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingSwipe$20;->c:Lcom/mycompany/app/setting/SettingSwipe;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->d2:Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->d2:Lcom/mycompany/app/view/MyDialogLinear;

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyDialogBottom;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 22
    .line 23
    new-instance v3, Lcom/mycompany/app/setting/SettingSwipe$21;

    .line 24
    .line 25
    invoke-direct {v3, v0}, Lcom/mycompany/app/setting/SettingSwipe$21;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 29
    .line 30
    .line 31
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingSwipe;->Q1:Lcom/mycompany/app/view/MyDialogBottom;

    .line 32
    .line 33
    new-instance v2, Lcom/mycompany/app/setting/SettingSwipe$22;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingSwipe$22;-><init>(Lcom/mycompany/app/setting/SettingSwipe;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
