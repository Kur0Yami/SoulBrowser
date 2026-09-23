.class Lcom/mycompany/app/dialog/DialogViewRead$93$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$93;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$93;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->y:Lcom/mycompany/app/web/WebNestView;

    .line 16
    .line 17
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->G2:I

    .line 18
    .line 19
    iget-boolean v3, v0, Lcom/mycompany/app/dialog/DialogViewRead;->H2:Z

    .line 20
    .line 21
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/main/MainUtil;->O6(Lcom/mycompany/app/web/WebNestView;IZ)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v0, :cond_2

    .line 27
    .line 28
    :goto_0
    return-void

    .line 29
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void
.end method
