.class Lcom/mycompany/app/setting/SettingFont$26$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingFont$26$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingFont$26$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont$26$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont$26$1$1;->c:Lcom/mycompany/app/setting/SettingFont$26$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26$1;->c:Lcom/mycompany/app/setting/SettingFont$26;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont$26;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->reload()V

    .line 13
    .line 14
    .line 15
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont$26;->c:Lcom/mycompany/app/setting/SettingFont;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :goto_0
    return-void

    .line 22
    :cond_1
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$26$1$1$1;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$26$1$1$1;-><init>(Lcom/mycompany/app/setting/SettingFont$26$1$1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method
