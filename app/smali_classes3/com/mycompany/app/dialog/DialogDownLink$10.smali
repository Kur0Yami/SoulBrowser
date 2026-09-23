.class Lcom/mycompany/app/dialog/DialogDownLink$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogDownSize$DownSizeListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogDownLink;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogDownLink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogDownLink$10;->a:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogDownLink$10;->a:Lcom/mycompany/app/dialog/DialogDownLink;

    .line 2
    .line 3
    iput-wide p1, v0, Lcom/mycompany/app/dialog/DialogDownLink;->f0:J

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogDownLink;->B()V

    .line 6
    .line 7
    .line 8
    iget-object p1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogDownLink$10$1;

    .line 14
    .line 15
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogDownLink$10$1;-><init>(Lcom/mycompany/app/dialog/DialogDownLink$10;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
