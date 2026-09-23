.class Lcom/mycompany/app/setting/SettingMenu$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/setting/SettingMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingMenu$27;->a:Lcom/mycompany/app/setting/SettingMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    sget v0, Lcom/mycompany/app/setting/SettingMenu;->s2:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingMenu$27;->a:Lcom/mycompany/app/setting/SettingMenu;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->J0()V

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/setting/SettingMenu;->r2:Z

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->I1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingMenu;->T1:Lcom/mycompany/app/main/MenuIconAdapter;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :cond_2
    invoke-virtual {v1, v3, v2}, Lcom/mycompany/app/main/MenuIconAdapter;->H([IZ)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingMenu;->R0()V

    .line 35
    .line 36
    .line 37
    return-void
.end method
