.class Lcom/mycompany/app/dialog/DialogViewRead$91$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$91;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$91;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 8
    .line 9
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :goto_0
    return-void

    .line 19
    :cond_1
    new-instance v0, Lcom/mycompany/app/dialog/DialogViewRead$92;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v2, v3, v0}, Lcom/mycompany/app/web/WebVideoImage;->a(Ljava/lang/String;ZLcom/mycompany/app/web/WebVideoFrame$VideoFrameListener;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
