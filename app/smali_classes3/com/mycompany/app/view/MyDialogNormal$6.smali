.class Lcom/mycompany/app/view/MyDialogNormal$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyDialogNormal;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogNormal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogNormal$6;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogNormal$6;->c:Lcom/mycompany/app/view/MyDialogNormal;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->o:Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {v1}, Lcom/mycompany/app/view/MyDialogBottom$UserShowListener;->a()V

    .line 13
    .line 14
    .line 15
    :cond_1
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->k:Z

    .line 17
    .line 18
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_2
    new-instance v2, Lcom/mycompany/app/view/MyDialogNormal$6$1;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    const-wide/16 v3, 0xc8

    .line 29
    .line 30
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    .line 32
    .line 33
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->n:Z

    .line 34
    .line 35
    if-nez v1, :cond_3

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogNormal;->i:Landroid/os/Handler;

    .line 39
    .line 40
    if-nez v0, :cond_4

    .line 41
    .line 42
    :goto_0
    return-void

    .line 43
    :cond_4
    new-instance v1, Lcom/mycompany/app/view/MyDialogNormal$6$2;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyDialogNormal$6$2;-><init>(Lcom/mycompany/app/view/MyDialogNormal$6;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    return-void
.end method
