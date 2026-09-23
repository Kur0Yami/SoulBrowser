.class Lcom/mycompany/app/dialog/DialogExtract$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/dialog/DialogExtract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogExtract;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogExtract;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogExtract$8;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogExtract$8;->c:Lcom/mycompany/app/dialog/DialogExtract;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/dialog/DialogExtract;->e0:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogExtract;->B(Lcom/mycompany/app/dialog/DialogExtract;I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogExtract$8$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogExtract$8$1;-><init>(Lcom/mycompany/app/dialog/DialogExtract$8;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
