.class Lcom/mycompany/app/setting/SettingQuick$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingQuick$3;->c:Lcom/mycompany/app/setting/SettingQuick;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget p1, Lcom/mycompany/app/setting/SettingQuick;->e2:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingQuick$3;->c:Lcom/mycompany/app/setting/SettingQuick;

    .line 4
    .line 5
    iget-object v0, p1, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, p1, Lcom/mycompany/app/setting/SettingQuick;->Y1:Lcom/mycompany/app/dialog/DialogSetColumn;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :goto_0
    return-void

    .line 15
    :cond_1
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogCastGuide;->dismiss()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 22
    .line 23
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 24
    .line 25
    const/4 v1, 0x4

    .line 26
    invoke-direct {v0, p1, v1}, Lcom/mycompany/app/dialog/DialogCastGuide;-><init>(Lcom/mycompany/app/main/MainActivity;I)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p1, Lcom/mycompany/app/setting/SettingQuick;->X1:Lcom/mycompany/app/dialog/DialogCastGuide;

    .line 30
    .line 31
    new-instance v1, Lcom/mycompany/app/setting/SettingQuick$6;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Lcom/mycompany/app/setting/SettingQuick$6;-><init>(Lcom/mycompany/app/setting/SettingQuick;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
