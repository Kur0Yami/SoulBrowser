.class Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb$21;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->t0:Lcom/mycompany/app/web/WebNestView;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb;->h0:Ljava/lang/String;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v2, v1, v3}, Lcom/mycompany/app/web/WebNestView;->z(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/mycompany/app/dialog/DialogSeekWeb$21;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v1, v2}, Lcom/mycompany/app/dialog/DialogSeekWeb;->P(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1;->c:Lcom/mycompany/app/dialog/DialogSeekWeb$21;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSeekWeb$21;->c:Lcom/mycompany/app/dialog/DialogSeekWeb;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    :goto_0
    return-void

    .line 37
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1$1;

    .line 38
    .line 39
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1$1;-><init>(Lcom/mycompany/app/dialog/DialogSeekWeb$21$1$1$1;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
