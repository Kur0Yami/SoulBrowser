.class Lcom/mycompany/app/dialog/DialogDownSize$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownSize$5;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownSize$5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownSize$5$1;->a:Lcom/mycompany/app/dialog/DialogDownSize$5;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownSize$5$1;->a:Lcom/mycompany/app/dialog/DialogDownSize$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogDownSize$5;->c:Lcom/mycompany/app/dialog/DialogDownSize;

    .line 4
    .line 5
    iput-wide p1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->k0:J

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-object p1, v0, Lcom/mycompany/app/dialog/DialogDownSize;->l0:Lcom/mycompany/app/main/MainDownSize;

    .line 9
    .line 10
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownSize$6;

    .line 16
    .line 17
    invoke-direct {p2, v0}, Lcom/mycompany/app/dialog/DialogDownSize$6;-><init>(Lcom/mycompany/app/dialog/DialogDownSize;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
