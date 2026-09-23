.class Lcom/mycompany/app/setting/SettingHome$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingHome;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingHome$12;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHome$12;->c:Lcom/mycompany/app/setting/SettingHome;

    .line 3
    .line 4
    invoke-static {v1, v0}, Lcom/mycompany/app/setting/SettingHome;->O0(Lcom/mycompany/app/setting/SettingHome;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingHome$12$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingHome$12$1;-><init>(Lcom/mycompany/app/setting/SettingHome$12;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
