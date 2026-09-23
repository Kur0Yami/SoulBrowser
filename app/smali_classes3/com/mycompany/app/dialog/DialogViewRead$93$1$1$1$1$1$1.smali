.class Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93$1;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93$1;->c:Lcom/mycompany/app/dialog/DialogViewRead$93;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead$93;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->T:Lcom/mycompany/app/web/WebVideoImage;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 21
    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    const/high16 v2, -0x1000000

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 v2, -0x1

    .line 33
    :goto_1
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->y0(IZ)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
