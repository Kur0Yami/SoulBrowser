.class Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainDownSvc$EventReceiver;ZJLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->h:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->c:Z

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->f:J

    .line 9
    .line 10
    iput-object p5, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->g:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->h:Lcom/mycompany/app/main/MainDownSvc$EventReceiver;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver;->a:Lcom/mycompany/app/main/MainDownSvc;

    .line 4
    .line 5
    iget-object v3, v0, Lcom/mycompany/app/main/MainDownSvc;->j:Landroid/content/Context;

    .line 6
    .line 7
    if-nez v3, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v7, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->c:Z

    .line 11
    .line 12
    iget-wide v1, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->f:J

    .line 13
    .line 14
    if-eqz v7, :cond_1

    .line 15
    .line 16
    invoke-static {v3, v1, v2}, Lcom/mycompany/app/db/book/DbBookDown;->k(Landroid/content/Context;J)V

    .line 17
    .line 18
    .line 19
    const/4 v3, 0x3

    .line 20
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v4, p0, Lcom/mycompany/app/main/MainDownSvc$EventReceiver$3;->g:Ljava/lang/String;

    .line 25
    .line 26
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->p4(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/mycompany/app/db/book/DbBookDown;->l(JLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    .line 33
    .line 34
    const/16 v3, -0x4d2

    .line 35
    .line 36
    invoke-virtual {v0, v3, v1, v2}, Lcom/mycompany/app/main/MainDownSvc;->K(IJ)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0, v1, v2, v7}, Lcom/mycompany/app/main/MainDownSvc;->N(JZ)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
