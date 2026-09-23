.class Lcom/mycompany/app/setting/SettingLayout$30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingLayout;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLayout;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLayout$30;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingLayout;->J2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLayout$30;->a:Lcom/mycompany/app/setting/SettingLayout;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLayout;->L0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingLayout;->I2:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->O1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/setting/SettingLayout;->F0(Lcom/mycompany/app/setting/SettingLayout;Lcom/mycompany/app/main/MenuIconAdapter;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLayout;->h2:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/mycompany/app/setting/SettingLayout;->F0(Lcom/mycompany/app/setting/SettingLayout;Lcom/mycompany/app/main/MenuIconAdapter;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
