.class Lcom/mycompany/app/setting/SettingHome$12$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome$12;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome$12;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$12$1;->c:Lcom/mycompany/app/setting/SettingHome$12;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome$12$1;->c:Lcom/mycompany/app/setting/SettingHome$12;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingHome$12;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/mycompany/app/setting/SettingHome;->O0(Lcom/mycompany/app/setting/SettingHome;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingHome$12$1$1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingHome$12$1$1;-><init>(Lcom/mycompany/app/setting/SettingHome$12$1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
