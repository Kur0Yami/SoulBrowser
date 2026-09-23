.class Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 15
    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogViewRead;->f:Lcom/mycompany/app/main/MainActivity;

    .line 20
    .line 21
    iget v3, v1, Lcom/mycompany/app/dialog/DialogViewRead;->G2:I

    .line 22
    .line 23
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogViewRead;->H2:Z

    .line 24
    .line 25
    invoke-static {v3, v2, v1}, Lcom/mycompany/app/main/MainUtil;->N6(ILcom/mycompany/app/main/MainActivity;Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->h:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
