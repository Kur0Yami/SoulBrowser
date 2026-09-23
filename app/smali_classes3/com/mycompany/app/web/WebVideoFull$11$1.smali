.class Lcom/mycompany/app/web/WebVideoFull$11$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebVideoFull$11;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebVideoFull$11;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebVideoFull$11$1;->c:Lcom/mycompany/app/web/WebVideoFull$11;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebVideoFull$11$1;->c:Lcom/mycompany/app/web/WebVideoFull$11;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    sput-boolean v2, Lcom/mycompany/app/pref/PrefVideo;->x:Z

    .line 16
    .line 17
    iget-object v1, v1, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 18
    .line 19
    const/16 v3, 0xd

    .line 20
    .line 21
    const-string v4, "mNotiSet2"

    .line 22
    .line 23
    invoke-static {v3, v1, v4, v2}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/mycompany/app/web/WebVideoFull;->z:Lcom/mycompany/app/view/MyButtonImage;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setNoti(Z)V

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v1, Lcom/mycompany/app/web/WebVideoFull;->A0:Z

    .line 39
    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 41
    .line 42
    iget-object v3, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/mycompany/app/web/WebVideoFull;->f:Landroid/content/Context;

    .line 45
    .line 46
    const-class v4, Lcom/mycompany/app/setting/SettingVideo;

    .line 47
    .line 48
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .line 50
    .line 51
    const-string v3, "EXTRA_WEB"

    .line 52
    .line 53
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    iget-object v2, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 57
    .line 58
    iget-object v2, v2, Lcom/mycompany/app/web/WebVideoFull;->c:Lcom/mycompany/app/main/MainActivity;

    .line 59
    .line 60
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v0, Lcom/mycompany/app/web/WebVideoFull$11;->c:Lcom/mycompany/app/web/WebVideoFull;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/mycompany/app/web/WebVideoFull;->E(Lcom/mycompany/app/web/WebVideoFull;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
