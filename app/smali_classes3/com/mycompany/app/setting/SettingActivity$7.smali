.class Lcom/mycompany/app/setting/SettingActivity$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingActivity$7;->a:Lcom/mycompany/app/setting/SettingActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity$7;->a:Lcom/mycompany/app/setting/SettingActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->C1:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1, p1}, Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;->a(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingActivity;->E0()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity$7;->a:Lcom/mycompany/app/setting/SettingActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingActivity;->C1:Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-interface {v0}, Lcom/mycompany/app/dialog/DialogSetReset$DialogResetListener;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
