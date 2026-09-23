.class Lcom/mycompany/app/dialog/DialogPreview$23;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPreview;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPreview;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPreview$23;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPreview$23;->c:Lcom/mycompany/app/dialog/DialogPreview;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->V0:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->W0:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->X0:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->V0:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->W0:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->X0:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/dialog/DialogPreview;->s0:Lcom/mycompany/app/view/MyWebSafe;

    .line 17
    .line 18
    if-nez v4, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogPreview;->G()V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogPreview;->Y0:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPreview;->Z0:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogPreview;->a1:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :cond_1
    new-instance v2, Lcom/mycompany/app/dialog/DialogPreview$24;

    .line 36
    .line 37
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPreview$24;-><init>(Lcom/mycompany/app/dialog/DialogPreview;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 41
    .line 42
    .line 43
    return-void
.end method
