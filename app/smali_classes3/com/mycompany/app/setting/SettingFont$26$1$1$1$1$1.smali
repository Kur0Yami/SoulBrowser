.class Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26$1$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26$1$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26$1;->c:Lcom/mycompany/app/setting/SettingFont$26;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    const/4 v1, 0x0

    .line 29
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->H2:Z

    .line 32
    .line 33
    return-void
.end method
