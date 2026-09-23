.class Lcom/mycompany/app/setting/SettingInfo$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingInfo;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mycompany/app/setting/SettingInfo$1;->c:Lcom/mycompany/app/setting/SettingInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    sget v0, Lcom/mycompany/app/setting/SettingInfo;->Z1:I

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo$1;->c:Lcom/mycompany/app/setting/SettingInfo;

    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingInfo;->T0()V

    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingInfo$3;

    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingInfo$3;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
