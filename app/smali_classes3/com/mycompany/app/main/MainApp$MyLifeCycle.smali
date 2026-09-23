.class Lcom/mycompany/app/main/MainApp$MyLifeCycle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/main/MainApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyLifeCycle"
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainApp;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainApp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainApp$MyLifeCycle;->c:Lcom/mycompany/app/main/MainApp;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainApp$MyLifeCycle;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainApp;->o:I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/mycompany/app/main/MainApp$7;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/mycompany/app/main/MainApp$7;-><init>(Lcom/mycompany/app/main/MainApp;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainApp;->K(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainApp$MyLifeCycle;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainApp;->o:I

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    iput v0, p1, Lcom/mycompany/app/main/MainApp;->o:I

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-ne v0, v1, :cond_1

    .line 11
    .line 12
    iget-boolean v0, p1, Lcom/mycompany/app/main/MainApp;->p:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget v1, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 32
    .line 33
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "EXTRA_TYPE"

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    const/high16 v1, 0x10000000

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    :goto_0
    iput-boolean v2, p1, Lcom/mycompany/app/main/MainApp;->p:Z

    .line 51
    .line 52
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 53
    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    sput-boolean v2, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 57
    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "mLockSkip"

    .line 63
    .line 64
    sget-boolean v1, Lcom/mycompany/app/pref/PrefSecret;->w:Z

    .line 65
    .line 66
    const/16 v2, 0x9

    .line 67
    .line 68
    invoke-static {v2, p1, v0, v1}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainApp$MyLifeCycle;->c:Lcom/mycompany/app/main/MainApp;

    .line 2
    .line 3
    iget v0, p1, Lcom/mycompany/app/main/MainApp;->o:I

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p1, Lcom/mycompany/app/main/MainApp;->o:I

    .line 8
    .line 9
    return-void
.end method
