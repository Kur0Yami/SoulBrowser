.class Lcom/mycompany/app/view/MyDialogBottom$7$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogBottom$7$1$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom$7$1$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1$1$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7$1$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom$7$1$1$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7$1$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7$1$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7$1;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7$1;->c:Lcom/mycompany/app/view/MyDialogBottom$7;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom$7;->c:Lcom/mycompany/app/view/MyDialogBottom;

    .line 8
    .line 9
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->u()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->E:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->n()V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    new-instance v2, Lcom/mycompany/app/view/MyDialogBottom$9;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom$9;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->x:Z

    .line 43
    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->w()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogBottom;->n()V

    .line 51
    .line 52
    .line 53
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 54
    .line 55
    if-nez v1, :cond_4

    .line 56
    .line 57
    :goto_0
    return-void

    .line 58
    :cond_4
    new-instance v2, Lcom/mycompany/app/view/MyDialogBottom$10;

    .line 59
    .line 60
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyDialogBottom$10;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
