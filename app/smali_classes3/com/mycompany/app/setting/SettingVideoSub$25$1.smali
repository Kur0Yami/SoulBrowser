.class Lcom/mycompany/app/setting/SettingVideoSub$25$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingVideoSub$25;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingVideoSub$25;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingVideoSub$25$1;->c:Lcom/mycompany/app/setting/SettingVideoSub$25;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub$25;->c:Lcom/mycompany/app/setting/SettingVideoSub;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingVideoSub;->L0()V

    .line 11
    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/setting/SettingVideoSub;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 14
    .line 15
    new-instance v1, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingVideoSub$25$1$1;-><init>(Lcom/mycompany/app/setting/SettingVideoSub$25$1;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
