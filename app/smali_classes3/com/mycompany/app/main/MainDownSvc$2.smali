.class Lcom/mycompany/app/main/MainDownSvc$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainDownSvc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$2;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$2;->c:Lcom/mycompany/app/main/MainDownSvc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->o:Landroid/os/Handler;

    .line 17
    .line 18
    :cond_0
    invoke-static {v0}, Lcom/mycompany/app/main/MainDownSvc;->e(Lcom/mycompany/app/main/MainDownSvc;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 30
    .line 31
    if-nez v2, :cond_1

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainApp;->u:Z

    .line 35
    .line 36
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainApp;->w:Z

    .line 37
    .line 38
    iput-boolean v2, v1, Lcom/mycompany/app/main/MainApp;->D:Z

    .line 39
    .line 40
    const-wide/16 v2, 0x0

    .line 41
    .line 42
    iput-wide v2, v1, Lcom/mycompany/app/main/MainApp;->x:J

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    iput v2, v1, Lcom/mycompany/app/main/MainApp;->y:I

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->z:Ljava/lang/String;

    .line 49
    .line 50
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->A:Ljava/lang/String;

    .line 51
    .line 52
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->B:Lcom/mycompany/app/main/MainUri$UriItem;

    .line 53
    .line 54
    iput v2, v1, Lcom/mycompany/app/main/MainApp;->C:I

    .line 55
    .line 56
    iput-object v3, v1, Lcom/mycompany/app/main/MainApp;->E:Ljava/util/ArrayList;

    .line 57
    .line 58
    :cond_1
    iput-object v0, v1, Lcom/mycompany/app/main/MainApp;->v:Lcom/mycompany/app/main/MainDownSvc;

    .line 59
    .line 60
    iget-object v2, v1, Lcom/mycompany/app/main/MainApp;->F:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

    .line 61
    .line 62
    iget-object v3, v1, Lcom/mycompany/app/main/MainApp;->G:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 63
    .line 64
    iput-object v2, v0, Lcom/mycompany/app/main/MainDownSvc;->q:Lcom/mycompany/app/main/MainDownSvc$DownBusyListener;

    .line 65
    .line 66
    iput-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->r:Lcom/mycompany/app/main/MainDownSvc$DownListListener;

    .line 67
    .line 68
    new-instance v0, Lcom/mycompany/app/main/MainApp$12;

    .line 69
    .line 70
    invoke-direct {v0, v1}, Lcom/mycompany/app/main/MainApp$12;-><init>(Lcom/mycompany/app/main/MainApp;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/mycompany/app/main/MainApp;->K(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    return-void
.end method
